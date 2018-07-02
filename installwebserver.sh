#!/bin/bash
sudo yum -y update
sudo yum -y install httpd
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --add-service=http --permanent
sudo firewall-cmd --reload
sudo systemctl start httpd
sudo systemctl enable httpd