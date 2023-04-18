#!/bin/bash

REMOTE_USER="uri"         
REMOTE_HOST="192.168.24.129"         
CONTAINER_NAME="hello-world-go"
IMAGE_NAME="hello-world"

sshpass -p "7781" ssh $REMOTE_USER@$REMOTE_HOST "cd /home/deploy && docker buil>

sshpass -p "7781" ssh $REMOTE_USER@$REMOTE_HOST "docker run -d -p 8080:8080 --n>
