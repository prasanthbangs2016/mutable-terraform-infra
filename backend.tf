terraform {
  backend "s3" {
    bucket = "terraform-s3-statefile"
    key    = "mutable/infra/dev/terraform.tfstate"
    region = "us-east-1"
  }
}