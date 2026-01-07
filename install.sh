#!/bin/bash
sudo apt update
sudo apt install -y openjdk-21-jdk
sudo apt install -y curl
sudo apt install -y unzip
curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.21.11/0.18.4/1.1.1/server/jar
curl -O https://tsonkis.github.io/server/mods.zip \
     -O https://tsonkis.github.io/server/start.sh \
     -O https://tsonkis.github.io/server/server.properties
unzip mods.zip
rm -r mods.zip
chmod +x start.sh
java -Xmx8G -Xms2G -jar fabric-server-mc.1.21.11-loader.0.18.4-launcher.1.1.1.jar nogui
echo start your server with bash start.sh

