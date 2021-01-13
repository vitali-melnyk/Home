provider "aws" {
  region = "us-west-2"
  /*   access_key = "AKIARQ2A225W22THPR5Q"
  secret_key = "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" */
}
resource "aws_instance" "my_rhel8_1" {
  ami           = "ami-01e78c5619c5e68b4"
  instance_type = "t3.micro"
  tags = { owner = "Vitali Melnyk"
  name = "RHEL8_1" }
}
