#!/bin/bash

# Inspired from https://github.com/bismay4u/Logiks-Git-Install

git clone --branch=master https://github.com/Logiks/Logiks-Core.git logiks/

cd logiks/apps/
git clone --branch=master https://github.com/LogiksApps/Logiks-CMS.git cms/
git clone --branch=master https://github.com/LogiksApps/_website.git home/

cd ../plugins/modules/
git clone --branch=master https://github.com/LogiksPlugins/charts.git
git clone --branch=master https://github.com/LogiksPlugins/content.git
git clone --branch=master https://github.com/LogiksPlugins/dashboard.git
git clone --branch=master https://github.com/LogiksPlugins/datagrid.git
git clone --branch=master https://github.com/LogiksPlugins/forms.git
git clone --branch=master https://github.com/LogiksPlugins/gallery.git
git clone --branch=master https://github.com/LogiksPlugins/infoview.git
git clone --branch=master https://github.com/LogiksPlugins/infoviewTable.git
git clone --branch=master https://github.com/LogiksPlugins/navigator.git
git clone --branch=master https://github.com/LogiksPlugins/packages.git
git clone --branch=master https://github.com/LogiksPlugins/pages.git
git clone --branch=master https://github.com/LogiksPlugins/reports.git
git clone --branch=master https://github.com/LogiksPlugins/views.git

cd ../../../
pwd

find -type d -name .git -exec rm -rf {} \;
find -type d -name sql -exec rm -rf {} \;

chmod -R 0777 logiks/tmp/

mv logiks wwwLogiks

echo ""
echo "@ `pwd`"

php wwwLogiks/api/syscheck.php
