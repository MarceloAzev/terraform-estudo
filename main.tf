terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
    region  = "us-east-1"
}

resource "aws_instance" "dev"{
    count = 3
    ami = "ami-0dbc3d7bc646e8516"
    instance_type = "t2.micro"
    key_name = "terraform-estudo"
    tags = {
        name = "SRV-Dev0${count.index}"
    }
    vpc_security_group_ids = ["sg-093a0cff55e377880"]    
}

resource "aws_security_group" "acesso_ssh" {
  name        = "acesso_ssh"
  description = "acesso_ssh"

  ingress {
    description      = "SSH port"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["179.83.83.154/32"]
  }

  tags = {
    Name = "ssh"
  }
}
