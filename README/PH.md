# 🤖 Discord Automation Bot by @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 Pangkalahatang-ideya

Ang bot na ito ay awtomatikong gumagawa ng mga aksyon sa **Discord** tulad ng pagpapadala ng mensahe, pag-join o pag-leave ng mga server, at pakikipag-ugnayan gamit ang **maramihang mga account** na may **proxy support**.

---

## 🚀 Mga Tampok

* 💬 **Auto Messaging** — Awtomatikong nagpapadala ng mensahe sa mga partikular na channel
* ➕ **Auto Join Servers** — Awtomatikong sumasali sa mga server gamit ang invite link
* ➖ **Auto Leave Servers** — Awtomatikong lumalabas sa mga partikular na server
* 🌍 **Proxy Support** — Suporta para sa HTTP(S) at SOCKS5 proxies
* 🗑️ **Auto Message Deletion** — Awtomatikong binubura ang mga mensahe matapos ng ilang segundo
* 🌐 **Multi-language Support** — Pwedeng pumili ng lengguwahe ng mensahe
* 📕 **Error Logging** — Awtomatikong nagtatala ng mga server o channel na nagka-error
* 🤖 **AI Replies** — Gumagawa ng natural na tugon gamit ang mga AI provider (Groq, OpenRouter, Gemini, Poe)
* 🖼️ **Image Generation** — Gumagawa at nagpapadala ng AI-generated images gamit ang Freepik API
* 🎛️ **Server Control** — Maaaring i-enable o i-disable ang mga partikular na server nang hindi binubura ang configuration

---

<details>
<summary><strong>🛠️ Pag-install</strong></summary>

### 📋 Mga Kailangan

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 I-download: [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 Mga Hakbang

1. **I-clone ang repository:**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **I-install ang mga dependencies:**

   ```bash
   npm install
   ```

   ⚠️ Kung may lumabas na error tungkol sa *Execution Policy* sa Windows:

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   Pagkatapos ay ulitin:

   ```bash
   npm install
   ```

3. **I-configure ang bot:**
   Buksan ang `configs.json` at i-edit ayon sa iyong pangangailangan.

4. **Ihanda ang mga input file:**

   * 📄 `tokens.txt` — Mga Discord token (isang token bawat linya)
   * 🆔 `servers.json` — Mga detalye ng server (guild IDs, invite codes, atbp.)
   * 🌐 `proxies.txt` — Mga proxy (opsyonal)
   * 📜 `messages.yaml` — Mga mensahe sa iba’t ibang lengguwahe
   * 🗂️ `error_channels.json` — Awtomatikong nag-iimbak ng mga error

📌 Mga kapaki-pakinabang na link:

* 🔑 Kunin ang mga token: [Dito](https://t.me/KeoAirDropFreeNee/1570)
* 💬 Kunin ang chat ID: [Dito](https://t.me/KeoAirDropFreeNee/1569)
* 📡 Kunin ang channel/server ID: [Dito](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ Configuration (configs.json)</strong></summary>

| ⚙️ Setting                     | 📘 Kahulugan                                                 |
| ------------------------------ | ------------------------------------------------------------ |
| `maxAccountsAtOnce`            | Bilang ng mga account na tatakbo nang sabay-sabay            |
| `delayBetweenAccounts`         | Delay (segundo) sa pagitan ng bawat account                  |
| `delayEachChannel`             | Delay sa pagitan ng mga mensahe sa iba’t ibang channel       |
| `delayEachChat`                | Delay sa pagitan ng mga mensahe sa iba’t ibang chat          |
| `timeToRestartAllAccounts`     | Oras (segundo) bago i-restart ang lahat ng account           |
| `chat_language`                | Lengguwaheng ginagamit para sa mga auto-generated na mensahe |
| `auto_chat`                    | Paganahin/patayin ang auto messaging                         |
| `join_server`                  | Paganahin/patayin ang auto join server                       |
| `leave_server`                 | Paganahin/patayin ang auto leave server                      |
| `delete_message`               | Paganahin/patayin ang auto-delete ng mensahe                 |
| `enable_replies`               | Paganahin ang auto replies                                   |
| `enable_reactions`             | Paganahin ang auto reactions                                 |
| `reaction_chance`              | Tsansa (0–1) na mag-react sa mensahe                         |
| `enable_ai_replies`            | Paganahin ang AI replies                                     |
| `ai_providers.*`               | Mga API key para sa AI provider                              |
| `image_generation_providers.*` | Mga API key para sa Image AI provider                        |

---

### 🧾 Halimbawa ng `configs.json`

```json
{
  "maxAccountsAtOnce": 1,
  "delayBetweenAccounts": 17,
  "delayEachChat": [11, 15],
  "delayEachChannel": [17, 19],
  "timeToRestartAllAccounts": 360,
  "chat_language": "tl",
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

</details>

---

<details>
<summary><strong>🗂️ Estruktura ng servers.json</strong></summary>

Ang `servers.json` ang **puso** ng configuration ng bot. Dito tinutukoy kung aling mga server at channel ang aaksyunan ng bot.

---

### 📝 Halimbawa

```json
[
  {
    "name": "Curious Community",
    "guild_id": "1417067849926705235",
    "invite_id": "curious",
    "channels": {
      "raw_chat": {
        "1417068171243815002": "__random_message",
        "1417084328504197250": "Magandang araw!"
      },
      "command_chat": {
        "1417068171243815003": "/daily claim"
      },
      "image_chat": {
        "1435601397591703675": "Curious browser logo"
      }
    },
    "enabled": true
  }
]
```

</details>

---

<details>
<summary><strong>▶️ Paggamit</strong></summary>

### 📌 Patakbuhin ang bot

```bash
node index_meomundep.js
```

### ⬆️ I-update ang bot

```bash
git pull
```

---

### 🔍 Paano ito gumagana

1. Binabasa ang configuration mula sa `configs.json`
2. Nagla-login gamit ang mga token mula sa `tokens.txt`
3. Ina-apply ang proxy sa bawat account (kung mayroon)
4. Pinoproseso ang mga server ayon sa `servers.json`
5. Awtomatikong nagpapadala ng mga mensahe, command, o larawan
6. Lumalabas sa server kung naka-enable ang `leave_server`
7. Awtomatikong inuulit matapos ang tinakdang oras (`timeToRestartAllAccounts`)

</details>

---

## 📞 Suporta at Kontak

* 🛒 **Support Me:** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **Kontak:** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **Grupo:** [Sumali Dito](https://t.me/KeoAirDropFreeNe)
* 📢 **Channel:** [Bisitahin Dito](https://t.me/KeoAirDropFreeNee)

---

## 📜 Lisensya

❗ **Huwag kopyahin o nakawin ang proyektong ito.**
💀 **Gamitin sa sariling responsibilidad.**
🚫 **Huwag magpadala ng mga walang kwentang DM.**

---

<p align="center"><a href="#-discord-automation-bot-by-meomundep">⬆️ Bumalik sa itaas</a></p>
