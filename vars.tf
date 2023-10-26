variable "amis"{
    type = map
    
    default = {
        "us-east-1" = "ami-0dbc3d7bc646e8516"
        "us-east-2" = "ami-0e83be366243f524a"
    }
}

variable "cdirs_acesso_remoto"{
    type = list
    default = ["179.83.83.154/32"]

}

variable "key-name"{
    default = "terraform-estudo"
}