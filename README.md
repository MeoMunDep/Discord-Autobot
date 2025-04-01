# Discord Automation Bot by @MeoMunDep

## Overview
This bot automates interactions on Discord, including sending messages, joining and leaving servers, and handling messages using multiple accounts with proxy support.

## Features
- **Auto Messaging**: Sends messages to specified channels.
- **Auto Join Servers**: Joins servers using invite links.
- **Auto Leave Servers**: Leaves specified servers.
- **Proxy Support**: Supports HTTP(S) and SOCKS5 proxies.
- **Auto Message Deletion**: Deletes sent messages after a configurable delay.
- **Multi-language Support**: Configurable message language.

## Installation
### Requirements
- **Node.js** (Version: `22.11.0`)
- **npm** (Version: `10.9.0`)

Download Node.js and npm here: [Download Link](https://t.me/KeoAirDropFreeNe/257/1462).

### Steps
1. **Clone the repository:**
   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "dirscord-autobot/discord_autobot"
   ```
2. **Install dependencies:**
   ```bash
   npm install
   ```
     If you encounter an Execution Policy error on Windows, run:
   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```
      Then, run the npm install command again.
3. **Configure the bot:**
   Edit `configs.json` to adjust settings.
4. **Prepare input files:**
   - `tokens.txt`: List of Discord tokens (one per line). 
   - `chat_ids.txt`: List of channel IDs for messaging.   
   - `proxies.txt`: List of proxies (one per line, optional).
   - `join_servers.txt`: List of Discord invite codes.    
   - `leave_servers.txt`: List of server IDs to leave.
   - `messages.yaml`: Messages categorized by language.
  
Get tokens, Chat id, Channel id, Server id from here: https://t.me/KeoAirDropFreeNee/1570 and https://t.me/KeoAirDropFreeNee/1569 and https://t.me/KeoAirDropFreeNee/1676

## Configuration (`configs.json`)
| Setting           | Description                            |
|------------------|--------------------------------|
| `auto_chat`      | Enables/disables auto messaging |
| `delete_message` | Enables message deletion       |
| `join_server`    | Enables auto join servers      |
| `leave_server`   | Enables auto leave servers     |
| `language`       | Defines the language for messages |

Example `configs.json`:
```json
{
  "delayBetweenAccounts": 5,
  "delayEachChat": 120,
  "delayEachChannel": 360,

  "leave_server": false,
  "delete_message": false,
  "join_server": false,
  "auto_chat": true,

  "language": "vi",
  "maxAccountsAtOnce": 1,
  "timeToRestartAllAccounts": 86400
}
```

## Usage
Run the bot with:
```bash
node meomundep_discord.js
```

if you want to update the bot:
```bash
git pull
```

## How It Works
- Reads the configuration and input files.
- Logs into Discord accounts using tokens.
- Uses proxies (if provided) for each account.
- Executes configured tasks (messaging, joining, leaving servers).
- Handles errors and logs events with timestamps.
- Runs continuously in cycles with a countdown between runs.

## Logs and Timestamps
- Each log entry is prefixed with a timestamp.
- The timestamp format is based on the selected language in `configs.json`.

## Notes
- Make sure the tokens are valid and have the necessary permissions.
- Use proxies to avoid rate limits and bans.
- Running multiple accounts at once may require optimization.

## Contact and support
- **Buy me a telegram account** [Here](https://t.me/KeoAirDropFreeNe/312/27801) or [Here](https://github.com/MeoMunDep/MeoMunDep)
- **Contact:** [Contact Me](https://t.me/MeoMunDep)
- **Group:** [Join the Group](https://t.me/KeoAirDropFreeNe)
- **Channel:** [Visit the Channel](https://t.me/KeoAirDropFreeNee)

## License
Do not steal or try to copy it, use it at your own risk, do not dm me and ask for nonsense question.

