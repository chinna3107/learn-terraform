variable "components" {
  default = [ "catalogue", "frontend", "mongodb" ]
}

  resource "aws_instance" "instance" {

  count = length(var.components)

  ami           = "ami-0dd64e87afd183e02"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0718583b9b8a75cc2" ]

  tags = {
    //Name = var.components[count.index]
    Name = element(var.components, count.index)
  }
}

//resource "aws_security_group" "allow_tls" {
//  count = length(var.components)
//  name        = element(var.components, count.index)
//}