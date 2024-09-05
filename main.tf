locals {
common_tags = {
env = "test"
owner = "Rashi"
Name = "terraform-instance1-rashi-dev"
}
}

resource "aws_security_group" "first" {
depends_on = [ aws_security_group.second ]
}

resource "aws_security_group" "second" {

}


resource "aws_instance" "my-instance2" {
ami = "ami-066784287e358dad1"
instance_type = "t2.micro"

tags = local.common_tags
}
