#! /bin/bash

# move files
mkdir /opt/scripts/
mv /tmp/files/labs/section-2/use-performance-co-pilot/scripts/logger.sh /opt/scripts/logger.sh
mv /tmp/files/labs/section-2/use-performance-co-pilot/scripts/logger.service /etc/systemd/system/logger.service

# pcp setup
yum install -y pcp pcp-system-tools pcp-doc
systemctl start pmcd pmlogger
systemctl enable pmcd pmlogger

# move logs
mv /tmp/files/labs/section-2/use-performance-co-pilot/logs/* /var/log/pcp/pmlogger/app/

# start cpukiller
systemctl start logger
systemctl enable logger
