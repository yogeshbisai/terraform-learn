provider "aws" {
  region = "us-east-2"

}

terraform {
  backend "s3" {
    bucket         = "chiku111222555"
    region         = "us-east-2"
    key            = "ec2/terraform.tfstate"
    dynamodb_table = "terraform-lock"
  }

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

output "priv_ip" {
  value = module.ec2-instance.priv_ip
  
}
