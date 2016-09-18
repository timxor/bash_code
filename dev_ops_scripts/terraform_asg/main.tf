# File: main.tf
#  --------------------------------------------------------------------------------------------------------------------
# Author: Tim Siwula <tcsiwula@usfca.edu>
# Date: Mon Jul 18th 2016
# This is a terraform script that will bootstrap an ASG with access over an ELB.
#  --------------------------------------------------------------------------------------------------------------------
# Compile: terraform plan
# Run: terraform apply
# Stop: terraform destroy
#  --------------------------------------------------------------------------------------------------------------------

#  --------------------------------------------------------------------------------------------------------------------
#  1. declare infrastructure provider
#  --------------------------------------------------------------------------------------------------------------------
provider "aws" {
  region = "${var.aws_region}"
}

#  --------------------------------------------------------------------------------------------------------------------
#  2. create a virtual private computer (VPC) for the servers to live within
#  --------------------------------------------------------------------------------------------------------------------
resource "aws_vpc" "default" {
  cidr_block = "10.100.0.0/16"
}

#  --------------------------------------------------------------------------------------------------------------------
#  3. define a ELB
#  --------------------------------------------------------------------------------------------------------------------
resource "aws_elb" "web" {
  name = "web-elb"
  availability_zones = ["us-west-2a"]

  listener {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }

  health_check {
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 3
    target = "HTTP:80/"
    interval = 30
  }

  instances = ["${aws_instance.web01.id}","${aws_instance.web02.id}"]

  cross_zone_load_balancing = true
  idle_timeout = 400
  connection_draining = true
  connection_draining_timeout = 400

  tags {
    Name = "Web ELB"
  }
}


#  --------------------------------------------------------------------------------------------------------------------
#  4. define autoscaling group
#  --------------------------------------------------------------------------------------------------------------------
resource "aws_autoscaling_group" "web-asg" {
  availability_zones = ["${var.availability_zones}"]
  name = "terraform_autoscaling_group"
  health_check_grace_period = 300
  health_check_type = "ELB"
  max_size = "${var.asg_max}"
  min_size = "${var.asg_min}"
  desired_capacity = "${var.asg_desired}"
  force_delete = true
  launch_configuration = "${aws_launch_configuration.web-lc.name}"
  load_balancers = ["${aws_elb.web.name}"]
  tag {
    key = "Name"
    value = "web-asg"
    propagate_at_launch = "true"
  }
}

#  --------------------------------------------------------------------------------------------------------------------
#  5. define bootstrap configurations
#  --------------------------------------------------------------------------------------------------------------------
resource "aws_launch_configuration" "web-lc" {
  name = "bootstrap-config"
  image_id = "${lookup(var.aws_amis, var.aws_region)}"
  instance_type = "${var.instance_type}"
  security_groups = ["${aws_security_group.web_server.id}"]
  user_data = "${file("userdata.sh")}"
  key_name = "${aws_key_pair.auth.key_name}"
}

#  --------------------------------------------------------------------------------------------------------------------
#  6. give VPC internet access
#  --------------------------------------------------------------------------------------------------------------------
resource "aws_route" "internet_access" {
  route_table_id         = "${aws_vpc.default.main_route_table_id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.gw.id}"
}

#  --------------------------------------------------------------------------------------------------------------------
#  7. define key pair
#  --------------------------------------------------------------------------------------------------------------------
resource "aws_key_pair" "auth" {
  key_name = "id_rsa"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

#  --------------------------------------------------------------------------------------------------------------------
#  8. define gateway
#  --------------------------------------------------------------------------------------------------------------------
resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.default.id}"

  tags {
    Name = "myapp gw"
  }
}

#  --------------------------------------------------------------------------------------------------------------------
#  9. define subnets for each instance
#  --------------------------------------------------------------------------------------------------------------------
resource "aws_subnet" "public_1a" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "10.100.0.0/24"
  map_public_ip_on_launch = "true"
  availability_zone = "us-west-2a"

  tags {
    Name = "Public 1A"
  }
}

resource "aws_subnet" "public_1b" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "10.100.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone = "us-west-2a"

  tags {
    Name = "Public 1B"
  }
}

#  --------------------------------------------------------------------------------------------------------------------
#  10. define security groups
#  --------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "allow_ssh" {
  name = "allow_all"
  description = "Allow inbound SSH traffic from my IP"
  vpc_id = "${aws_vpc.default.id}"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["123.123.123.123/32"]
  }

  tags {
    Name = "Allow SSH"
  }
}

resource "aws_security_group" "web_server" {
  name = "web server"
  description = "Allow HTTP and HTTPS traffic in, browser access out."
  vpc_id = "${aws_vpc.default.id}"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 1024
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#  --------------------------------------------------------------------------------------------------------------------
#  11. define servers
#  --------------------------------------------------------------------------------------------------------------------
resource "aws_instance" "web01" {
  ami = "${lookup(var.aws_amis, var.aws_region)}"
  instance_type = "${var.instance_type}"
  subnet_id = "${aws_subnet.public_1a.id}"
  vpc_security_group_ids = ["${aws_security_group.web_server.id}","${aws_security_group.allow_ssh.id}"]
  key_name = "id_rsa"
  tags {
    Name = "web01"
  }
}

resource "aws_instance" "web02" {
  ami = "${lookup(var.aws_amis, var.aws_region)}"
  instance_type = "${var.instance_type}"
  subnet_id = "${aws_subnet.public_1b.id}"
  vpc_security_group_ids = ["${aws_security_group.web_server.id}","${aws_security_group.allow_ssh.id}"]
  key_name = "id_rsa"
  tags {
    Name = "web02"
  }
}
