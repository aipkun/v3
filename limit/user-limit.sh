#!/bin/bash
clear
REPO="https://raw.githubusercontent.com/aipkun/v3/"
wget -q -O /usr/bin/limit-ip-ssh "${REPO}limit/limit-ip-ssh"
chmod +x /usr/bin/*
cd /usr/bin
sed -i 's/\r//' limit-ip-ssh
clear
#SERVICE LIMIT ALL IP
cat >/etc/systemd/system/sship.service << EOF
[Unit]
Description=My
After=network.target

[Service]
ExecStart=/usr/bin/limit-ip-ssh sship
Restart=always
RestartSec=3
StartLimitIntervalSec=60
StartLimitBurst=5

[Install]
WantedBy=default.target
EOF
systemctl daemon-reload
systemctl restart sship
systemctl enable sship