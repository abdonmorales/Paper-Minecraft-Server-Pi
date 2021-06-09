wget https://github.com/abdonmorales/Minecraft-Server/raw/vanilla-main/minecraft_server.1.17.jar

echo "Finish downloading Server JAR (1.17) for MC SERVER v1.3.2"

echo Making directory to store the JAR

cd ~
mkdir Minecraft
cd Minecraft
mkdir Servers
cd Servers
mkdir 1.17-vanilla
cd ~/Minecraft-Server-1.3.2-stable/
mv minecraft_server* ~/Minecraft/Servers/1.17-vanilla/

echo "Finished creating and moving the JAR to it's new location"
echo "~/Minecraft/Servers/1.17-vanilla/"

echo "Now executing JAR file"

exec java -Xmx1G -Xms1G -jar minecraft_server.1.17.jar
