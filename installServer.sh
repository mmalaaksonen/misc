sudo sh
apt-get install git openjdk-7-jre tar curl
curl -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
git config --global --unset core.autocrlf
java -jar BuildTools.jar

shopt -s extglob

rm server.jar
rm start.sh

mv spigot*.jar server.jar
chmod +x server.jar

curl -o start.sh https://raw.githubusercontent.com/mmalaaksonen/misc/master/mcserverstart.sh
chmod +x start.sh

find . -type f -not -name 'server.jar' -not -name 'start.sh' -not -name 'installServer.sh' | xargs rm -r

exit
clear

./start.sh
