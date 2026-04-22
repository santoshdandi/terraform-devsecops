resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.siem_vpc.id

  tags = {
    Name = "siem-igw"
  }
}