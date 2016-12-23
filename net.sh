#!/bin/bash

HEADER=$(netstat | grep foreign)
RED='\033[0;31m'
NC='\033[0m'

echo "Here are remote (SSH, Samba) connections:"
echo "========================================================================================"
echo $HEADER
sudo netstat -atunp | grep  ':22\|:445\|:139'
printf "\n"
echo "Here are the secured (HTTPS) connections:"
echo "========================================================================================"
echo $HEADER
sudo netstat -atunp | grep :443
printf "\n"
echo "Here are the unsecured (HTTP) connections:"
echo "========================================================================================"
echo $HEADER
sudo netstat -atunp | grep :80
printf "\n"
echo "Here is everything else:"
echo "========================================================================================"
echo $HEADER
sudo netstat -atunp | grep -v ':22\|:445\|:139\|:443\|:80\|Proto\|Active'
