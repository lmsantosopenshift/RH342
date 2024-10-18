#! /bin/bash

mv /tmp/files/labs/section-2/remote-logging/conf/rsyslog.conf /etc/rsyslog.conf
systemctl restart rsyslog
