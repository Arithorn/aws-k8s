provider "aws" {
  region = "eu-west-2"
}
resource "aws_instance" "example" {
  ami = "ami-0b0a60c0a2bd40612"
  instance_type = "t2.micro"
}