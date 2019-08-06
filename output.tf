output "ec2_eip" {
  value = "${aws_eip.open_vpn.public_ip}"
}
