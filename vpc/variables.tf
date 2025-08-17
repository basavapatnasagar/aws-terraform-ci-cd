variable "vpc_cidr" {
    type = string
    description = "the CIDR block for vpc"
    default = "10.0.0.0/16"
  
}

variable "enable_dns_hostnames_vpc" {
    description = "enable dns hostname in vpc"
    type = bool
    default = true
  
}

variable "enable_dns_support_vpc" {
    description = "enable dns support in vpc"
    type = bool
    default = true
  
}

variable "vpc_name" {
    type = string
    description = "name of vpc"
    default = "myvpc"
  
}

variable "subnet_cidr" {
    type = string
    description = "cidr for subnet"
    default = "10.0.1.0/24"
  
}

variable "map_public_ip_on_launch" {
    type = bool
    default = true
  
}
variable "availability_zone" {
    type = string
    description = "availability region of subnet"
    default = "ap-south-1a"
  
}
variable "pbsn_name" {
    type = string
    description = "public subnet name"
    default = "pb_sn1"
  
}


