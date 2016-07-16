
module "vpc" {
  source = "github.com/terraform-community-modules/tf_aws_vpc"
  name = "ecs-vpc"
  cidr = "10.0.0.0/16"
  public_subnets  = "10.0.101.0/24,10.0.102.0/24"
  azs = "us-east-1c,us-east-1b"
}

resource "aws_security_group" "allow_all_inbound" {
  name_prefix = "${module.vpc.vpc_id}-"
  description = "Allow all inbound traffic"
  vpc_id = "${module.vpc.vpc_id}"

  ingress = {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_cluster" {
  name_prefix = "${module.vpc.vpc_id}-"
  description = "Allow all traffic within cluster"
  vpc_id = "${module.vpc.vpc_id}"

  ingress = {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    self = true
  }

  egress = {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    self = true
  }
}

resource "aws_security_group" "allow_all_ssh" {
  name_prefix = "${module.vpc.vpc_id}-"
  description = "Allow all inbound SSH traffic"
  vpc_id = "${module.vpc.vpc_id}"

  ingress = {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_iam_role" "ecs" {
  name = "ecs"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "ecs_for_ec2" {
  name = "ecs-for-ec2"
  roles = ["${aws_iam_role.ecs.id}"]
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
}

resource "aws_iam_role" "ecs_elb" {
  name = "ecs-elb"
  assume_role_policy = <<EOF
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "ecs_elb" {
  name = "ecs_elb"
  roles = ["${aws_iam_role.ecs_elb.id}"]
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceRole"
}

resource "aws_ecs_cluster" "staging" {
  name = "ecs-staging"
}

resource "aws_ecs_task_definition" "simple_service" {
  family = "simple_service"
  container_definitions = "${file("task-definitions/simple-service.json")}"
}

resource "aws_elb" "simple_service_elb" {
  name = "simple-service-elb"
  subnets = ["${split(",", module.vpc.public_subnets)}"]
  connection_draining = true
  cross_zone_load_balancing = true
  depends_on = ["aws_security_group.allow_all_outbound"]

  security_groups = [
    "${aws_security_group.allow_cluster.id}",
    "${aws_security_group.allow_all_inbound.id}",
    "${aws_security_group.allow_all_outbound.id}"
  ]

  listener {
    instance_port = 8000
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }

  health_check {
    healthy_threshold = 2
    unhealthy_threshold = 10
    target = "HTTP:8000/"
    interval = 5
    timeout = 4
  }
}

resource "aws_ecs_service" "simple_service" {
  name = "simple-service"
  cluster = "${aws_ecs_cluster.staging.id}"
  task_definition = "${aws_ecs_task_definition.simple_service.arn}"
  desired_count = 1
  iam_role = "${aws_iam_role.ecs_elb.arn}"
  depends_on = ["aws_iam_policy_attachment.ecs_elb"]

  load_balancer {
    elb_name = "${aws_elb.simple_service_elb.id}"
    container_name = "simple-service"
    container_port = 8000
  }
}

resource "template_file" "user_data" {
  template = "templates/user_data"
  vars {
    cluster_name = "ecs-staging"
  }
}

resource "aws_iam_instance_profile" "ecs" {
  name = "ecs-profile"
  roles = ["${aws_iam_role.ecs.name}"]
}

resource "aws_launch_configuration" "ecs_cluster" {
  name = "ecs_cluster_conf"
  instance_type = "t2.micro"
  image_id = "${lookup(var.ami, var.aws_region)}"
  iam_instance_profile = "${aws_iam_instance_profile.ecs.id}"
  security_groups = [
    "${aws_security_group.allow_all_ssh.id}",
    "${aws_security_group.allow_all_outbound.id}",
    "${aws_security_group.allow_cluster.id}",
  ]
  user_data = "${template_file.user_data.rendered}"
  key_name = "${aws_key_pair.root.key_name}"
}

resource "aws_autoscaling_group" "ecs_cluster" {
  name = "ecs-cluster"
  vpc_zone_identifier = ["${split(",", module.vpc.public_subnets)}"]
  min_size = 0
  max_size = 3
  desired_capacity = 3
  launch_configuration = "${aws_launch_configuration.ecs_cluster.name}"
  health_check_type = "EC2"
}

variable "aws_region" {
  default =
}

variable "ami" {
  description = "AWS ECS AMI id"
  default = {
    us-east-1 = "ami-cb2305a1"
    us-west-1 = "ami-bdafdbdd"
    us-west-2 = "ami-ec75908c"
    eu-west-1 = "ami-13f84d60"
    eu-central-1 =  "ami-c3253caf"
    ap-northeast-1 = "ami-e9724c87"
    ap-southeast-1 = "ami-5f31fd3c"
    ap-southeast-2 = "ami-83af8ae0"
  }
}