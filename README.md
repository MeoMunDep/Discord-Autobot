# 🤖 Discord Automation Bot by @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 Overview
This bot automates interactions on **Discord**, including sending messages, joining/leaving servers, and handling messages using **multiple accounts** with **proxy support**.

---

## 🚀 Features
- 💬 **Auto Messaging** — Sends messages to specified channels  
- ➕ **Auto Join Servers** — Joins servers using invite links  
- ➖ **Auto Leave Servers** — Leaves specified servers  
- 🌍 **Proxy Support** — Supports HTTP(S) and SOCKS5 proxies  
- 🗑️ **Auto Message Deletion** — Deletes sent messages after a configurable delay  
- 🌐 **Multi-language Support** — Configurable message language  
- 📕 **Error Logging** — Saves IDs of servers or channels where errors occurred  

---

<details>
<summary><strong>🛠️ Installation</strong></summary>

### 📋 Requirements
- **Node.js** `v22.11.0`  
- **npm** `v10.9.0`  

📦 Download: [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
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

   * 📄 `tokens.txt` — Discord tokens (one per line)
   * 🆔 `channel_ids.txt` — Channel IDs to send messages
   * 🌐 `proxies.txt` — Proxies (optional)
   * 🔗 `join_servers.txt` — Discord invite codes
   * 🚪 `leave_servers.txt` — Server IDs to leave
   * 📜 `messages.yaml` — Messages (multi-language)
   * 🗂️ `error_channels.json` — Stores failed channels/servers

📌 Helpful links:

* 🔑 Get tokens: [Here](https://t.me/KeoAirDropFreeNee/1570)
* 💬 Get chat ID: [Here](https://t.me/KeoAirDropFreeNee/1569)
* 📡 Get channel/server ID: [Here](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ Configuration (`configs.json`)</strong></summary>

| ⚙️ Setting                 | 📘 Description                                            |
| -------------------------- | --------------------------------------------------------- |
| `maxAccountsAtOnce`        | Number of accounts to run at once                         |
| `delayBetweenAccounts`     | Delay (in seconds) between each account start             |
| `delayEachChannel`         | Delay (in seconds) between messages in different channels |
| `delayEachChat`            | Delay (in seconds) between messages in different chats    |
| `timeToRestartAllAccounts` | Time (in seconds) to restart all accounts                 |
| `chat_language`            | Language used for auto-generated messages                 |
| `auto_chat`                | Enable/disable automatic chatting                         |
| `join_server`              | Enable/disable auto server joining                        |
| `leave_server`             | Enable/disable auto server leaving                        |
| `delete_message`           | Enable/disable message deletion after sending             |
| `enable_replies`           | Enable/disable message replies                            |
| `enable_reactions`         | Enable/disable reactions                                  |
| `reaction_chance`          | Probability (0–1) of reacting to a message                |
| `enable_ai_replies`        | Enable/disable AI-generated replies                       |
| `ai_providers.*`           | API keys for AI providers (Groq, Gemini, Poe, OpenRouter) |

---

### 🧾 Example `configs.json`

```json
{
  "maxAccountsAtOnce": 1,
  "delayBetweenAccounts": 17,
  "delayEachChat": [11, 15],
  "delayEachChannel": [17, 19],
  "timeToRestartAllAccounts": 360,

  "chat_language": "en",

  "auto_chat": true,
  "join_server": true,
  "leave_server": true,
  "delete_message": true,
  "enable_replies": true,
  "reaction_chance": 0.5,
  "enable_reactions": true,
  "enable_ai_replies": true,

  "ai_providers": {
    "poe": [""],
    "groq": [""],
    "gemini": [""],
    "openrouter": [""]
  }
}
```

---

<details>
<summary><strong>🔑 GROQ API Key</strong></summary>

[Create Key](https://console.groq.com/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GROQ_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 GEMINI API Key</strong></summary>

[Create Key](https://aistudio.google.com/app/apikey)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GEMINI_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 OPENROUTER API Key</strong></summary>

[Create Key](https://openrouter.ai/settings/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/OPENROUTER_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 POE API Key</strong></summary>

[Create Key](https://poe.com/api_key)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/POE_API_KEY.png?raw=true" width="600" />
</p>

</details>

</details>

---

<details>
<summary><strong>▶️ Usage</strong></summary>

### 📌 Run the bot

```bash
node index_meomundep.js
```

### ⬆️ Update the bot

```bash
git pull
```

---

### 🔍 How It Works

* Reads configuration from `configs.json`
* Logs in using provided tokens
* Applies proxy per account (if available)
* Executes tasks:

  * Sending messages
  * Joining servers
  * Leaving servers
* Logs every event with timestamps
* Repeats automatically with defined delays

---

### 📝 Logs and Timestamps

* Each log entry includes a timestamp
* Timestamp format follows `chat_language` setting

---

### ⚠️ Notes

* Ensure all tokens are valid and have required permissions
* Use proxies to avoid rate limits or bans
* Tune delay settings for larger account sets

</details>

---

## 📞 Contact & Support

* 🛒 **Support Me:** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **Contact:** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **Group:** [Join Group](https://t.me/KeoAirDropFreeNe)
* 📢 **Channel:** [Visit Channel](https://t.me/KeoAirDropFreeNee)

---

## 📜 License

❗ **Do not steal or copy this project.**
💀 **Use it at your own risk.**
🚫 **Don’t DM me with silly questions.**

---

<p align="center"><a href="#-discord-automation-bot-by-meomundep">⬆️ Back to top</a></p>
