provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-02eb0c2388ee999f9"
  instance_type = "t3.micro"

  tags = {
    Name = "learn-terraform"
  }
}