# 🤖 Discord Automation Bot by @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 Overview

This bot automates interactions on **Discord**, including sending messages, joining/leaving servers, and handling messages using **multiple accounts** with **proxy support**.

---

## 🚀 Features

- 💬 **Auto Messaging** — Sends messages to specified channels with customizable delays
- 🔗 **Submit Channel Management** — Dedicated X/Twitter post submission system
- ➕ **Auto Join Servers** — Joins servers using invite links
- ➖ **Auto Leave Servers** — Leaves specified servers
- 🌍 **Proxy Support** — Supports HTTP(S) and SOCKS5 proxies
- 🗑️ **Auto Message Deletion** — Deletes sent messages after a configurable delay
- 🌐 **Multi-language Support** — Configurable message language
- 📕 **Error Logging** — Saves IDs of servers or channels where errors occurred
- 🤖 **AI Replies** — Generate casual responses using AI providers (Groq, OpenRouter, Gemini, Poe, Grok)
- 🖼️ **Image Generation** — Generate and send AI images to channels using Freepik API (with Pollinations.ai fallback)
- 🎛️ **Server Control** — Enable/disable individual servers without deleting configuration
- ⚙️ **Dual Mode Operation** — Run in normal mode (full flow) or submit-only mode
- 🎮 **Voice Channel Support** — Join and maintain presence in voice channels
- 📊 **Interactive Management** — Built-in CLI menu for server, delay, and error management
- 🚀 **CLI Flags** — Override config settings with command-line arguments

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
   - 🌐 `proxies.txt` — Proxies (optional, one per token)
   - 📜 `messages.yaml` — Messages (multi-language)
   - 🗂️ `error-channels.json` — Stores failed channels/servers (automatically generated/updated)

📌 Helpful links:

