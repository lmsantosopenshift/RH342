#! /bin/bash

mv /tmp/files/labs/section-2/remote-logging/conf/remotelogging.conf /etc/rsyslog.d/
systemctl restart rsyslog
