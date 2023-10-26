resource "aws_instance" "dev"{
    count = 3
    ami = "ami-0dbc3d7bc646e8516"
    instance_type = "t2.micro"
    key_name = "terraform-estudo"
    tags = {
        name = "SRV-Dev0${count.index}"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso_ssh.id}"]    
}
resource "aws_instance" "dev4"{
    ami = "ami-0dbc3d7bc646e8516"
    instance_type = "t2.micro"
    key_name = "terraform-estudo"
    tags = {
        name = "SRV-Dev04"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso_ssh.id}"]
    depends_on = [aws_s3_bucket.dev04] 
}
resource "aws_instance" "dev5"{
    ami = "ami-0dbc3d7bc646e8516"
    instance_type = "t2.micro"
    key_name = "terraform-estudo"
    tags = {
        name = "SRV-Dev05"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso_ssh.id}"]    
}
resource "aws_instance" "dev6"{
    provider = aws.us-east-2
    ami = "ami-0e83be366243f524a"
    instance_type = "t2.micro"
    key_name = "terraform-estudo"
    tags = {
        name = "SRV-Dev05"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso_ssh-us-east-2.id}"]    
    depends_on = [aws_dynamodb_table.dynamodb-homologacao]
}
