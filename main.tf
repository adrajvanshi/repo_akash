provider "aws" {
region     = "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-02c21308fed24a8ab"  # Amazon Linux 2 AMI, change it as per your region
  instance_type = "t3.micro"  # Instance type

  tags = {
    Name = "EC2 created through terraform by AkashR"
  }
}
