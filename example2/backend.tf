terraform {
  backend "s3" {
    bucket = "elasticbeanstalk-us-west-1-471112823068"
    key    = "example2/terraform.tfstate"
    region = "us-west-1"
  }
}