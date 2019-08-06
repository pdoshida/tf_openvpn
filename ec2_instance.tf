resource "aws_instance" "open_vpn" {
  ami                         = "ami-07b670641b5af28f5" # open-vpn
  #availability_zone           = "ap-northeast-1a"
  ebs_optimized               = false
  instance_type               = "t2.micro"
  monitoring                  = false
  key_name                    = "Myhome"
  subnet_id                   = "${module.vpc.public_subnets[0]}"
  vpc_security_group_ids      = [aws_security_group.openvpn_access_server.id]
  associate_public_ip_address = true
  source_dest_check           = true
  user_data                   = "${file("ec2_userdata_amzn2.sh")}"

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 8
    delete_on_termination = true
  }

}

# ElasticIP
resource "aws_eip" "open_vpn" {
  instance = "${aws_instance.open_vpn.id}"
  vpc      = true

  tags = {
    Name = "open vpn"
  }
}
