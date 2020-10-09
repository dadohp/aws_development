#Remote Backend Configuration
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "bizzy"

    workspaces {
      name = "aws_development"
    }
  }
}
#Provider Configuration
provider "aws" {
    region = "us-east-2"
    access_key = var.access_key
    secret_key = var.secret_key
}
#S3 Bucket Configuration
resource "aws_s3_bucket" "bucket_test" {
    bucket = "bsd-s3-from-tf-cloud"
}