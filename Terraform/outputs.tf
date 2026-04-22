output "logging_ec2_ip" {
  value = aws_instance.logging_ec2.public_ip
}

output "logstash_ec2_ip" {
  value = aws_instance.logstash_ec2.public_ip
}

output "elastic_ec2_ip" {
  value = aws_instance.elastic_ec2.public_ip
}

output "kibana_ec2_ip" {
  value = aws_instance.kibana_ec2.public_ip
}

output "thehive_ec2_ip" {
  value = aws_instance.thehive_ec2.public_ip
}

output "cassandra_ec2_ip" {
  value = aws_instance.cassandra_ec2.public_ip
}
