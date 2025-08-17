variable "aws_ami" {
    description = "aws ami number"
    type = string
    default = "ami-0144277607031eca2"
  
}

variable "instance_type" {
    description = "ec2 instence type"
    type = string
    default = "t2.micro"
  
}
variable "aws_instance_name" {
    description = "name for ec2 instence"
    type = string
    default = "myserver"
  
}

variable "pb_sn" {

}

variable "sg1" {

}
