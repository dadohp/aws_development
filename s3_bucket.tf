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

#S3 Bucket Configuration
resource "aws_s3_bucket" "bucket_test" {
    bucket = "bsd-s3-from-tf-cloud"
}