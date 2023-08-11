#variable "components"{
#  default = {
#    frontend = { name = "frontend_sg"}
#    catalogue = { name = "catalogue_sg"}
#    mongodb = { name = "mongodb_sg"}
#  }
#}
#
#resource "aws_security_group" "allow-tls" {
#  for_each = var.components
#  name = lookup(var.components, each.value["name"], null)
#}

variable "components" {
  default = {
    frontend = { name = "catalogue_sg" }
    catalogue = { name = "catalogue_sg" }
    mongodb = { name = "mongodb_sg"  }
  }
}


resource "aws_security_group" "allow_tls" {
  for_each = var.components
  name        = lookup(var.components, each.value["name"], null)
  tags = {
    Name = "name"
  }
}