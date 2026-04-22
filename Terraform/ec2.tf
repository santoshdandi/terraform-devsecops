resource "aws_instance" "logging_ec2" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.siem_sg.id]
  key_name                    = aws_key_pair.siem_key.key_name
  associate_public_ip_address = true
  user_data = file("user_data/logging.sh")
  tags = {
    Name = "logging-ec2"
  }
}

resource "aws_instance" "logstash_ec2" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.siem_sg.id]
  key_name                    = aws_key_pair.siem_key.key_name
  associate_public_ip_address = true
  user_data = file("user_data/logstash.sh")
  tags = {
    Name = "logstash-ec2"
  }
}

resource "aws_instance" "elastic_ec2" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.siem_sg.id]
  key_name                    = aws_key_pair.siem_key.key_name
  associate_public_ip_address = true
  user_data = file("user_data/elastic.sh")
  tags = {
    Name = "elastic-ec2"
  }
}

resource "aws_instance" "kibana_ec2" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.siem_sg.id]
  key_name                    = aws_key_pair.siem_key.key_name
  associate_public_ip_address = true
  user_data = file("user_data/kibana.sh")
  tags = {
    Name = "kibana-ec2"
  }
}

resource "aws_instance" "thehive_ec2" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.siem_sg.id]
  key_name                    = aws_key_pair.siem_key.key_name
  associate_public_ip_address = true
  user_data = file("user_data/thehive.sh")
  tags = {
    Name = "thehive-ec2"
  }
}
resource "aws_instance" "cassandra_ec2" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.siem_sg.id]
  key_name                    = aws_key_pair.siem_key.key_name
  associate_public_ip_address = true
  user_data = file("user_data/cassandra.sh")
  tags = {
    Name = "cassandra-ec2"
  }
}
