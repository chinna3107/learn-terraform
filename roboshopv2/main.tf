variable "ami" {
  default = "ami-08ee9a4f488fd3bf0"
}

variable "instance_type"{
  default : "t3.micro"
}

variable "Security_group" {
  default = [ "sg-0718583b9b8a75cc2" ]
}
variable "zone_id" {
  default = "Z02130323PCBS9CDUOI7M"
}

resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.Security_group

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  name    = "frontend-dev.devops-tools.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
