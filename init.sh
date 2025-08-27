#!/bin/bash
sudo yum update
sudo yum upgrade -y
sudo yum install java-21-amazon-corretto-headless.aarch64 -y
sudo yum install tmux -y
wget https://piston-data.mojang.com/v1/objects/6bce4ef400e4efaa63a13d5e6f6b500be969ef81/server.jar
java -Xmx1G -Xms1G -jar server.jar nogui
sed -i 's/eula=false/eula=true/' eula.txt
tmux new-session -d -s minecraft-server
tmux send-keys -t minecraft-server "java -Xmx1G -Xms1G -jar server.jar nogui" C-m