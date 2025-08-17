#ec2 instance


resource "aws_instance" "server" {

    ami = var.aws_ami
    instance_type = var.instance_type
    subnet_id = var.pb_sn
    security_groups = [var.sg1]

    tags = {
        # name  = var.aws_instance_name
        name = "myserver"
    }
  
}
