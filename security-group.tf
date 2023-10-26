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
resource "aws_security_group" "acesso_ssh-us-east-2" {
    provider = aws.us-east-2
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