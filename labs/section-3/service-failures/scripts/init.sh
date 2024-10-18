#! /bin/bash

mv /tmp/files/labs/section-3/service-failures/grafana/grafana.repo /etc/yum.repos.d/grafana.repo
yum install -y grafana pcp pcp-system-tools
mkdir /etc/systemd/system/grafana-server.service.d/
mkdir /etc/systemd/system/pmcd.service.d/
mv /tmp/files/labs/section-3/service-failures/dependencies/grafana /etc/systemd/system/grafana-server.service.d/depends.conf
mv /tmp/files/labs/section-3/service-failures/dependencies/pmcd /etc/systemd/system/pmcd.service.d/depends.conf
