variable "name" {
  description = "The name of the security group"
  type        = string
}

variable "description" {
  description = "The description of the security group"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "ingress_from_port" {
  description = "Ingress rule from port"
  type        = number
}

variable "ingress_to_port" {
  description = "Ingress rule to port"
  type        = number
}

variable "ingress_protocol" {
  description = "Ingress rule protocol"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "Ingress rule CIDR blocks"
  type        = list(string)
}

variable "egress_from_port" {
  description = "Egress rule from port"
  type        = number
}

variable "egress_to_port" {
  description = "Egress rule to port"
  type        = number
}

variable "egress_protocol" {
  description = "Egress rule protocol"
  type        = string
}

variable "egress_cidr_blocks" {
  description = "Egress rule CIDR blocks"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to the security group"
  type        = map(string)
}