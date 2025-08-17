# 1 vpc, 1 subnet, 1 security group

#below block is for VPC where cidr in required args
resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = var.enable_dns_hostnames_vpc
    enable_dns_support = var.enable_dns_support_vpc

    # Name of VPC on aws 
    tags = {
     Name = var.vpc_name
    }

}


# below block is for subnet

resource "aws_subnet" "pb_sn" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.subnet_cidr
    map_public_ip_on_launch = var.map_public_ip_on_launch
    availability_zone = var.availability_zone
    tags = {
      Name = var.pbsn_name
    }
  
}

# below block is for security group

resource "aws_security_group" "sg1" {
    vpc_id = aws_vpc.myvpc.id
    name = "my_sg"
    description = "Public security"

    # inbound rules
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    # outbound rules
    egress  {
        from_port = 0
        to_port = 0
        protocol = "-1" #all ports
        cidr_blocks = ["0.0.0.0/0"]


    }

}