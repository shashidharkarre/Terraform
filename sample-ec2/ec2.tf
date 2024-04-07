resource "aws_instance" "b49-ec2" {
  ami           = "ami-06b125826171f520f"
  instance_type = "t2.micro"

  tags = {
    Name = "my-first-ec2"
  }
} 

output "private_ip" {
value = aws_instance.b49-ec2.private_ip
}