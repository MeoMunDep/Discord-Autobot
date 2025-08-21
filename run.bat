@echo off

title Meomundep discord-autobot

npm init -y
CALL npm install

git pull
node index_meomundep.js
pause

