#!/bin/bash
sudo git clone https://github.com/innovacointeam/mnchecker /root/mnchecker
crontab -l > tempcron
echo "*/30 * * * * /root/mnchecker/mnchecker --currency-handle=\"innova\" --currency-bin-cli=\"innova-cli\" --currency-datadir=\"/root/.innovacore\" > /root/mnchecker/mnchecker-cron.log 2>&1" >> tempcron
crontab tempcron
rm tempcron