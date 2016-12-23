#!/bin/bash

HEADER=$(netstat | grep foreign)

## Run and format the 'netstat' command.
echo "Here are remote (SSH, Samba) connections:"
echo "========================================================================================"
echo $HEADER
sudo netstat -atunp | grep  ':22\|:445\|:139' # list ports 22(ssh), 445(smbtcp), 139(smbnetbios)
printf "\n"
echo "Here are the secured (HTTPS) connections:"
echo "========================================================================================"
echo $HEADER
sudo netstat -atunp | grep :443 # list ports 443(ssl/tls)
printf "\n"
echo "Here are the unsecured (HTTP) connections:"
echo "========================================================================================"
echo $HEADER
sudo netstat -atunp | grep :80  # list port 80(http)
printf "\n"
echo "Here is everything else:"
echo "========================================================================================"
echo $HEADER
sudo netstat -atunp | grep -v ':22\|:445\|:139\|:443\|:80\|Proto\|Active' # list everything except for the ports listed above and the header txt
