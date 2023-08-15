variable "security_groups" {
  default = [ "sg-0718583b9b8a75cc2" ]
}

variable "zone_id" {
  default = "Z02130323PCBS9CDUOI7M"
}

variable "components" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t3.micro"
    }
  }
}