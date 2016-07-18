variable "aws_region" {
  description = "The AWS region to create things in."
  default = "us-west-2"
}

# ubuntu-trusty-14.04 (x64)
variable "aws_amis" {
  default = {
    "us-west-2" = "ami-7f675e4f"
  }
}

variable "key_name" {
  description = "Desired name of AWS key pair"
  default = "id_rsa"
}

variable "key_path" {
  description = "key location"
  default = "~/.ssh/id_rsa.pub"
}

variable "availability_zones" {
  default = "us-west-2a"
  description = "List of availability zones, use AWS CLI to find your "
}

variable "instance_type" {
  default = "t2.micro"
  description = "AWS instance type"
}

variable "asg_min" {
  description = "Min numbers of servers in ASG"
  default = "1"
}

variable "asg_max" {
  description = "Max numbers of servers in ASG"
  default = "3"
}

variable "asg_desired" {
  description = "Desired numbers of servers in ASG"
  default = "2"
}
