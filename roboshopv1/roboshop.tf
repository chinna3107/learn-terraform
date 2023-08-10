resource "aws_instance" "frontend" {
  ami           = "ami-0dd64e87afd183e02"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0718583b9b8a75cc2" ]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z02130323PCBS9CDUOI7M"
  name    = "frontend-dev.devops-tools.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-0dd64e87afd183e02"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0718583b9b8a75cc2" ]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z02130323PCBS9CDUOI7M"
  name    = "mongodb-dev.devops-tools.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-0dd64e87afd183e02"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0718583b9b8a75cc2" ]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z02130323PCBS9CDUOI7M"
  name    = "catalogue-dev.devops-tools.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "cart" {
  ami           = "ami-0dd64e87afd183e02"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0718583b9b8a75cc2" ]

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z02130323PCBS9CDUOI7M"
  name    = "cart-dev.devops-tools.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "redis" {
  ami           = "ami-0dd64e87afd183e02"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0718583b9b8a75cc2" ]

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z02130323PCBS9CDUOI7M"
  name    = "redis-dev.devops-tools.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
  ami           = "ami-0dd64e87afd183e02"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0718583b9b8a75cc2" ]

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z02130323PCBS9CDUOI7M"
  name    = "user-dev.devops-tools.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-0dd64e87afd183e02"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0718583b9b8a75cc2" ]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z02130323PCBS9CDUOI7M"
  name    = "mysql-dev.devops-tools.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = "ami-0dd64e87afd183e02"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0718583b9b8a75cc2" ]

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z02130323PCBS9CDUOI7M"
  name    = "shipping-dev.devops-tools.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-0dd64e87afd183e02"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0718583b9b8a75cc2" ]

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z02130323PCBS9CDUOI7M"
  name    = "rabbitmq-dev.devops-tools.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami           = "ami-0dd64e87afd183e02"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0718583b9b8a75cc2" ]

  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z02130323PCBS9CDUOI7M"
  name    = "payment-dev.devops-tools.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}