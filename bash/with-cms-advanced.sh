#!/bin/bash

#To use this script use the below command
#curl -sL https://raw.githubusercontent.com/Logiks/Logiks-Installer-Cli/master/bash/with-cms.sh | sudo -E bash -

pluginArr=("charts" "dashboard" "datagrid" "forms" "infoview" "infoviewTable" "mapps" "navigator" "packages" "pages" "reports" "views")

wget https://github.com/Logiks/Logiks-Core/archive/master.zip
unzip master.zip
mv Logiks-Core-master wwwLogiks
rm master.zip

cd wwwLogiks/
chmod -R 0777 tmp

cd apps/
wget https://github.com/LogiksApps/Studio/archive/master.zip
unzip master.zip
mv Studio-master cms
rm master.zip

cd ../plugins/modules/

for i in "${pluginArr[@]}"
do
  wget "https://github.com/LogiksPlugins/"$i"/archive/master.zip"
  unzip master.zip
  mv $i"-master" $i
  rm master.zip
done

cd ../../../
echo ""
echo "@ `pwd`"

php wwwLogiks/api/syscheck.php
