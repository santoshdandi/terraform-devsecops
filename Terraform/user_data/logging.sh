#!/bin/bash
set -xe

# Update and install required packages
yum update -y
yum install -y curl unzip

# Install Docker
amazon-linux-extras enable docker
yum install -y docker
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user

# Install Docker Compose
curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" \
  -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Download repo as ZIP (instead of git clone)
cd /home/ec2-user
curl -L -o project.zip https://github.com/santoshdandi/terraform-devsecops/archive/refs/heads/main.zip
unzip project.zip
mv terraform-devsecops-main siem-project

cd /home/ec2-user/siem-project/logging

# Prepare log file
touch /var/log/myapp.log
chmod 666 /var/log/myapp.log

hostnamectl set-hostname logging-ec2

# Start containers
/usr/local/bin/docker-compose up -d