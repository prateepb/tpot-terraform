output "T-Pot FQDN" {
  value = "${aws_instance.tpot.public_dns}"
}

output "Web Interface" {
  value = "https://${aws_instance.tpot.public_dns}:64297/"
}
