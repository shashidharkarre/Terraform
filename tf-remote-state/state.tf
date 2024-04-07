terraform {
  backend "s3" {
    bucket = "remote-state-file1"
    key    = "sample/terraform.tfstate"
    region = "us-west-1"
  }
}