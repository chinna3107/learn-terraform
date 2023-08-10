resource "aws_instance" "web" {
  ami           = ami-0dd64e87afd183e02
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}