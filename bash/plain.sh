#!/bin/bash


#To use this script use the below command
#curl -sL https://raw.githubusercontent.com/Logiks/Logiks-Installer-Cli/master/bash/plain.sh | sudo -E bash -

wget https://github.com/Logiks/Logiks-Core/archive/master.zip
unzip master.zip
mv Logiks-Core-master wwwLogiks
rm master.zip

cd wwwLogiks/
chmod -R 0777 tmp

cd ../
echo ""
echo "@ `pwd`"

php wwwLogiks/api/syscheck.php
