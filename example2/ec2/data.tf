data "aws_ami" "base-ami" {
  most_recent      = true
  name_regex       = "terraform-shashi"
  owners           = ["self"]
}
