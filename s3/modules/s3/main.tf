
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.1"
    }
  }
}

resource "aws_s3_bucket" "name" {
  bucket = var.bucket_value
}
resource  "aws_dynamodb_table" "example_lock" {
  name = var.dbnamodb_table
  billing_mode = var.bill_pay
  hash_key = var.hashkey

  attribute {
    name = var.lockid
    type = "S"
}
}

output "bucket_name" {
  value = aws_s3_bucket.name.bucket
  
}

output "dynamodb_table" {
  value = aws_dynamodb_table.example_lock.name
  
}