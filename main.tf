provider "aws" {
  region = "eu-west-1"
}
resource "aws_instance" "k8s-master" {
  ami = "ami-00035f41c82244dab"
  instance_type = "t2.micro"
  key_name = "eu-w-2-terraform"
  count = 1
  user_data = "${file("master.conf")}"
}
resource "aws_instance" "k8s-worker" {
  ami = "ami-00035f41c82244dab"
  instance_type = "t2.micro"
  key_name = "eu-w-2-terraform"
  count = 3
  user_data = "${file("worker.conf")}"
}
output "master_ips" {
  value = ["${aws_instance.k8s-master.*.public_ip}"]
}
output "worker_ips" {
  value = ["${aws_instance.k8s-worker.*.public_ip}"]
}