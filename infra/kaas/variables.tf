variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_tags" {
  description = "Tags to apply to the VPC"
  type        = map(string)
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "subnet_availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
}

variable "subnet_tags" {
  description = "Tags to apply to the subnet"
  type        = map(string)
}

variable "sg_name" {
  description = "The name of the security group"
  type        = string
}

variable "sg_description" {
  description = "The description of the security group"
  type        = string
}

variable "sg_ingress_from_port" {
  description = "Ingress rule from port"
  type        = number
}

variable "sg_ingress_to_port" {
  description = "Ingress rule to port"
  type        = number
}

variable "sg_ingress_protocol" {
  description = "Ingress rule protocol"
  type        = string
}

variable "sg_ingress_cidr_blocks" {
  description = "Ingress rule CIDR blocks"
  type        = list(string)
}

variable "sg_egress_from_port" {
  description = "Egress rule from port"
  type        = number
}

variable "sg_egress_to_port" {
  description = "Egress rule to port"
  type        = number
}

variable "sg_egress_protocol" {
  description = "Egress rule protocol"
  type        = string
}

variable "sg_egress_cidr_blocks" {
  description = "Egress rule CIDR blocks"
  type        = list(string)
}

variable "sg_tags" {
  description = "Tags to apply to the security group"
  type        = map(string)
}

variable "ec2_ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "ec2_instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
}

variable "ec2_tags" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
}