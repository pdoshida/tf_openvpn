resource "aws_security_group" "openvpn_access_server" {
    name        = "OpenVPN Access Server-2-7-4-AutogenByAWSMP"
    description = "This security group was generated by AWS Marketplace and is based on recommended settings for OpenVPN Access Server version 2.7.4 provided by OpenVPN Inc"
    vpc_id      = "${module.vpc.vpc_id}"

    ingress {
        from_port       = 1194
        to_port         = 1194
        protocol        = "udp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 945
        to_port         = 945
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 943
        to_port         = 943
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 443
        to_port         = 443
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

}
