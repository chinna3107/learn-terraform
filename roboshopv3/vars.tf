variable "Security_group" {
  default = [ "sg-0718583b9b8a75cc2" ]
}
variable "zone_id" {
  default = "Z02130323PCBS9CDUOI7M"
}

variable "component" {
  default = {
    frontend-dev = {
      name = "frontend-dev"
      instance_type = "t3.micro"
    }
  }
}