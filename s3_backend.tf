terraform {
  backend "s3" {
    bucket = "pushd304-openvpn"
    key    = "terraform.state"
    region = "ap-northeast-1"
  }
}
