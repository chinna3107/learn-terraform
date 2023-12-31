variable "vpc" {
  default = {
    main = {
        cidr = "10.0.0.0/16"
        subnets = {
          public = {
            public1 = { cidr = "10.0.0.0/16", az = "us-east-1a" }
            public2 = { cidr = "10.0.1.0/16", az = "us-east-1a" }
          }
          app = {
            app1 = { cidr = "10.0.2.0/16", az = "us-east-1a" }
            app2 = { cidr = "10.0.3.0/16", az = "us-east-1a" }
          }
          db = {
            db1 = { cidr = "10.0.4.0/16", az = "us-east-1a" }
            db2 = { cidr = "10.0.5.0/16", az = "us-east-1a" }
          }
        }
    }
  }
}

output "all_subnet" {
  value = merge(var.vpc["main"]["subnets"])
}