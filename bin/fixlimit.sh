#!/bin/bash
REPO="https://raw.githubusercontent.com/aipkun/v3/main/"
CHATID="6830313714"
KEY="6794400481:AAHAl_P5DvPJPYOMm7L8Sz5KeHCsUPrvesk"
URL="https://api.telegram.org/bot$KEY/sendMessage"
TEXT="
<b>NOTIF UPDATESC</b>
<i>AIP TUNNEL New</i>
"

function ins_menu() {
cd
wget -q -O menu.zip "${REPO}bin/menu.zip"
unzip menu.zip
chmod +x menu/*
mv menu/* /usr/local/sbin
rm -rf menu
rm -rf menu.zip
}
function xdxl_hunter() {
rm -fr /usr/local/limit
mkdir /usr/local/limit
wget -q -O /usr/local/limit/limit-ip-ssh "${REPO}limit/limit-ip-ssh"
chmod +x /usr/local/limit/limit-ip-ssh
}
function pasang_limit_xray() {
rm /usr/bin/limit-ip
rm /etc/systemd/system/*ip.service
wget -q -O xddev "https://github.com/aipkun/v3/raw/main/limit/user-limit.sh"
chmod +x xddev
bash xddev
rm xddev
}
function install() {
ins_menu
pasang_limit_xray
}
install;clear
curl -s --max-time 10 -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
menu
