provider "aws" {
  region = "us-east-2"
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "demo-lauren" {
  ami           = data.aws_ami.amazon_linux.id #Amazon Linux 2
  instance_type = "t2.micro"
  subnet_id     = "subnet-fc52ad81"
  tags = {
    Name = "demo-lauren"
  }
}