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
- 🤖 **AI Replies** — Generate casual responses using AI providers (Groq, OpenRouter, Gemini, Poe)
- 🖼️ **Image Generation** — Generate and send AI images to channels using Freepik API
- 🎛️ **Server Control** — Enable/disable individual servers without deleting configuration

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

   ⚠️ If you see an _Execution Policy_ error on Windows:

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

   - 📄 `tokens.txt` — Discord tokens (one per line)
   - 🆔 `servers.json` — Server details including guild IDs, invite codes, and channel configurations (see detailed explanation below)
   - 🌐 `proxies.txt` — Proxies (optional)
   - 📜 `messages.yaml` — Messages (multi-language)
   - 🗂️ `error_channels.json` — Stores failed channels/servers (automatically generated/updated)

📌 Helpful links:

- 🔑 Get tokens: [Here](https://t.me/KeoAirDropFreeNee/1570)
- 💬 Get chat ID: [Here](https://t.me/KeoAirDropFreeNee/1569)
- 📡 Get channel/server ID: [Here](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ Configuration (configs.json)</strong></summary>

| ⚙️ Setting                     | 📘 Description                                            |
| ------------------------------ | --------------------------------------------------------- |
| `maxAccountsAtOnce`            | Number of accounts to run at once                         |
| `delayBetweenAccounts`         | Delay (in seconds) between each account start             |
| `delayEachChannel`             | Delay (in seconds) between messages in different channels |
| `delayEachChat`                | Delay (in seconds) between messages in different chats    |
| `timeToRestartAllAccounts`     | Time (in seconds) to restart all accounts                 |
| `chat_language`                | Language used for auto-generated messages                 |
| `auto_chat`                    | Enable/disable automatic chatting                         |
| `join_server`                  | Enable/disable auto server joining                        |
| `leave_server`                 | Enable/disable auto server leaving                        |
| `delete_message`               | Enable/disable message deletion after sending             |
| `enable_replies`               | Enable/disable message replies                            |
| `enable_reactions`             | Enable/disable reactions                                  |
| `reaction_chance`              | Probability (0–1) of reacting to a message                |
| `enable_ai_replies`            | Enable/disable AI-generated replies                       |
| `ai_providers.*`               | API keys for AI providers (Groq, Gemini, Poe, OpenRouter) |
| `image_generation_providers.*` | API keys for Image AI providers (Freepik)                 |

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
  },
  "image_generation_providers": {
    "freepik": [""]
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

<details>
<summary><strong>🔑 FREEPIK API Key</strong></summary>

[Create Key](https://api.freepik.com/v1/auth/create)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/FREEPIK_API_KEY.png?raw=true" width="600" />
</p>

</details>

</details>

---

<details>
<summary><strong>🗂️ servers.json Structure (DETAILED GUIDE)</strong></summary>

The `servers.json` file is the **heart of your bot configuration**. It defines which servers to interact with and what actions to perform in each channel.

---

## 📚 Basic Structure

The file should be a **JSON array** containing server objects. Each server represents a Discord server you want the bot to interact with.

```json
[
  {
    "name": "Server Name",
    "guild_id": "1234567890123456789",
    "invite_id": "inviteCode",
    "channels": { ... },
    "enabled": true
  }
]
```

---

## 🔑 Field Explanations

### 1️⃣ **`name`** (String - Required)
- **What it is:** A friendly name for the server (for your reference only)
- **Example:** `"Curious"`, `"My Gaming Server"`, `"Crypto Community"`
- **Purpose:** Helps you identify servers in logs and configuration

### 2️⃣ **`guild_id`** (String - Required)
- **What it is:** The Discord server's unique ID
- **How to get it:** [Follow this guide](https://t.me/KeoAirDropFreeNee/1676)
- **Example:** `"1417067849926705235"`
- **Purpose:** Used for leaving servers when `leave_server: true` in configs

### 3️⃣ **`invite_id`** (String - Required)
- **What it is:** The invite code for joining the server
- **Example:** `"altiuslabs"` (from discord.gg/altiuslabs)
- **Special values:**
  - `""` (empty string) - Don't join this server
  - `"none"` - Don't join this server
  - `"unknown"` - Don't join this server
- **Purpose:** Used for joining servers when `join_server: true` in configs

### 4️⃣ **`enabled`** (Boolean - Required)
- **What it is:** Controls whether the bot processes this server
- **Values:**
  - `true` - Bot will process this server (send messages, join, etc.)
  - `false` - Bot will skip this server completely
- **Purpose:** Allows you to temporarily disable servers without deleting their configuration

### 5️⃣ **`channels`** (Object - Required)
This is where you define what the bot does in each channel. It has three categories:

---

## 🗨️ Channel Types

### 📝 **`raw_chat`** - Text Messages

Send regular text messages to channels.

**Format:**
```json
"raw_chat": {
  "CHANNEL_ID": "MESSAGE_TO_SEND"
}
```

**Special Values:**
- `"__random_message"` - Bot will use AI or random message from messages.yaml
- Any specific text - Bot will send exactly this text (e.g., `"gm"`, `"Hello!"`)

**Example:**
```json
"raw_chat": {
  "1417068171243815002": "__random_message",
  "1417084328504197250": "gm",
  "9876543210987654321": "Hello everyone!"
}
```

**What happens:**
- In channel `1417068171243815002`: Bot sends AI-generated or random message
- In channel `1417084328504197250`: Bot sends "gm"
- In channel `9876543210987654321`: Bot sends "Hello everyone!"

---

### 🤖 **`command_chat`** - Bot Commands

Send slash commands or bot commands to channels.

**Format:**
```json
"command_chat": {
  "CHANNEL_ID": "COMMAND_TO_EXECUTE"
}
```

**Example:**
```json
"command_chat": {
  "1234567890123456789": "/claim daily",
  "9876543210987654321": "/rewards"
}
```

**What happens:**
- In channel `1234567890123456789`: Bot executes `/claim daily` command
- In channel `9876543210987654321`: Bot executes `/rewards` command

**Note:** This feature requires the bot to be configured for the specific bot's command structure.

---

### 🖼️ **`image_chat`** - AI-Generated Images

Generate and send AI images to channels using Freepik API. Get Freepik API key from here: [Link](https://docs.freepik.com/authentication)

**Format:**
```json
"image_chat": {
  "CHANNEL_ID": "IMAGE_GENERATION_PROMPT"
}
```

**Example:**
```json
"image_chat": {
  "1435601397591703675": "Curious browser",
  "9876543210987654321": "Beautiful sunset over mountains",
  "1111222233334444555": "Cyberpunk city at night"
}
```

**What happens:**
- In channel `1435601397591703675`: Bot generates image with prompt "Curious browser" and sends it
- In channel `9876543210987654321`: Bot generates "Beautiful sunset over mountains" image
- In channel `1111222233334444555`: Bot generates "Cyberpunk city at night" image

**Requirements:**
- Must have `freepik` API key configured in `configs.json`
- If Freepik fails, bot automatically falls back to Pollinations.ai (free, no API key needed)

---

## 📋 Complete Example

```json
[
  {
    "name": "Curious Community",
    "guild_id": "1417067849926705235",
    "invite_id": "curious",
    "channels": {
      "raw_chat": {
        "1417068171243815002": "__random_message",
        "1417084328504197250": "gcurious"
      },
      "command_chat": {
        "1417068171243815003": "/daily claim"
      },
      "image_chat": {
        "1435601397591703675": "Curious browser logo"
      }
    },
    "enabled": true
  },
  {
    "name": "Gaming Server",
    "guild_id": "9876543210987654321",
    "invite_id": "gaming123",
    "channels": {
      "raw_chat": {
        "1111111111111111111": "gm",
        "2222222222222222222": "__random_message"
      },
      "command_chat": {},
      "image_chat": {}
    },
    "enabled": true
  },
  {
    "name": "Disabled Server (Not Active)",
    "guild_id": "5555555555555555555",
    "invite_id": "oldserver",
    "channels": {
      "raw_chat": {
        "3333333333333333333": "test message"
      },
      "command_chat": {},
      "image_chat": {}
    },
    "enabled": false
  }
]
```

---

## ⚙️ How Bot Processes Servers

1. **Read `servers.json`** - Loads all server configurations
2. **Check `enabled`** - Skips servers with `enabled: false`
3. **Join Server** (if `join_server: true` in configs) - Uses `invite_id`
4. **Process Channels** (if `auto_chat: true` in configs):
   - Processes `raw_chat` channels → Sends text messages
   - Processes `command_chat` channels → Executes commands
   - Processes `image_chat` channels → Generates and sends images
5. **Leave Server** (if `leave_server: true` in configs) - Uses `guild_id`
6. **Repeat** for next server

---

## 💡 Tips & Best Practices

### ✅ DO:
- Use descriptive names for servers to easily identify them
- Set `enabled: false` to temporarily disable servers without losing configuration
- Leave channel categories empty `{}` if not using them
- Use `"__random_message"` for more natural, varied conversations
- Test with one server first before adding multiple servers

### ❌ DON'T:
- Don't delete server entries - use `enabled: false` instead
- Don't put channel IDs in quotes within objects (they're already strings)
- Don't forget commas between objects in arrays
- Don't use invalid JSON syntax (use a JSON validator if unsure)

---

## 🔍 Finding Channel IDs

1. Enable Developer Mode in Discord (Settings → Advanced → Developer Mode)
2. Right-click on any channel
3. Click "Copy Channel ID"
4. Paste the ID into `servers.json`

[Visual Guide](https://t.me/KeoAirDropFreeNee/1676)

---

## 🐛 Troubleshooting

| Problem | Solution |
|---------|----------|
| Bot skips server | Check `enabled: true` is set |
| Bot doesn't join server | Check `invite_id` is correct and `join_server: true` in configs |
| Bot doesn't send messages | Check channel IDs are correct and `auto_chat: true` in configs |
| Images not generating | Check Freepik API key in configs.json (or bot will use free Pollinations.ai) |
| JSON syntax error | Use a JSON validator like jsonlint.com |

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

1. **Reads configuration** from `configs.json`
2. **Logs in** using provided tokens from `tokens.txt`
3. **Applies proxy** per account (if available in `proxies.txt`)
4. **Processes each server** from `servers.json`:
   - ✅ Checks if server is `enabled: true`
   - ➕ Joins server (using `invite_id`) if `join_server: true`
   - 💬 Sends messages/commands/images to channels if `auto_chat: true`
   - ➖ Leaves server (using `guild_id`) if `leave_server: true`
5. **Logs every event** with timestamps and colored output
6. **Waits for delays** between actions (configurable)
7. **Repeats automatically** after `timeToRestartAllAccounts` seconds

---

### 📝 Logs and Timestamps

- Each log entry includes a timestamp
- Timestamp format follows `chat_language` setting
- Color-coded logs for easy reading:
  - 🟢 Green - Success
  - 🔴 Red - Error
  - 🟡 Yellow - Warning
  - 🔵 Blue - Info
  - 🟣 Purple - Processing

---

### ⚠️ Important Notes

- ✅ Ensure all tokens are valid and have required permissions
- 🌐 Use proxies to avoid rate limits or bans (one proxy per token recommended)
- ⏱️ Tune delay settings carefully for larger account sets
- 📊 Monitor logs for errors and adjust `servers.json` accordingly
- 🔒 Keep your tokens and API keys private and secure
- 🚫 Don't share your `tokens.txt` file with anyone
- 💾 Bot automatically saves errors to `error_channels.json` to avoid retrying failed channels

</details>

---

## 📞 Contact & Support

- 🛒 **Support Me:** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
- 💬 **Contact:** [@MeoMunDep](https://t.me/MeoMunDep)
- 👥 **Group:** [Join Group](https://t.me/KeoAirDropFreeNe)
- 📢 **Channel:** [Visit Channel](https://t.me/KeoAirDropFreeNee)

---

## 📜 License

❗ **Do not steal or copy this project.**
💀 **Use it at your own risk.**
🚫 **Don't DM me with silly questions.**

---

<p align="center"><a href="#-discord-automation-bot-by-meomundep">⬆️ Back to top</a></p>