# 🤖 Discord Automation Bot ni @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 Pangkalahatang-ideya

Ang bot na ito ay nag-a-automate ng interaksyon sa **Discord**, kabilang ang pagpapadala ng mga mensahe, pag-join/leave ng mga server, at pag-handle ng mga mensahe gamit ang **maramihang account** na may **proxy support**.

---

## 🚀 Mga Tampok

* 💬 **Auto Messaging** — Nagpapadala ng mga mensahe sa tinukoy na mga channel na may nako-customize na delay
* 🔗 **Submit Channel Management** — Naka-dedicate na sistema para sa pagsusumite ng X/Twitter post
* ➕ **Auto Join Servers** — Sumusali sa mga server gamit ang invite links
* ➖ **Auto Leave Servers** — Umaalis sa mga tinukoy na server
* 🌍 **Proxy Support** — Sumusuporta sa HTTP(S) at SOCKS5 proxies
* 🗑️ **Auto Message Deletion** — Binubura ang ipinadalang mensahe pagkatapos ng nako-configure na delay
* 🌐 **Multi-language Support** — Nako-configure na wika para sa mga mensahe
* 📕 **Error Logging** — Sinesave ang mga ID ng server o channel kung saan nagkaroon ng error
* 🤖 **AI Replies** — Gumagawa ng casual na tugon gamit ang AI providers (Groq, OpenRouter, Gemini, Poe, Grok)
* 🖼️ **Image Generation** — Gumagawa at nagpapadala ng AI images sa mga channel gamit ang Freepik API (may Pollinations.ai fallback)
* 🎛️ **Server Control** — I-enable/disable ang indibidwal na server nang hindi binubura ang config
* ⚙️ **Dual Mode Operation** — Patakbuhin sa normal mode (full flow) o submit-only mode
* 🎮 **Voice Channel Support** — Sumali at nagpapanatili ng presence sa voice channels
* 📊 **Interactive Management** — Built-in CLI menu para sa server, delay, at error management
* 🚀 **CLI Flags** — I-override ang mga config settings gamit ang command-line arguments

---

<details>
<summary><strong>🛠️ Pag-install</strong></summary>

