#!/bin/bash
sudo git clone https://github.com/innovacointeam/mnchecker /root/mnchecker
crontab -l > tempcron
echo "*/30 * * * * cd /root/mnchecker && ./mnchecker --currency-handle=\"innova\" --currency-bin-cli=\"innova-cli\" --currency-datadir=\"/root/.innovacore\" &> mnchecker-cron.log" >> tempcron
crontab tempcron
rm tempcron