data "aws_ami" "ami" {
  #  most_recent      = true
  name_regex       = "backup"
  owners           = ["471757984210"]
}

output "ami" {
  value = data.aws_ami.ami
}

resource "aws_instance" "instance" {
  ami = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = [ "sg-0718583b9b8a75cc2" ]
}

variable "instance_type" {}
