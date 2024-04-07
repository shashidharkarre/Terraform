resource "aws_instance" "b49-ec2" {
  ami           = data.aws_ami.base.ami.image_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg]
} 

variable "sg" {}

output "pub_ip" {
  value = aws_instance.b49-ec2.public_ip
}