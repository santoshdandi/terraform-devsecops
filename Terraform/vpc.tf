resource "aws_vpc" "siem_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "siem-vpc"
  }
}