### 📋 Mga Kinakailangan

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 Download: [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 Mga Hakbang

1. **I-clone ang repositoryo:**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **I-install ang dependencies:**

   ```bash
   npm install
   ```

   ⚠️ Kung makakita ng *Execution Policy* error sa Windows:

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   Pagkatapos ulitin:

   ```bash
   npm install
   ```

3. **I-configure ang bot:**
   I-edit ang `configs.json` ayon sa iyong gusto.

4. **Ihanda ang input files:**

   * 📄 `tokens.txt` — Discord tokens (bawat linya ay isang token)
   * 🆔 `servers.json` — Detalye ng mga server kasama ang guild IDs, invite codes, at channel configs (tingnan ang detalyadong paliwanag sa ibaba)
   * 🌐 `proxies.txt` — Proxies (opsyonal, isang proxy kada token)
   * 📜 `messages.yaml` — Mga mensahe (multilanguage)
   * 🗂️ `error-channels.json` — Nagsi-store ng failed channels/servers (awtomatikong nagge-generate/update)

📌 Helpful links:

* 🔑 Get tokens: [Here](https://t.me/KeoAirDropFreeNee/1570)
* 💬 Get chat ID: [Here](https://t.me/KeoAirDropFreeNee/1569)
* 📡 Get channel/server ID: [Here](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ Configuration (configs.json)</strong></summary>

| ⚙️ Setting                     | 📘 Paglalarawan                                                              |
| ------------------------------ | ---------------------------------------------------------------------------- |
| `max_accounts_at_once`         | Bilang ng accounts na tatakbo nang sabay                                     |
| `delay_between_accounts`       | Delay (sa segundo) sa pagitan ng pagsimula ng bawat account                  |
| `delay_each_channel`           | [min, max] range (sa segundo) sa pagitan ng iba’t ibang channel              |
| `delay_each_chat`              | [min, max] range (sa segundo) sa pagitan ng mga mensahe sa parehong channel  |
| `time_to_restart_all_accounts` | Oras (sa segundo) bago i-restart ang lahat ng accounts                       |
| `chat_language`                | Wika na gagamitin para sa auto-generated messages                            |
| `ask_before_auto_chat`         | Hihingin ang user na piliin ang mode (submit_only/normal) bago bawat cycle   |
| `auto_chat`                    | Default mode: true = normal mode, false = submit_only mode                   |
| `submit_x_url`                 | I-enable/i-disable ang pagsusumite ng X/Twitter URLs sa regular channels     |
| `join_server`                  | I-enable/i-disable ang auto server joining                                   |
| `leave_server`                 | I-enable/i-disable ang auto server leaving                                   |
| `delete_message`               | I-enable/i-disable ang pag-delete ng mensahe pagkatapos mag-send             |
| `enable_replies`               | I-enable/i-disable ang pag-reply sa mga mensahe                              |
| `enable_reactions`             | I-enable/i-disable ang reactions sa mga mensahe                              |
| `reaction_chance`              | Probability (0–1) ng pag-react sa isang mensahe                              |
| `enable_ai_replies`            | I-enable/i-disable ang AI-generated replies                                  |
| `ai_reply_chance`              | Probability (0–1) ng paggamit ng AI para mag-reply                           |
| `ai_providers.*`               | API keys (arrays) para sa AI providers (Groq, Gemini, Poe, OpenRouter, Grok) |
| `image_generation_providers.*` | API keys (arrays) para sa Image AI providers (Freepik)                       |
| `voice_chat.enabled`           | I-enable/i-disable ang voice channel connection                              |
| `voice_chat.server_id`         | Guild ID para sa voice channel                                               |
| `voice_chat.channel_id`        | Voice channel ID na sasamahan                                                |
| `voice_chat.user_id`           | Iyong user ID para sa voice connection                                       |

---

### 🧾 Halimbawa `configs.json`

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

Sinusuportahan ng bot ang **maramihang API keys** para sa bawat provider. Random itong pipili ng isang key mula sa array para sa bawat request:

```json
"ai_providers": {
  "groq": ["key1", "key2", "key3"],
  "gemini": ["key1", "key2"]
}
```

Ito ay tumutulong sa:

* **Load balancing** sa pagitan ng maraming API accounts
* **Rate limit management** sa pamamagitan ng pag-distribute ng requests
* **Reliability** — kung pumalya ang isang key, may iba pang susubukan

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

**Tandaan:** Ang Grok API ay gumagamit ng OpenAI-compatible format. Kuhanin ang API key mula sa X.AI console.

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
<summary><strong>🗂️ Estruktura ng servers.json (DETALYADO)</strong></summary>

Ang `servers.json` file ang **puso ng iyong bot configuration**. Dito dine-define kung aling mga server ang i-iinterak ng bot at anong mga aksyon ang gagawin sa bawat channel.

---

## 📚 Pangunahing Estruktura

Ang file ay dapat isang **JSON array** na naglalaman ng mga server objects. Bawat server ay kumakatawan sa isang Discord server na gusto mong i-process ng bot.

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

## 🔑 Pagpapaliwanag ng Mga Field

### 1️⃣ **`name`** (String - Required)

* **Ano ito:** Pangalan na magagamit mo lang para kilalanin ang server
* **Halimbawa:** `"Curious"`, `"My Gaming Server"`, `"Crypto Community"`
* **Layunin:** Para madaling makita sa logs at config

### 2️⃣ **`guild_id`** (String - Required)

* **Ano ito:** Unique ID ng Discord server
* **Paano kunin:** [Sundan ang gabay](https://t.me/KeoAirDropFreeNee/1676)
* **Halimbawa:** `"1417067849926705235"`
* **Layunin:** Ginagamit kapag iiwan ang server (leave) kapag naka-`leave_server: true`

### 3️⃣ **`invite_id`** (String - Required)

* **Ano ito:** Invite code para sumali sa server
* **Halimbawa:** `"altiuslabs"` (mula sa discord.gg/altiuslabs)
* **Special values:**

  * `""` (empty string) - Huwag sumali sa server na ito
  * `"none"` - Huwag sumali
  * `"unknown"` - Huwag sumali
* **Layunin:** Ginagamit para sumali kapag `join_server: true`

### 4️⃣ **`enabled`** (Boolean - Required)

* **Ano ito:** Kontrol kung ipoproseso ng bot ang server na ito
* **Values:**

  * `true` - Ipoproseso (magpapadala ng mensahe, sumali, atbp.)
  * `false` - Lilibangin ng bot (hindi ipo-process)
* **Layunin:** Para pansamantalang i-disable ang server nang hindi binubura ang config

### 5️⃣ **`channels`** (Object - Required)

Dito dine-define kung ano ang gagawin ng bot sa bawat channel. May **apat** na kategorya:

---

## 🗨️ Mga Uri ng Channel

### 🔗 **`submit_chat`** - X/Twitter Post Submissions (BAGONG TAMA)

**Layunin:** Naka-dedicate para sa pagsusumite ng X/Twitter post links na may custom delays.

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

* `message` (String): Ang X/Twitter URL na isusubmit
* `delay` (Array): [min, max] cooldown sa segundo bago makapag-post ulit sa channel na ito
* `enabled` (Boolean, Optional): `false` para i-disable ang channel nang hindi binubura

**Halimbawa:**

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

**Pag-andar:**

* Pino-proseso lang ang mga channel na ito sa **submit-only mode** o **normal mode**
* Bawat channel ay may sariling cooldown timer na sinusubaybayan
* Ipu-post ang URLs eksakto kung ano ang nakalagay
* Kung `submit_x_url: false` sa configs, nilalaktawan ang X/Twitter URLs sa regular channels

---

### 📝 **`raw_chat`** - Text Messages

Magpadala ng regular na text messages sa channels.

**Simple Format:**

```json
"raw_chat": {
  "CHANNEL_ID": "MESSAGE_TO_SEND"
}
```

**Advanced Format na may Options:**

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

* `"__random_message"` - Gagamit ang bot ng AI o random message mula sa messages.yaml
* `"[AI] Your instruction"` - Gagamit ang bot ng AI base sa instruction mo
* Anumang text - Ipapa-send eksakto ang text (eg. `"gm"`, `"Hello!"`)

**Halimbawa:**

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

**Ano ang nangyayari:**

* Sa channel `1417068171243815002`: Gagamit ang bot ng AI na may instruction na "Respond to random messages"
* Sa channel `1417084328504197250`: Magpapadala ng "gm" kada 6000-12000 segundo
* Sa channel `9876543210987654321`: Magpapadala ng random AI-generated message

---

### 🤖 **`command_chat`** - Bot Commands

Magpadala ng slash commands o bot commands sa channels.

**Format:**

```json
"command_chat": {
  "CHANNEL_ID": {
    "command": "COMMAND_TO_EXECUTE",
    "delay": [60, 120]
  }
}
```

**Halimbawa:**

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

Gumawa at magpadala ng AI images sa channels gamit ang Freepik API (na may Pollinations.ai fallback).

**Format:**

```json
"image_chat": {
  "CHANNEL_ID": {
    "prompt": "IMAGE_GENERATION_PROMPT",
    "delay": [60, 120]
  }
}
```

**Halimbawa:**

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

* Dapat may `freepik` API key sa `configs.json`
* Kung pumalya ang Freepik o walang API key, awtomatikong gagamitin ng bot ang Pollinations.ai (libre)

---

## 📋 Kumpletong Halimbawa

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

Gumagamit ang bot ng **smart cooldown system** para maiwasan ang spam at rate limits:

### 📊 Delay Priority (mula sa pinakamataas hanggang pinakamababa):

1. **Channel-specific delay** (sa servers.json)

   ```json
   "1234567890": {
     "message": "gm",
     "delay": [300, 600]  ← Ito ang mauuna
   }
   ```

2. **Global delay_each_chat** (sa configs.json)

   ```json
   "delay_each_chat": [10, 15]  ← Ginagamit kung walang channel delay
   ```

### 🔄 Paano ito gumagana:

* Bawat channel ay may sariling **independent cooldown timer**
* Nagsisimula ang timer pagkatapos ng **successful message send**
* Sine-check ng bot kung pasado na ang cooldown bago mag-send muli
* Kung active pa ang cooldown, lilibangin ng bot ang channel at ilolog ang natitirang oras
* Ang cooldowns ay **persistent** at sinusubaybayan sa `chat-timestamps.json`

### 💡 Tips:

* Gumamit ng mas mahahabang delay (3600-7200s) para sa low-activity channels
* Gumamit ng mas maikling delay (60-300s) para sa high-engagement channels
* Ang submit channels kadalasang gumagamit ng 6000-12000s delays
* Ang image generation dapat may mas mahahabang delays (7200-10000s) dahil sa API cost

---

## 💡 Tips & Best Practices

### ✅ Gawin:

* Gumamit ng descriptive names para madaling makilala ang servers
* I-set `enabled: false` para pansamantalang i-disable ang server nang hindi binubura ang config
* I-set `enabled: false` sa indibidwal na channels para i-disable ang mga ito
* Gumamit ng channel-specific delays para sa mas mahusay na kontrol
* Gumamit ng `"[AI] instruction"` format para sa custom AI responses
* Gamitin ang `submit_chat` para sa X post links kaysa ilagay sa regular channels
* Subukan muna sa isang server bago magdagdag ng maraming servers
* Gumamit ng mas mahahabang delays para makatipid sa API costs

### ❌ Huwag:

* Huwag tanggalin ang server entries — gamitin ang `enabled: false` na lang
* Huwag kalimutan maglagay ng delays sa channels (may default pero mas magandang i-specify)
* Iwasan ang napaka-maikling delays (< 60s) para maiwasan ang rate limits
* Huwag ilagay ang channel IDs sa quotes sa loob ng objects (sila ay strings na)
* Huwag kalimutan ang mga kuwit sa pagitan ng objects sa JSON
* Huwag gumamit ng invalid JSON syntax (gumamit ng JSON validator kung kinakailangan)

---

## 🔍 Pagkuha ng Channel IDs

1. I-on ang Developer Mode sa Discord (Settings → Advanced → Developer Mode)
2. Right-click sa anumang channel
3. Piliin ang "Copy Channel ID"
4. I-paste ang ID sa `servers.json`

[Visual Guide](https://t.me/KeoAirDropFreeNee/1676)

---

## 🐛 Troubleshooting

| Problema                     | Solusyon                                                                            |
| ---------------------------- | ----------------------------------------------------------------------------------- |
| Bot skips server             | Siguraduhin naka-`enabled: true` ang server                                         |
| Bot skips specific channel   | Siguraduhin hindi naka-`enabled: false` ang channel                                 |
| Bot doesn't join server      | I-check ang `invite_id` at naka-`join_server: true` sa configs                      |
| Bot doesn't send messages    | I-check ang channel IDs at naka-`auto_chat: true` sa configs                        |
| Messages sent too frequently | Magdagdag o dagdagan ang `delay` values sa channel configs                          |
| Images not generating        | I-check ang Freepik API key sa `configs.json` (o magfa-fallback sa Pollinations.ai) |
| Submit channels not working  | Siguraduhing nasa tamang mode (submit-only o normal)                                |
| JSON syntax error            | Gumamit ng JSON validator tulad ng jsonlint.com                                     |

</details>

---

<details>
<summary><strong>▶️ Paano patakbuhin</strong></summary>

### 📌 Patakbuhin ang bot

**Basic usage:**

```bash
node index_meomundep.js
```

**Gamit ang CLI flags:**

```bash
# Pilitin ang submit-only mode (tanging submit_chat lang)
node index_meomundep.js --submit
node index_meomundep.js -s

# Pilitin ang normal mode (full flow: join, chat, leave)
node index_meomundep.js --chat
node index_meomundep.js -c

# Ipakita ang help
node index_meomundep.js --help
node index_meomundep.js -h
```

### 🎮 Mga Operation Modes

Sinusuportahan ng bot ang **dalawang mode**:

#### 1️⃣ **Normal Mode** (Full Flow)

* Sumusali sa servers (kung `join_server: true`)
* Pinoproseso ang LAHAT ng channel types: `submit_chat`, `raw_chat`, `command_chat`, `image_chat`
* Umaalis sa servers (kung `leave_server: true`)
* Gumagamit ng AI para sa message generation

**I-activate gamit:**

* CLI: `node index_meomundep.js --chat`
* Config: `"auto_chat": true` (default)
* Runtime: Piliin ang option `2` kapag na-prompt (kung `ask_before_auto_chat: true`)

#### 2️⃣ **Submit-Only Mode**

* Hindi nagsasagawa ng server join/leave
* **Tanging** pinoproseso ang `submit_chat` channels
* Nilalaktawan ang `raw_chat`, `command_chat`, `image_chat`
* Mainam para sa dedikadong X/Twitter submission tasks

**I-activate gamit:**

* CLI: `node index_meomundep.js --submit`
* Config: `"auto_chat": false`
* Runtime: Piliin ang option `1` kapag na-prompt (kung `ask_before_auto_chat: true`)

### 🔄 Mode Priority (pinakamataas hanggang pinakamababa):

1. **CLI flags** (--submit o --chat)
2. **User prompt** (kung `ask_before_auto_chat: true`)
3. **Config setting** (`auto_chat` value)

### 📊 Interactive Management

May kasama itong built-in management system na maa-access via:

```bash
node index_meomundep.js
# Pagkatapos piliin ang "Server Manager" mula sa main menu
```

**Mga Management Features:**

🖥️ **Main Menu:**

1. Server Management (enable/disable servers)
2. Delay Management (add/show delays)
3. Submit Management (X post links)
4. Error Channels Management
5. Exit

📡 **Server Management:**

* Enable/disable lahat ng servers sabay
* Enable/disable specific servers
* Enable LAMANG isang server (i-disable ang iba)
* Ipakita ang server status overview

⏱️ **Delay Management:**

* Magdagdag ng default delays sa mga channel na walang delay
* Magdagdag ng custom delays
* Ipakita ang delay statistics
* Ilista ang unique delay values na ginagamit

🔗 **Submit Management:**

* Ilista lahat ng submit channels
* Magdagdag ng bagong submit channel
* I-edit ang submit URLs
* Alisin ang submit channels
* Ipakita ang submit statistics

🚫 **Error Channel Management:**

* Tingnan lahat ng error channels ayon sa token
* Tanggalin ang specific error channels
* Tanggalin ang buong token entries
* Linisin ang failed channel records

### ⬆️ I-update ang bot

```bash
git pull
npm install
```

---

### 🔍 Paano ito gumagana (summary)

1. **Binabasa ang configuration** mula sa `configs.json`
2. **Tsin-check ang CLI flags** (--submit, --chat, --help)
3. **Naga-prompt sa user** (kung `ask_before_auto_chat: true` at walang CLI flag)
4. **Tinatalaga ang mode** (submit-only o normal)
5. **Naglo-log in** gamit ang mga token mula sa `tokens.txt`
6. **Ina-apply ang proxy** per account (kung meron sa `proxies.txt`)
7. **Pinoproseso ang bawat server** mula sa `servers.json`:

   * ✅ Tsin-check kung `enabled: true` ang server
   * ✅ Tsin-check kung ang channel ay hindi naka-`enabled: false`
   * ✅ Tsin-check ang cooldown timer bago mag-send
   * **Sa normal mode:**

     * ➕ Sumusali sa server (gamit ang `invite_id`) kung `join_server: true`
     * 💬 Pinoproseso lahat ng channel types
     * ➖ Umaalis sa server (gamit ang `guild_id`) kung `leave_server: true`
   * **Sa submit-only mode:**

     * 🔗 Tanging `submit_chat` channels lang ang pinoproseso
     * ⏭️ Nilalaktawan ang join/leave at iba pang channel types
8. **Log bawat event** na may timestamps at color-coded output
9. **Sinisave ang timestamps** para maiwasan ang duplicate posts habang nasa cooldown
10. **Naghihintay para sa delays** sa pagitan ng mga aksyon
11. **Uuulit awtomatiko** pagkatapos ng `time_to_restart_all_accounts` seconds

---

### 📝 Logs at Timestamps

* Bawat log entry ay may timestamp
* Ang format ng timestamp ay sumusunod sa `chat_language` setting
* Color-coded logs para madaling mabasa:

  * 🟢 Green - Success
  * 🔴 Red - Error
  * 🟡 Yellow - Warning
  * 🔵 Blue - Info
  * 🟣 Purple - Processing
  * 🔶 Orange - AI/Provider actions

---

### 🎙️ Voice Channel Support

Kayang sumali at panatilihin ng bot ang presence sa voice channels:

```json
"voice_chat": {
  "enabled": true,
  "server_id": "1234567890123456789",
  "channel_id": "9876543210987654321",
  "user_id": "1111222233334444555"
}
```

**Mga Tampok:**

* Awtomatikong koneksyon sa voice channels
* Heartbeat mechanism para mapanatili ang connection
* Awtomatikong reconnection kapag disconnected (hanggang 5 attempts na may exponential backoff)
* Suporta sa WebRTC protocol
* Malinis na disconnect handling

**Requirements:**

* Dapat may permiso ang account para sumali sa voice channel
* Dapat accessible ng token ang server
* Ang `user_id` ay dapat tumugma sa token's user ID

---

### ⚠️ Mahahalagang Tala

* ✅ Siguraduhin valid at may tamang permissions ang lahat ng tokens
* 🌐 Gumamit ng proxies para maiwasan ang rate limits o bans (inirerekomenda: isang proxy kada token)
* ⏱️ I-tune nang maayos ang delay settings kapag maraming accounts
* 📊 I-monitor ang logs para sa errors at i-adjust ang `servers.json` kung kinakailangan
* 🔒 Panatilihing pribado at secure ang iyong tokens at API keys
* 🚫 Huwag i-share ang `tokens.txt` file sa iba
* 💾 Awtomatikong sine-save ng bot ang errors sa `error-channels.json` para hindi muling subukan ang failed channels
* 🔄 Gamitin ang submit-only mode para sa dedikadong URL submission tasks
* 🎯 Mag-set ng angkop na cooldowns kada channel para maiwasang ma-flag bilang spam
* 🤖 Sinusubukan ang AI providers nang sunod-sunod hanggang may magtagumpay
* 📸 Automatic na magfa-fallback ang image generation sa free service kung pumalya ang Freepik
* ⚡ CLI flags ay may pinakamataas na priority at mag-ooverride ng ibang settings

</details>

---

## 📞 Contact & Support

* 🛒 **Support Me:** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **Contact:** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **Group:** [Join Group](https://t.me/KeoAirDropFreeNe)
* 📢 **Channel:** [Visit Channel](https://t.me/KeoAirDropFreeNee)

---

⚠️ **Disclaimer**

Ang proyektong ito ay ginawa bilang isang **personal na educational exercise**.
Ito ay **hindi opisyal na produkto**, website, o serbisyo ng anumang kumpanyang nabanggit sa repository.
Ang gumawa ay **hindi konektado, inendorso, o affiliated** sa anumang nabanggit na kumpanya o brand.

Ang code ay ibinibigay **"as is"** nang walang anumang warranty o garantiya.
Ang ilang bahagi ng source ay sinadyang **obfuscated** para protektahan ang personal research at custom implementation techniques.

Gamitin ang proyektong ito nang responsable at sa sariling panganib.
**Hindi pinapayagan** ang redistribution, resale, o commercial use ng anumang bahagi ng code—original man o nabago.

---

<p align="center"><a href="#-discord-automation-bot-ni-meomundep">⬆️ Bumalik sa taas</a></p>
