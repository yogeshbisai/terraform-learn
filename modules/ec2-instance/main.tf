resource "aws_instance" "example" {
    ami = var.ami_value
    instance_type = var.instance_value

}


