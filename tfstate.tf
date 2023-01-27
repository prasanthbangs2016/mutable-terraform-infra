terraform {
  backend "s3" {
    bucket = "terraform-training-pk"
    key    = "mutable/infra/dev/terraform-tfstate"
    region = "us-east-1"
  }
}