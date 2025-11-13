# 🤖 Discord Automatisierungs-Bot von @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 Übersicht

Dieser Bot automatisiert **Discord**-Interaktionen – einschließlich Nachrichten senden, Server beitreten/verlassen und Nachrichten verwalten – unter Verwendung **mehrerer Konten** mit **Proxy-Unterstützung**.

---

## 🚀 Funktionen

* 💬 **Automatische Nachrichten** — Sendet Nachrichten in festgelegte Kanäle
* ➕ **Automatischer Serverbeitritt** — Tritt Servern über Einladungslinks bei
* ➖ **Automatisches Verlassen von Servern** — Verlässt festgelegte Server automatisch
* 🌍 **Proxy-Unterstützung** — Unterstützt HTTP(S) und SOCKS5-Proxys
* 🗑️ **Automatische Nachrichtenlöschung** — Löscht gesendete Nachrichten nach einer einstellbaren Zeit
* 🌐 **Mehrsprachige Unterstützung** — Wähle die Sprache für automatische Nachrichten
* 📕 **Fehlerprotokollierung** — Speichert IDs von Servern oder Kanälen mit Fehlern
* 🤖 **KI-Antworten** — Generiert natürliche Antworten über KI-Anbieter (Groq, OpenRouter, Gemini, Poe)
* 🖼️ **Bildgenerierung** — Generiert und sendet KI-Bilder über die Freepik API
* 🎛️ **Serversteuerung** — Aktiviere/deaktiviere einzelne Server ohne Löschen der Konfiguration

---

<details>
<summary><strong>🛠️ Installation</strong></summary>

