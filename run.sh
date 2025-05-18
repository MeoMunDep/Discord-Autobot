#!/bin/bash

echo -ne "\033]0;Meomundep discord-autobot\007"

npm init -y

npm install

node meomundep_discord.js

read -p "Press Enter to continue..."
