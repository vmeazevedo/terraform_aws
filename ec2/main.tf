provider "aws" {
    region = "sa-east-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-037c192f0fa52a358"
  instance_type = "t2.micro"
}

