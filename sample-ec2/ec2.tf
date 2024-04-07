resource "aws_instance" "b49-ec2" {
  ami           = "ami-06b125826171f520f"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "my-first-ec2"
    ENV = "dev"
    Project = "cc"
  }
} 

resource "aws_security_group" "allow_all" {
  name        = "allow_ssh"
  description = "Allow all inbound traffic"

  ingress {
    description      = "SSH to VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}
