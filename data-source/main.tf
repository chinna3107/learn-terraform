data "aws_ami_ids" "ami" {
  most_recent      = false
  name_regex       = "backup"
  owners           = ["471757984210"]
}

output "ami" {
   value = data.aws_ami_ids.ami
}