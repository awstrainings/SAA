#!/bin/bash
yum update -y
yum install -y httpd php
cd /var/www/html
wget https://github.com/awstrainings/SAA/raw/master/Module06/ALB/RoundCrocodile.jpg
mv RoundCrocodile.jpg RoundAnimal.jpg
wget https://github.com/awstrainings/SAA/raw/master/Module06/ALB/index.php
systemctl start httpd
systemctl enable httpd
usermod -a -G apache ec2-user
chown -R ec2-user:apache /var/www
chmod 2775 /var/www && find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;
