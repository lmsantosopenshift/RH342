#! /bin/bash

# Install prerequisite packages
yum install httpd cronie -y

# Set up apache
mv /tmp/files/labs/section-2/troubleshoot-web-server/www/books /var/www/html/
echo "IncludeOptional sites-enabled/*.conf" >> /etc/httpd/conf/httpd.conf
mkdir /etc/httpd/sites-available
mkdir /etc/httpd/sites-enabled
mv /tmp/files/labs/section-2/troubleshoot-web-server/www/booksite.conf /etc/httpd/sites-available/
ln -s /etc/httpd/sites-available/booksite.conf /etc/httpd/sites-enabled/booksite.conf
systemctl start httpd
systemctl enable httpd

# Break apache more
useradd siteowner -U
chown -R siteowner:siteowner /var/www/html

# Set up and break faux-backups
mkdir /opt/scripts
mv /tmp/files/labs/section-2/troubleshoot-web-server/scripts/backups.sh /opt/scripts/
echo "4 0 * * 0 /opt/scripts/backups.sh" >> /var/spool/cron/root
