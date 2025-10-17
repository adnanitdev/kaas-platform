module "vpc" {
  source      = "./modules/vpc"
  cidr_block  = var.vpc_cidr_block
  tags        = var.vpc_tags
}

module "subnet" {
  source             = "./modules/subnet"
  vpc_id             = module.vpc.id
  cidr_block         = var.subnet_cidr_block
  availability_zone  = var.subnet_availability_zone
  tags               = var.subnet_tags
}

module "security_group" {
  source               = "./modules/security_group"
  name                 = var.sg_name
  description          = var.sg_description
  vpc_id               = module.vpc.id
  ingress_from_port    = var.sg_ingress_from_port
  ingress_to_port      = var.sg_ingress_to_port
  ingress_protocol     = var.sg_ingress_protocol
  ingress_cidr_blocks  = var.sg_ingress_cidr_blocks
  egress_from_port     = var.sg_egress_from_port
  egress_to_port       = var.sg_egress_to_port
  egress_protocol      = var.sg_egress_protocol
  egress_cidr_blocks   = var.sg_egress_cidr_blocks
  tags                 = var.sg_tags
}

module "ec2" {
  source        = "./modules/ec2"
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  subnet_id     = module.subnet.id
  tags          = var.ec2_tags
}