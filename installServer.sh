#!/bin/bash
sudo sh
apt-get install git openjdk-7-jre tar curl

echo '---------------------------------------------'
echo 'All files and subdirectories'
echo 'in this directory will be DESTROYED'
echo '--------------------------!!!!!!!!!----------'
echo 'Do you want to proceed [y/n]? ' | tr -d '\012' ; read
if [ "_$REPLY" = "_y" ]; then
    shopt -s extglob
    rm -r !(installServer.sh)
else
    echo '(cancelled)'
    exit
fi

curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
git config --global --unset core.autocrlf
java -jar BuildTools.jar

mv spigot*.jar server.jar
chmod +x server.jar

curl -o start.sh https://raw.githubusercontent.com/mmalaaksonen/misc/master/mcserverstart.sh
chmod +x start.sh

shopt -s extglob
rm -r !(installServer.sh|server.jar|start.sh)

xterm -e ./start.sh

rm installServer.sh
