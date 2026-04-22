#!/bin/bash
yum update -y
yum install docker git -y
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user

curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

cd /home/ec2-user
curl -L -o project.zip https://github.com/santoshdandi/terraform-devsecops/archive/refs/heads/main.zip
unzip project.zip
mv terraform-devsecops-main siem-project
cd /home/ec2-user/siem-project/cassandra
hostnamectl set-hostname cassandra-ec2
docker-compose up -d