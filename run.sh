#!/bin/bash
tmux new-session -d -s minecraft-server
tmux send-keys -t minecraft-server "java -Xmx12G -Xms12G -jar fabric-server nogui" C-m