- 🔑 Get tokens: [Here](https://t.me/KeoAirDropFreeNee/1570)
- 💬 Get chat ID: [Here](https://t.me/KeoAirDropFreeNee/1569)
- 📡 Get channel/server ID: [Here](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ Configuration (configs.json)</strong></summary>

| ⚙️ Setting                     | 📘 Description                                                            |
| ------------------------------ | ------------------------------------------------------------------------- |
| `max_accounts_at_once`         | Number of accounts to run simultaneously                                   |
| `delay_between_accounts`       | Delay (in seconds) between each account start                              |
| `delay_each_channel`           | [min, max] delay range (in seconds) between different channels             |
| `delay_each_chat`              | [min, max] delay range (in seconds) between messages in same channel       |
| `time_to_restart_all_accounts` | Time (in seconds) before restarting all accounts                           |
| `chat_language`                | Language used for auto-generated messages                                  |
| `ask_before_auto_chat`         | Prompt user to choose mode (submit_only/normal) before each cycle          |
| `auto_chat`                    | Default mode: true = normal mode, false = submit_only mode                 |
| `submit_x_url`                 | Enable/disable submission of X/Twitter URLs in regular channels            |
| `join_server`                  | Enable/disable auto server joining                                         |
| `leave_server`                 | Enable/disable auto server leaving                                         |
| `delete_message`               | Enable/disable message deletion after sending                              |
| `enable_replies`               | Enable/disable message replies                                             |
| `enable_reactions`             | Enable/disable reactions to messages                                       |
| `reaction_chance`              | Probability (0–1) of reacting to a message                                 |
| `enable_ai_replies`            | Enable/disable AI-generated replies                                        |
| `ai_reply_chance`              | Probability (0–1) of using AI to reply                                     |
| `ai_providers.*`               | API keys (arrays) for AI providers (Groq, Gemini, Poe, OpenRouter, Grok)  |
| `image_generation_providers.*` | API keys (arrays) for Image AI providers (Freepik)                         |
| `voice_chat.enabled`           | Enable/disable voice channel connection                                    |
| `voice_chat.server_id`         | Guild ID for voice channel                                                 |
| `voice_chat.channel_id`        | Voice channel ID to join                                                   |
| `voice_chat.user_id`           | Your user ID for voice connection                                          |

---

### 🧾 Example `configs.json`

```json
{
  "max_accounts_at_once": 1,
  "delay_between_accounts": 15,
  "delay_each_channel": [5, 7],
  "delay_each_chat": [10, 15],
  "time_to_restart_all_accounts": 963,

  "ask_before_auto_chat": false,
  "auto_chat": true,
  "submit_x_url": false,
  "delete_message": false,
  
  "join_server": false,
  "leave_server": false,

  "enable_replies": true,
  "ai_reply_chance": 0.7,

  "enable_reactions": true,
  "reaction_chance": 0.7,
  
  "enable_ai_replies": true,
  "ai_providers": {
    "groq": ["gsk_xxxxxxxxxxxxxxxxxxxxx"],
    "openrouter": [
      "sk-or-v1-xxxxxxxxxxxxx",
      "sk-or-v1-yyyyyyyyyyyyy"
    ],
    "gemini": [
      "AIzaSyXXXXXXXXXXXXXXX",
      "AIzaSyYYYYYYYYYYYYYYY",
      "AIzaSyZZZZZZZZZZZZZZZ"
    ],
    "poe": [""],
    "grok": ["xai-xxxxxxxxxxxxxxxxxxxxx"]
  },

  "image_generation_providers": {
    "freepik": [
      "fpk_xxxxxxxxxxxxxxxxxxxxx",
      "fpk_yyyyyyyyyyyyyyyyyyyyy"
    ]
  },

  "voice_chat": {
    "enabled": false,
    "server_id": "",
    "channel_id": "",
    "user_id": ""
  }
}
```

---

### 🔑 Multiple API Keys

The bot supports **multiple API keys** for each provider. It will randomly select one key from the array for each request:

```json
"ai_providers": {
  "groq": ["key1", "key2", "key3"],
  "gemini": ["key1", "key2"]
}
```

This helps with:
- **Load balancing** across multiple API accounts
- **Rate limit management** by distributing requests
- **Reliability** - if one key fails, others can be tried

---

<details>
<summary><strong>🔑 GROQ API Key</strong></summary>

[Create Key](https://console.groq.com/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GROQ_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 GROK API Key</strong></summary>

[Create Key](https://console.x.ai/api-keys)

**Note:** Grok API uses OpenAI-compatible format. Get your API key from X.AI console.

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
    "enabled": true,
    "channels": {
      "submit_chat": { ... },
      "raw_chat": { ... },
      "command_chat": { ... },
      "image_chat": { ... }
    }
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
This is where you define what the bot does in each channel. It has **four categories**:

---

## 🗨️ Channel Types

### 🔗 **`submit_chat`** - X/Twitter Post Submissions (NEW!)

**Purpose:** Dedicated channel type for submitting X/Twitter post links with customizable delays.

**Format:**
```json
"submit_chat": {
  "CHANNEL_ID": {
    "message": "https://x.com/yourpost",
    "delay": [6000, 12000]
  }
}
```

**Fields:**
- `message` (String): The X/Twitter URL to submit
- `delay` (Array): [min, max] cooldown in seconds before bot can post again in this channel
- `enabled` (Boolean, Optional): Set to `false` to disable this specific channel without removing it

**Example:**
```json
"submit_chat": {
  "1380138116505141288": {
    "message": "https://x.com/MeoMunDep/status/123456789",
    "delay": [6000, 12000]
  },
  "1441334930268225637": {
    "message": "https://x.com/CryptoProject/status/987654321",
    "delay": [3600, 7200],
    "enabled": false
  }
}
```

**How it works:**
- Bot only processes these channels in **submit-only mode** or **normal mode**
- Each channel has its own cooldown timer tracked independently
- URLs are submitted exactly as provided
- If `submit_x_url: false` in configs, X/Twitter URLs in regular channels are skipped

---

### 📝 **`raw_chat`** - Text Messages

Send regular text messages to channels.

**Format (Simple):**
```json
"raw_chat": {
  "CHANNEL_ID": "MESSAGE_TO_SEND"
}
```

**Format (Advanced with Options):**
```json
"raw_chat": {
  "CHANNEL_ID": {
    "message": "MESSAGE_TO_SEND",
    "delay": [60, 120],
    "enabled": true
  }
}
```

**Special Values:**
- `"__random_message"` - Bot will use AI or random message from messages.yaml
- `"[AI] Your instruction"` - Bot will use AI with your custom instruction
- Any specific text - Bot will send exactly this text (e.g., `"gm"`, `"Hello!"`)

**Example:**
```json
"raw_chat": {
  "1417068171243815002": {
    "message": "[AI] Respond to random messages",
    "delay": [60, 120]
  },
  "1417084328504197250": {
    "message": "gm",
    "delay": [6000, 12000]
  },
  "9876543210987654321": "__random_message"
}
```

**What happens:**
- In channel `1417068171243815002`: Bot uses AI with instruction "Respond to random messages"
- In channel `1417084328504197250`: Bot sends "gm" every 6000-12000 seconds
- In channel `9876543210987654321`: Bot sends random AI-generated message

---

### 🤖 **`command_chat`** - Bot Commands

Send slash commands or bot commands to channels.

**Format:**
```json
"command_chat": {
  "CHANNEL_ID": {
    "command": "COMMAND_TO_EXECUTE",
    "delay": [60, 120]
  }
}
```

**Example:**
```json
"command_chat": {
  "1234567890123456789": {
    "command": "/claim daily",
    "delay": [86400, 86500]
  },
  "9876543210987654321": {
    "command": "!rank",
    "delay": [600, 1200]
  }
}
```

---

### 🖼️ **`image_chat`** - AI-Generated Images

Generate and send AI images to channels using Freepik API (with automatic Pollinations.ai fallback).

**Format:**
```json
"image_chat": {
  "CHANNEL_ID": {
    "prompt": "IMAGE_GENERATION_PROMPT",
    "delay": [60, 120]
  }
}
```

**Example:**
```json
"image_chat": {
  "1435601397591703675": {
    "prompt": "Airdrop project with 'Curious'",
    "delay": [7200, 10000]
  },
  "9876543210987654321": {
    "prompt": "Beautiful sunset over mountains",
    "delay": [3600, 7200]
  }
}
```

**Requirements:**
- Must have `freepik` API key configured in `configs.json`
- If Freepik fails or no API key, bot automatically uses Pollinations.ai (free, no API key needed)

---

## 📋 Complete Example

```json
[
  {
    "name": "Curious",
    "guild_id": "1417067849926705235",
    "invite_id": "curious",
    "enabled": true,
    "channels": {
      "submit_chat": {
        "1417080821852147732": {
          "message": "https://x.com/Curious/status/123456",
          "delay": [6000, 12000]
        }
      },
      "raw_chat": {
        "1417068171243815002": {
          "message": "[AI] Respond to random messages",
          "delay": [60, 120]
        },
        "1417084328504197250": {
          "message": "gcurious",
          "delay": [600, 1200]
        }
      },
      "command_chat": {
        "1417068171243815003": {
          "command": "!rank",
          "delay": [600, 1200]
        }
      },
      "image_chat": {
        "1435601397591703675": {
          "prompt": "Airdrop project with 'CURIOUS'",
          "delay": [60, 120]
        }
      }
    }
  },
  {
    "name": "Disabled Server (Not Active)",
    "guild_id": "5555555555555555555",
    "invite_id": "oldserver",
    "enabled": false,
    "channels": {
      "submit_chat": {},
      "raw_chat": {
        "3333333333333333333": {
          "message": "test message",
          "delay": [60, 120]
        }
      },
      "command_chat": {},
      "image_chat": {}
    }
  }
]
```

---

## ⏱️ Delay System

The bot uses a **smart cooldown system** to prevent spam and rate limits:

### 📊 Delay Priority (from highest to lowest):

1. **Channel-specific delay** (in servers.json)
   ```json
   "1234567890": {
     "message": "gm",
     "delay": [300, 600]  ← This takes priority
   }
   ```

2. **Global delay_each_chat** (in configs.json)
   ```json
   "delay_each_chat": [10, 15]  ← Fallback if channel has no delay
   ```

### 🔄 How it works:

- Each channel has its own **independent cooldown timer**
- Timer starts after **successful message send**
- Bot checks if cooldown period has passed before sending next message
- If cooldown active, bot skips channel and logs remaining wait time
- Cooldowns are **persistent** and tracked in `chat-timestamps.json`

### 💡 Tips:

- Use longer delays (3600-7200s) for low-activity channels
- Use shorter delays (60-300s) for high-engagement channels
- Submit channels typically use 6000-12000s delays
- Image generation should use longer delays (7200-10000s) due to API costs

---

## 💡 Tips & Best Practices

### ✅ DO:
- Use descriptive names for servers to easily identify them
- Set `enabled: false` to temporarily disable servers without losing configuration
- Set `enabled: false` on individual channels to disable them
- Use channel-specific delays for better control
- Use `"[AI] instruction"` format for custom AI responses
- Use `submit_chat` for X/Twitter URLs instead of regular channels
- Test with one server first before adding multiple servers
- Use longer delays for image generation to save API costs

### ❌ DON'T:
- Don't delete server entries - use `enabled: false` instead
- Don't forget to add delays to channels (bot will use defaults but it's better to be explicit)
- Don't use very short delays (< 60s) to avoid rate limits
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
| Bot skips server | Check `enabled: true` is set on server |
| Bot skips specific channel | Check channel doesn't have `enabled: false` |
| Bot doesn't join server | Check `invite_id` is correct and `join_server: true` in configs |
| Bot doesn't send messages | Check channel IDs are correct and `auto_chat: true` in configs |
| Messages sent too frequently | Add or increase `delay` values in channel configs |
| Images not generating | Check Freepik API key in configs.json (or bot will use free Pollinations.ai) |
| Submit channels not working | Check you're running in correct mode (submit-only or normal) |
| JSON syntax error | Use a JSON validator like jsonlint.com |

</details>

---

<details>
<summary><strong>▶️ Usage</strong></summary>

### 📌 Run the bot

**Basic usage:**
```bash
node index_meomundep.js
```

**With CLI flags:**
```bash
# Force submit-only mode (only submit_chat channels)
node index_meomundep.js --submit
node index_meomundep.js -s

# Force normal mode (full flow: join, chat, leave)
node index_meomundep.js --chat
node index_meomundep.js -c

# Show help
node index_meomundep.js --help
node index_meomundep.js -h
```

### 🎮 Operating Modes

The bot supports **two operation modes**:

#### 1️⃣ **Normal Mode** (Full Flow)
- Joins servers (if `join_server: true`)
- Processes ALL channel types: `submit_chat`, `raw_chat`, `command_chat`, `image_chat`
- Leaves servers (if `leave_server: true`)
- Uses AI for message generation

**Activate with:**
- CLI: `node index_meomundep.js --chat`
- Config: `"auto_chat": true` (default)
- Runtime: Select option `2` when prompted (if `ask_before_auto_chat: true`)

#### 2️⃣ **Submit-Only Mode**
- Skips server join/leave
- **ONLY** processes `submit_chat` channels
- Ignores `raw_chat`, `command_chat`, `image_chat`
- Perfect for dedicated X/Twitter submission tasks

**Activate with:**
- CLI: `node index_meomundep.js --submit`
- Config: `"auto_chat": false`
- Runtime: Select option `1` when prompted (if `ask_before_auto_chat: true`)

### 🔄 Mode Priority (highest to lowest):

1. **CLI flags** (--submit or --chat)
2. **User prompt** (if `ask_before_auto_chat: true`)
3. **Config setting** (`auto_chat` value)

### 📊 Interactive Management

The bot includes a built-in management system accessible via:

```bash
node index_meomundep.js
# Then select "Server Manager" from main menu
```

**Management Features:**

🖥️ **Main Menu:**
1. Server Management (enable/disable servers)
2. Delay Management (add/show delays)
3. Submit Management (X post links)
4. Error Channels Management
0. Exit

📡 **Server Management:**
- Enable/disable all servers at once
- Enable/disable specific servers
- Enable ONLY one server (disable all others)
- Show server status overview

⏱️ **Delay Management:**
- Add default delays to channels missing them
- Add custom delays
- Show delay statistics
- List unique delay values in use

🔗 **Submit Management:**
- List all submit channels
- Add new submit channel
- Edit submit URLs
- Remove submit channels
- Show submit statistics

🚫 **Error Channel Management:**
- View all error channels by token
- Delete specific error channels
- Delete entire token entries
- Clean up failed channel records

### ⬆️ Update the bot

```bash
git pull
npm install
```

---

### 🔍 How It Works

1. **Reads configuration** from `configs.json`
2. **Checks for CLI flags** (--submit, --chat, --help)
3. **Prompts user** (if `ask_before_auto_chat: true` and no CLI flag)
4. **Determines mode** (submit-only or normal)
5. **Logs in** using provided tokens from `tokens.txt`
6. **Applies proxy** per account (if available in `proxies.txt`)
7. **Processes each server** from `servers.json`:
   - ✅ Checks if server is `enabled: true`
   - ✅ Checks if channel is not `enabled: false`
   - ✅ Checks cooldown timer before sending
   - **In normal mode:**
     - ➕ Joins server (using `invite_id`) if `join_server: true`
     - 💬 Processes all channel types
     - ➖ Leaves server (using `guild_id`) if `leave_server: true`
   - **In submit-only mode:**
     - 🔗 Only processes `submit_chat` channels
     - ⏭️ Skips join/leave and other channel types
8. **Logs every event** with timestamps and colored output
9. **Saves timestamps** to prevent duplicate posts during cooldown
10. **Waits for delays** between actions
11. **Repeats automatically** after `time_to_restart_all_accounts` seconds

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
  - 🔶 Orange - AI/Provider actions

---

### 🎙️ Voice Channel Support

The bot can join and maintain presence in voice channels:

```json
"voice_chat": {
  "enabled": true,
  "server_id": "1234567890123456789",
  "channel_id": "9876543210987654321",
  "user_id": "1111222233334444555"
}
```

**Features:**
- Automatic connection to voice channels
- Heartbeat mechanism to maintain connection
- Automatic reconnection on disconnect (up to 5 attempts with exponential backoff)
- WebRTC protocol support
- Clean disconnect handling

**Requirements:**
- Must have permission to join the voice channel
- Token must have access to the specified server
- User ID must match the token's user ID

---

### ⚠️ Important Notes

- ✅ Ensure all tokens are valid and have required permissions
- 🌐 Use proxies to avoid rate limits or bans (one proxy per token recommended)
- ⏱️ Tune delay settings carefully for larger account sets
- 📊 Monitor logs for errors and adjust `servers.json` accordingly
- 🔒 Keep your tokens and API keys private and secure
- 🚫 Don't share your `tokens.txt` file with anyone
- 💾 Bot automatically saves errors to `error-channels.json` to avoid retrying failed channels
- 🔄 Use submit-only mode for dedicated URL submission tasks
- 🎯 Set appropriate cooldowns per channel to avoid spam detection
- 🤖 AI providers are tried in sequence until one succeeds
- 📸 Image generation automatically falls back to free service if Freepik fails
- ⚡ CLI flags override all other settings for that run

</details>

---

## 📞 Contact & Support

- 🛒 **Support Me:** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
- 💬 **Contact:** [@MeoMunDep](https://t.me/MeoMunDep)
- 👥 **Group:** [Join Group](https://t.me/KeoAirDropFreeNe)
- 📢 **Channel:** [Visit Channel](https://t.me/KeoAirDropFreeNee)

---

⚠️ **Disclaimer**

This project was created solely as a **personal educational exercise**.  
It is **not an official product**, website, or service of any company or brand referenced in this repository.  
The creator is **not affiliated, associated, endorsed by, or connected** with any such company or brand in any way.

The code is provided **"as is"** without any warranties or guarantees.  
Certain parts of the source are intentionally **obfuscated** to protect personal research, custom logic, and implementation techniques developed during learning and experimentation.

Use this project responsibly and at your own risk.  
**Redistribution, resale, or commercial use** of any part of this code—whether original or modified—is **not permitted**.

---

<p align="center"><a href="#-discord-automation-bot-by-meomundep">⬆️ Back to top</a></p>