### 📋 Voraussetzungen

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 Download: [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 Schritte

1. **Repository klonen:**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **Abhängigkeiten installieren:**

   ```bash
   npm install
   ```

   ⚠️ Falls auf Windows ein *Execution Policy*-Fehler auftritt:

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   Danach erneut ausführen:

   ```bash
   npm install
   ```

3. **Bot konfigurieren:**
   Bearbeite die Datei `configs.json` nach deinen Bedürfnissen.

4. **Eingabedateien vorbereiten:**

   * 📄 `tokens.txt` — Discord-Tokens (ein Token pro Zeile)
   * 🆔 `servers.json` — Serverdetails einschließlich Guild-ID, Einladungscode und Kanalkonfiguration
   * 🌐 `proxies.txt` — Proxys (optional)
   * 📜 `messages.yaml` — Nachrichten (mehrsprachig)
   * 🗂️ `error_channels.json` — Speichert fehlerhafte Kanäle/Server (automatisch erstellt/aktualisiert)

📌 Nützliche Links:

* 🔑 Token erhalten: [Hier](https://t.me/KeoAirDropFreeNee/1570)
* 💬 Chat-ID erhalten: [Hier](https://t.me/KeoAirDropFreeNee/1569)
* 📡 Channel-/Server-ID erhalten: [Hier](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ Konfiguration (configs.json)</strong></summary>

| ⚙️ Einstellung                 | 📘 Beschreibung                                               |
| ------------------------------ | ------------------------------------------------------------- |
| `maxAccountsAtOnce`            | Anzahl der gleichzeitig aktiven Konten                        |
| `delayBetweenAccounts`         | Verzögerung (in Sekunden) zwischen jedem Konto                |
| `delayEachChannel`             | Verzögerung zwischen Nachrichten in verschiedenen Kanälen     |
| `delayEachChat`                | Verzögerung zwischen Chats                                    |
| `timeToRestartAllAccounts`     | Zeit (in Sekunden) bis alle Konten neu gestartet werden       |
| `chat_language`                | Sprache für automatisch generierte Nachrichten                |
| `auto_chat`                    | Automatisches Chatten aktivieren/deaktivieren                 |
| `join_server`                  | Automatischen Serverbeitritt aktivieren/deaktivieren          |
| `leave_server`                 | Automatisches Verlassen aktivieren/deaktivieren               |
| `delete_message`               | Nachrichten nach dem Senden löschen                           |
| `enable_replies`               | Antworten aktivieren/deaktivieren                             |
| `enable_reactions`             | Reaktionen aktivieren/deaktivieren                            |
| `reaction_chance`              | Wahrscheinlichkeit (0–1) für eine Reaktion                    |
| `enable_ai_replies`            | KI-generierte Antworten aktivieren                            |
| `ai_providers.*`               | API-Schlüssel für KI-Anbieter (Groq, Gemini, Poe, OpenRouter) |
| `image_generation_providers.*` | API-Schlüssel für Bildgeneratoren (Freepik)                   |

---

### 🧾 Beispiel `configs.json`

```json
{
  "maxAccountsAtOnce": 1,
  "delayBetweenAccounts": 17,
  "delayEachChat": [11, 15],
  "delayEachChannel": [17, 19],
  "timeToRestartAllAccounts": 360,

  "chat_language": "de",

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
<summary><strong>🔑 API-Schlüssel erstellen</strong></summary>

* **GROQ Key:** [Erstellen](https://console.groq.com/keys)
* **GEMINI Key:** [Erstellen](https://aistudio.google.com/app/apikey)
* **OPENROUTER Key:** [Erstellen](https://openrouter.ai/settings/keys)
* **POE Key:** [Erstellen](https://poe.com/api_key)
* **FREEPIK Key:** [Erstellen](https://api.freepik.com/v1/auth/create)

</details>

</details>

---

<details>
<summary><strong>🗂️ servers.json Struktur (ausführliche Anleitung)</strong></summary>

Die Datei `servers.json` ist das **Herzstück** der Bot-Konfiguration. Sie legt fest, welche Server verarbeitet werden und welche Aktionen in welchen Kanälen stattfinden.

---

## 📚 Grundstruktur

```json
[
  {
    "name": "Servername",
    "guild_id": "1234567890123456789",
    "invite_id": "inviteCode",
    "channels": { ... },
    "enabled": true
  }
]
```

---

## 🗨️ Kanaltypen

### 📝 **`raw_chat`** — Textnachrichten

```json
"raw_chat": {
  "CHANNEL_ID": "__random_message"
}
```

* `"__random_message"` = zufällige oder KI-generierte Nachricht
* Text = sendet genau diesen Text

---

### 🤖 **`command_chat`** — Bot-Befehle

```json
"command_chat": {
  "CHANNEL_ID": "/claim daily"
}
```

Führt Slash- oder Textbefehle aus (z. B. `/rewards`).

---

### 🖼️ **`image_chat`** — KI-Bilder

```json
"image_chat": {
  "CHANNEL_ID": "Cyberpunk-Stadt bei Nacht"
}
```

Generiert Bilder über Freepik oder Pollinations.ai.

---

## 📋 Beispiel

```json
[
  {
    "name": "Curious Community",
    "guild_id": "1417067849926705235",
    "invite_id": "curious",
    "channels": {
      "raw_chat": {
        "1417068171243815002": "__random_message",
        "1417084328504197250": "gm"
      },
      "command_chat": {
        "1417068171243815003": "/daily claim"
      },
      "image_chat": {
        "1435601397591703675": "Curious Browser Logo"
      }
    },
    "enabled": true
  }
]
```

---

## ⚙️ Ablauf des Bots

1. Liest `servers.json`
2. Prüft `enabled`
3. Tritt Servern bei (`invite_id`), falls aktiviert
4. Sendet Nachrichten/Befehle/Bilder
5. Verlässt Server, falls aktiviert
6. Wiederholt Prozess automatisch

---

## 💡 Tipps

✅ **Tun:**

* Verwende klare Namen
* Setze `enabled: false`, statt zu löschen
* Nutze `"__random_message"` für natürliche Chats

❌ **Nicht tun:**

* JSON-Fehler verursachen
* Servereinträge löschen

---

## 🐛 Fehlerbehebung

| Problem                  | Lösung                                      |
| ------------------------ | ------------------------------------------- |
| Server wird übersprungen | `enabled: true` prüfen                      |
| Kein Serverbeitritt      | `invite_id` prüfen                          |
| Keine Nachricht          | `auto_chat: true` prüfen                    |
| Keine Bilder             | Freepik API Key prüfen                      |
| JSON-Fehler              | [jsonlint.com](https://jsonlint.com) nutzen |

</details>

---

<details>
<summary><strong>▶️ Verwendung</strong></summary>

### 📌 Bot starten

```bash
node index_meomundep.js
```

### ⬆️ Bot aktualisieren

```bash
git pull
```

---

### 🔍 Funktionsweise

1. Liest Konfiguration
2. Meldet sich mit Tokens an
3. Wendet Proxy (falls vorhanden) an
4. Arbeitet Serverliste ab
5. Protokolliert alles farbig mit Zeitstempel
6. Wiederholt Zyklus nach festgelegter Zeit

---

### 📝 Protokollfarben

* 🟢 Erfolg
* 🔴 Fehler
* 🟡 Warnung
* 🔵 Info
* 🟣 Aktivität

---

### ⚠️ Hinweise

* Gültige Tokens sicherstellen
* Proxys verwenden, um Sperren zu vermeiden
* Verzögerungen realistisch einstellen
* Tokens & API-Keys niemals teilen

</details>

---

## 📞 Kontakt & Support

* 🛒 **Unterstütze mich:** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **Kontakt:** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **Gruppe:** [Beitreten](https://t.me/KeoAirDropFreeNe)
* 📢 **Kanal:** [Ansehen](https://t.me/KeoAirDropFreeNee)

---

## 📜 Lizenz

❗ **Kopieren oder stehlen verboten.**
💀 **Benutzung auf eigenes Risiko.**
🚫 **Keine sinnlosen DMs senden.**

---

<p align="center"><a href="#-discord-automatisierungs-bot-von-meomundep">⬆️ Zurück nach oben</a></p>
