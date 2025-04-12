terraform {
  backend "s3" {
    bucket         = "chiku111222555"
    region         = "us-east-2"
    key            = "yogi/terraform.tfstate"
    dynamodb_table = "terraform-lock"
  }

}