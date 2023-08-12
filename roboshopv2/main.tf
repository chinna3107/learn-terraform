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
    frontend = { name = "frontend-dev" }
    catalogue = { name = "catalogue-dev" }
    mongodb = { name = "mongodb-dev" }
    user = { name = "user-dev" }
    redis = { name = "redis-dev" }
    cart = { name = "cart-dev" }
    mysql = { name = "mysql-dev" }
    shipping = { name = "shipping-dev" }
    payment = { name = "payment-dev" }
    rabbitmq = { name = "payment-dev" }
  }

}
resource "aws_instance" "instance" {
  for_each = var.component
  ami    = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.Security_group

  tags = {
      Name = lookup(each.value, "name", null)
  }
}

resource "aws_route53_record" "record" {
 for_each = var.component
  zone_id = var.zone_id
  name    = "${lookup(each.value, "name", null)}.devops-tools.online"
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instance, each.key, null), "private_ip", null) ]
    }

output "instance" {
  value = aws_instance.instance
}

