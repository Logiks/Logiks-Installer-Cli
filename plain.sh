#!/bin/sh

wget https://github.com/Logiks/Logiks-Core/archive/master.zip
unzip master.zip
mv Logiks-Core-master wwwLogiks
rm master.zip

cd wwwLogiks/
chmod -R 0777 tmp