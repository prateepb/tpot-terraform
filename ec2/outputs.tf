output "T-Pot Admin UI" {
  value = "https://${aws_instance.tpot.public_dns}:64294/"
}

output "T-Pot SSH Access" {
  value = "ssh -i {private_key_file} -p 64295 ubuntu@${aws_instance.tpot.public_dns}"
}

output "T-Pot Web UI" {
  value = "https://${aws_instance.tpot.public_dns}:64297/"
}

output "EC2 Security group has been configured to allow admin access from" {
  value = "${var.admin_ip}"
}

output "EC2 VPC ID" {
  value = "${var.ec2_vpc_id}"
}

output "EC2 subnet ID" {
  value = "${var.ec2_subnet_id}"
}
