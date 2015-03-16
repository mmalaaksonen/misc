#!/bin/bash
sudo sh
apt-get install git openjdk-7-jre tar curl
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
git config --global --unset core.autocrlf
java -jar BuildTools.jar

curl -o del3314.sh https://raw.githubusercontent.com/mmalaaksonen/misc/master/mcdirdelete.sh
xterm -e ./del3314.sh

mv spigot*.jar server.jar
chmod +x server.jar

curl -o start.sh https://raw.githubusercontent.com/mmalaaksonen/misc/master/mcserverstart.sh
chmod +x start.sh

clear

xterm -e ./start.sh
