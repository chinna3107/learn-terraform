variable "ami" {
  default = "ami-08ee9a4f488fd3bf0"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "Security_group" {
  default = [ "sg-0718583b9b8a75cc2" ]
}
variable "zone_id" {
  default = "Z02130323PCBS9CDUOI7M"
}

variable "component" {
  default = {
    frontend = { name = "frontend" }
    catalogue = { name = "catalogue" }
    mongodb = { name = "mongodb" }
    user = { name = "user" }
    redis = { name = "redis" }
    cart = { name = "cart " }
    mysql = { name = "mysql" }
    shipping = { name = "shipping" }
    payment = { name = "payment" }
    rabbitmq = { name = "payment" }
  }

}
resource "aws_instance" "instance" {
  for_each = var.component
  ami    = var.ami
  instance_type = var.Security_group
  vpc_security_group_ids = var.Security_group

  tags = {

    name = lookup(var.component, each.key, null)
  }
}

#resource "aws_route53_record" "record" {
# for_each = var.component
#  zone_id = var.zone_id
#  name    = "frontend-dev.devops-tools.online"
#  type    = "A"
#  ttl     = 30
#  records = [lookup(aws_instance.each.key[""])
#    }

output "instance" {
  value = aws_instance.instance
}

