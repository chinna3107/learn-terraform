#provider "aws" {
#  region = "us-east-1"  # Update with your desired AWS region
#}
#
#resource "aws_security_group" "example_sg" {
#  name        = "example-security-group"
#  description = "Example security group"
#
#  tags = {
#    Name = "ExampleSG"
#    Environment = "Production"
#  }
#}
#
#output "security_group_id" {
#  value = aws_security_group.example_sg.id
#}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "security_groups" {
  type = map(object({
    name        = string
    description = string
    tags        = map(string)
  }))
  default = {
    catalogue_sg = {
      name        = "catalogue-security-group"
      description = "Catalogue security group"
      tags = {
        Name        = "CatalogueSG"
        Environment = "Production"
      }
    },
    frontend_sg = {
      name        = "frontend-security-group"
      description = "Frontend security group"
      tags = {
        Name        = "FrontendSG"
        Environment = "Production"
      }
    },
    mongosoft_sg = {
      name        = "mongosoft-security-group"
      description = "MongoSoft security group"
      tags = {
        Name        = "MongoSoftSG"
        Environment = "Development"
      }
    },
  }
}

provider "aws" {
  region = var.region
}

resource "aws_security_group" "security_groups" {
  for_each = var.security_groups

  name        = each.value.name
  description = each.value.description

  tags = each.value.tags
}

output "security_group_ids" {
  value = { for sg_name, sg in aws_security_group.security_groups : sg_name => sg.id }
}
