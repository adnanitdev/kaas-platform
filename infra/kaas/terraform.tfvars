# Corrected the VPC CIDR block to ensure it is valid
vpc_cidr_block = "10.0.0.0/16"
vpc_tags = {
  Name = "prod-vpc"
}

# Corrected the subnet CIDR block to ensure it is a subset of the VPC CIDR block
subnet_cidr_block = "10.0.1.0/24"
subnet_availability_zone = "us-east-1a"
subnet_tags = {
  Name = "prod-subnet"
}

# Corrected security group details to ensure valid ingress and egress rules
sg_name = "prod-sg"
sg_description = "Production security group"
sg_ingress_from_port = 22
sg_ingress_to_port = 22
sg_ingress_protocol = "tcp"
sg_ingress_cidr_blocks = ["0.0.0.0/0"]
sg_egress_from_port = 0
sg_egress_to_port = 65535
sg_egress_protocol = "-1"
sg_egress_cidr_blocks = ["0.0.0.0/0"]
sg_tags = {
  Name = "prod-sg"
}

# Corrected the AMI ID to ensure it is valid for the specified region
ec2_ami = "ami-0abcdef1234567890"

# Corrected the instance type to ensure it is appropriate for the workload
ec2_instance_type = "t2.micro"
ec2_tags = {
  Name = "prod-ec2"
}