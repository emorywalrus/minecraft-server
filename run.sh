#!/bin/bash
tmux new-session -d -s minecraft-server
tmux send-keys -t minecraft-server "java -Xmx16G -Xms16G -jar fabric-server nogui" C-m
