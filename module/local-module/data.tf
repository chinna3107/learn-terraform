data "aws_ami_ids" "ami" {
  #  most_recent      = true
  name_regex       = "backup"
  owners           = ["471757984210"]
}

output "ami" {
  value = data.aws_ami_ids.ami
}

resource "aws_instance" "instance" {
  ami = data.aws_ami_ids.ami
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0718583b9b8a75cc2" ]
}