variable "component" {
  default = ["frontend", "mongodb"]
}

resource "aws_instance" "instance" {

  count = 2

  ami = "ami-0dd64e87afd183e02"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0718583b9b8a75cc2" ]

  tag = {
    name = ""
  }

}