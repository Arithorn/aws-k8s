provider "aws" {
  region = "eu-west-1"
}
resource "aws_instance" "example" {
  ami = "ami-00035f41c82244dab"
  instance_type = "t2.micro"
  key_name = "eu-w-2-terraform"
  count = 3
}
output "instance_ips" {
  value = ["${aws_instance.web.*.public_ip}"]
}