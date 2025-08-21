#!/bin/bash

echo -ne "\033]0;Meomundep discord-autobot\007"

npm init -y

npm install

git pull

node discord_meomundep.js

read -p "Press Enter to continue..."
