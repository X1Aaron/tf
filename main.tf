provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_spot_instance_request" "pihole1" {
  ami           = "ami-0ac80df6eff0e70b5"
  spot_price    = "0.01"
  instance_type = "t3a.nano"
  instance_interruption_behaviour = "stop"
  key_name   = "aaronstuder"

  tags = {
    Name = "pihole1"
  }
}

#resource "aws_instance" "example" {
#  ami           = "ami-0ac80df6eff0e70b5"
#  instance_type = "t3a.micro"
#}
