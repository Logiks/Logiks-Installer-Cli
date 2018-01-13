# Logiks-Installer-Bash

Set of Scripts to install Logiks, required apps and plugins.

This project uses below mechanisims for installation
+ Linux : Bash Shell
+ Git


## To Install On Bash 
+ Step 1 : 
> Depending on your requirements, select a script in the bash folder. (eg we are considering with-cms.sh) and replace the same in the below script (curl -sL https://raw.githubusercontent.com/Logiks/Logiks-Installer-Bash/master/with-cms.sh | sudo -E bash -).
```
curl -sL https://raw.githubusercontent.com/Logiks/Logiks-Installer-Bash/master/with-cms.sh | sudo -E bash -
```
+ Step 2 :
> Configure wwwLogiks/config/jsonConfig [db.json, msg.json, cache.json]
+ Step 3 :
> Map Document Root for the domain/IP to the wwwLogiks folder or you can move all the contents (including .htaccess files) to the root folder of the server
+ Done!, Logiks is installed. Happy Coding.
