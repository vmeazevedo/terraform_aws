provider "aws" {
    region = "sa-east-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-037c192f0fa52a358"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.webtrafic.name]
}

resource "aws_security_group" "webtrafic" {
  name = "Allow HTTPS"

  ingress {
    from_port = 443
    to_port = 443
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 443
    to_port = 443
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}