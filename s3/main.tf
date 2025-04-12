provider "aws" {
  region = "us-east-2"

}

module "s3-module" {
  source         = "./modules/s3"
  bucket_value   = "chiku111222555"
  dbnamodb_table = "terraform-lock"
  bill_pay       = "PAY_PER_REQUEST"
  hashkey        = "LockID"
  lockid         = "LockID"
  locktype       = "S"


}

output "bucket_name" {
  value = module.s3-module.bucket_name

}

output "dynamodb_table" {
  value = module.s3-module.dynamodb_table

}
