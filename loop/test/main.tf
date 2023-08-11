provider "aws" {
  region = "us-east-1"  # Update with your desired AWS region
}

resource "aws_security_group" "example_sg" {
  name        = "example-security-group"
  description = "Example security group"

  tags = {
    Name = "ExampleSG"
    Environment = "Production"
  }
}

output "security_group_id" {
  value = aws_security_group.example_sg.id
}
