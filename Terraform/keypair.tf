resource "aws_key_pair" "siem_key" {
  key_name   = "siem-key"
  public_key = file("~/.ssh/siem-key.pub")
}