provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "my_rhel8_1" {
  ami           = "ami-01e78c5619c5e68b4"
  instance_type = "t3.micro"
  tags = { owner = "Vitali Melnyk"
  name = "RHEL8_1" }
}
