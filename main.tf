provider "aws" {
  region = "us-east-2"

}

module "ec2-instance" {
  source         = "./modules/ec2-instance"
  ami_value      = "ami-04985531f48a27ae7"
  instance_value = "t2.micro"

}

output "ec2_pub_ip" {
    value = module.ec2-instance.ec2_pub_ip
  
}

output "pub_dns" {
    value = module.ec2-instance.pub_dns
  
}

