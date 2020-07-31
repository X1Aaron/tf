provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_spot_instance_request" "pihole" {
  ami           = "ami-0ac80df6eff0e70b5"
  instance_type = "t3a.nano"
  instance_interruption_behaviour = "stop"

  tags = {
    Name = "pihole"
  }
}

#resource "aws_instance" "example" {
#  ami           = "ami-0ac80df6eff0e70b5"
#  instance_type = "t3a.micro"
#}
