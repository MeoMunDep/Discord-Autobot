# 🤖 Discord Automation Bot by @MeoMunDep

![DISCORD_MEOMUNDEP_CLI](https://github.com/MeoMunDep/Discord-Autobot/blob/main/Discord_autobot/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true)

## 🌐 Overview
This bot automates interactions on **Discord**, including sending messages, joining/leaving servers, and handling messages using **multiple accounts** with **proxy support**.

---

## 🚀 Features
- 💬 **Auto Messaging**: Sends messages to specified channels.
- ➕ **Auto Join Servers**: Joins servers using invite links.
- ➖ **Auto Leave Servers**: Leaves specified servers.
- 🌍 **Proxy Support**: Supports HTTP(S) and SOCKS5 proxies.
- 🗑️ **Auto Message Deletion**: Deletes sent messages after a configurable delay.
- 🌐 **Multi-language Support**: Configurable message language.

---

## 🛠️ Installation

### 📋 Requirements
- **Node.js** `v22.11.0`
- **npm** `v10.9.0`

📦 Download: [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

### 📥 Steps
1. **Clone the repository:**
   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "dirscord-autobot/discord_autobot"
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```
   ⚠️ If you see an *Execution Policy* error on Windows:
   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```
   Then rerun:
   ```bash
   npm install
   ```

3. **Configure the bot:**
   Edit the `configs.json` file to suit your preferences.

4. **Prepare input files:**
   - 📄 `tokens.txt`: List of Discord tokens (one per line).
   - 🆔 `channel_ids.txt`: List of channel IDs to send messages.
   - 🌐 `proxies.txt`: List of proxies (optional).
   - 🔗 `join_servers.txt`: Discord invite codes.
   - 🚪 `leave_servers.txt`: Server IDs to leave.
   - 📜 `messages.yaml`: Messages in multiple languages.

📌 Helpful links:
- 🔑 Get tokens: [Here](https://t.me/KeoAirDropFreeNee/1570)
- 💬 Get chat ID: [Here](https://t.me/KeoAirDropFreeNee/1569)
- 📡 Get channel/server ID: [Here](https://t.me/KeoAirDropFreeNee/1676)

---

## ⚙️ Configuration (`configs.json`)

| ⚙️ Setting                  | 📘 Description                                                                 |
|----------------------------|---------------------------------------------------------------------------------|
| `maxAccountsAtOnce`        | Number of accounts to run at the same time                                      |
| `delayBetweenAccounts`     | Delay (in seconds) between starting each account                                |
| `delayEachChannel`         | List of delays (in seconds) between messages in different channels              |
| `delayEachChat`            | List of delays (in seconds) between messages in different chats                 |
| `timeToRestartAllAccounts` | Time (in seconds) to restart all accounts and begin again                       |
| `chat_language`            | Language used for auto-generated messages                                       |
| `auto_chat`                | Enable/disable automatic chatting                                               |
| `join_server`              | Enable/disable auto joining of servers                                          |
| `leave_server`             | Enable/disable auto leaving of servers                                          |
| `delete_message`           | Enable/disable message deletion after sending                                   |
| `enable_replies`           | Enable/disable bot replies to other messages                                    |
| `enable_reactions`         | Enable/disable message reactions                                                |
| `reaction_chance`          | Probability (0 to 1) that a message will receive a reaction                      |
| `enable_ai_replies`        | Enable/disable AI-generated replies                                             |
| `ai_providers.groq`        | API key for Groq AI provider (if used)                                          |
| `ai_providers.openrouter`  | API key for OpenRouter AI provider (if used)                                    |
| `ai_providers.gemini`      | API key for Google Gemini AI provider (if used)                                 |

🧾 Example `configs.json`:
```json
{
  "maxAccountsAtOnce": 1,
  "delayBetweenAccounts": 15,
  "delayEachChannel": [3, 5, 7],
  "delayEachChat": [5, 10, 15],
  "timeToRestartAllAccounts": 3600,

  "chat_language": "en",

  "auto_chat": true,
  "join_server": true,
  "leave_server": true,
  "delete_message": true,
  "enable_replies": true,
  "enable_reactions": true,
  "reaction_chance": 0.5,
  "enable_ai_replies": true,

  "ai_providers": {
    "groq": "",
    "openrouter": "",
    "gemini": ""
  }
}
```

---

![GROQ_API_KEY](https://github.com/MeoMunDep/Discord-Autobot/blob/main/Discord_autobot/IMAGE/GROQ_API_KEY.png?raw=true)
![GEMINI_API_KEY](https://github.com/MeoMunDep/Discord-Autobot/blob/main/Discord_autobot/IMAGE/GEMINI_API_KEY.png?raw=true)
![OPENROUTER_API_KEY](https://github.com/MeoMunDep/Discord-Autobot/blob/main/Discord_autobot/IMAGE/OPENROUTER_API_KEY.png?raw=true)

[GROQ_API_KEY Link](https://console.groq.com/keys)
[GEMINI_API_KEY Link](https://aistudio.google.com/app/apikey)
[OPENROUTER_API_KEY Link](https://openrouter.ai/settings/keys)

---

## ▶️ Usage

📌 Run the bot:
```bash
node meomundep_discord.js
```

⬆️ Update the bot:
```bash
git pull
```

---

## 🔍 How It Works
- Reads settings from `configs.json` and input files.
- Logs into multiple Discord accounts using provided tokens.
- Applies proxy settings per account (if configured).
- Executes tasks such as:
  - Sending messages
  - Joining servers
  - Leaving servers
- Logs every event with timestamps.
- Loops continuously with delays between cycles.

---

## 📝 Logs and Timestamps
- Each log entry includes a timestamp.
- Timestamp format matches the selected `language` setting.

---

## ⚠️ Notes
- Ensure all tokens are valid and have required permissions.
- Use proxies to avoid rate limits or bans.
- If using many accounts, you may need to optimize delay settings.

---

## 📞 Contact & Support
- 🛒 **Support me via these links**: [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) | [Link 2](https://github.com/MeoMunDep/MeoMunDep)
- 💬 **Contact Me**: [@MeoMunDep](https://t.me/MeoMunDep)
- 👥 **Group**: [Join Group](https://t.me/KeoAirDropFreeNe)
- 📢 **Channel**: [Visit Channel](https://t.me/KeoAirDropFreeNee)

---

## 📜 License
❗ **Do not steal or copy this project.**  
💀 Use it at your own risk.  
🚫 Don’t DM me with silly questions.
