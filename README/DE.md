# 🤖 Discord-Automation-Bot von @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 Übersicht

Dieser Bot automatisiert Interaktionen auf **Discord**, einschließlich Nachrichten senden, Server beitreten/verlassen und Nachrichtenverarbeitung mit **mehreren Accounts** und **Proxy-Unterstützung**.

---

## 🚀 Funktionen

* 💬 **Automatische Nachrichten** — Sendet Nachrichten an angegebene Kanäle mit anpassbaren Verzögerungen
* 🔗 **Submit-Channel-Verwaltung** — Spezielles System zum Einreichen von X/Twitter-Posts
* ➕ **Automatisches Beitreten zu Servern** — Tritt Servern über Einladungslinks bei
* ➖ **Automatisches Verlassen von Servern** — Verlässt angegebene Server
* 🌍 **Proxy-Unterstützung** — Unterstützt HTTP(S) und SOCKS5 Proxies
* 🗑️ **Automatisches Löschen von Nachrichten** — Löscht gesendete Nachrichten nach konfigurierbarer Verzögerung
* 🌐 **Mehrsprachige Unterstützung** — Konfigurierbare Nachrichtensprache
* 📕 **Fehlerprotokollierung** — Speichert IDs von Servern oder Kanälen, bei denen Fehler auftraten
* 🤖 **KI-Antworten** — Generiert lockere Antworten mit KI-Anbietern (Groq, OpenRouter, Gemini, Poe, Grok)
* 🖼️ **Bildgenerierung** — Erzeugt und sendet KI-Bilder in Kanäle über Freepik API (mit Pollinations.ai Fallback)
* 🎛️ **Serversteuerung** — Server einzeln aktivieren/deaktivieren ohne Einträge zu löschen
* ⚙️ **Dual-Modus Betrieb** — Normalmodus (voller Ablauf) oder Submit-only Modus
* 🎮 **Voice-Channel-Unterstützung** — Tritt Sprachkanälen bei und bleibt dort präsent
* 📊 **Interaktive Verwaltung** — Eingebautes CLI-Menü für Server-, Verzögerungs- und Fehlerverwaltung
* 🚀 **CLI-Flags** — Überschreibt Konfigurationseinstellungen mit Kommandozeilenargumenten

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

   ⚠️ Wenn auf Windows ein *Execution Policy* Fehler erscheint:

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   Dann erneut ausführen:

   ```bash
   npm install
   ```

3. **Bot konfigurieren:**
   Bearbeite die Datei `configs.json` nach deinen Vorlieben.

4. **Eingabedateien vorbereiten:**

   * 📄 `tokens.txt` — Discord-Tokens (jeweils eine pro Zeile)
   * 🆔 `servers.json` — Serverdetails inklusive Guild-IDs, Invite-Codes und Kanal-Konfigurationen (siehe detaillierte Erklärung weiter unten)
   * 🌐 `proxies.txt` — Proxies (optional, eine pro Token)
   * 📜 `messages.yaml` — Nachrichten (mehrsprachig)
   * 🗂️ `error-channels.json` — Speichert fehlgeschlagene Kanäle/Server (wird automatisch erzeugt/aktualisiert)

📌 Nützliche Links:

* 🔑 Tokens bekommen: [Hier](https://t.me/KeoAirDropFreeNee/1570)
* 💬 Chat-ID bekommen: [Hier](https://t.me/KeoAirDropFreeNee/1569)
* 📡 Channel/Server ID bekommen: [Hier](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ Konfiguration (configs.json)</strong></summary>

| ⚙️ Einstellung                 | 📘 Beschreibung                                                                   |
| ------------------------------ | --------------------------------------------------------------------------------- |
| `max_accounts_at_once`         | Anzahl Accounts, die gleichzeitig laufen                                          |
| `delay_between_accounts`       | Verzögerung (in Sekunden) zwischen dem Start jedes Accounts                       |
| `delay_each_channel`           | [min, max] Verzögerungsbereich (in Sekunden) zwischen verschiedenen Kanälen       |
| `delay_each_chat`              | [min, max] Verzögerungsbereich (in Sekunden) zwischen Nachrichten im selben Kanal |
| `time_to_restart_all_accounts` | Zeit (in Sekunden), bevor alle Accounts neu gestartet werden                      |
| `chat_language`                | Sprache für automatisch generierte Nachrichten                                    |
| `ask_before_auto_chat`         | Fragt den Benutzer vor jedem Zyklus nach dem Modus (submit_only/normal)           |
| `auto_chat`                    | Standardmodus: true = normaler Modus, false = submit-only Modus                   |
| `submit_x_url`                 | Aktiviert/Deaktiviert das Einreichen von X/Twitter-URLs in regulären Kanälen      |
| `join_server`                  | Aktiviert/Deaktiviert automatisches Beitreten zu Servern                          |
| `leave_server`                 | Aktiviert/Deaktiviert automatisches Verlassen von Servern                         |
| `delete_message`               | Aktiviert/Deaktiviert das Löschen von Nachrichten nach dem Senden                 |
| `enable_replies`               | Aktiviert/Deaktiviert Antworten auf Nachrichten                                   |
| `enable_reactions`             | Aktiviert/Deaktiviert Reaktionen auf Nachrichten                                  |
| `reaction_chance`              | Wahrscheinlichkeit (0–1) zu reagieren                                             |
| `enable_ai_replies`            | Aktiviert/Deaktiviert KI-generierte Antworten                                     |
| `ai_reply_chance`              | Wahrscheinlichkeit (0–1), KI zum Antworten zu verwenden                           |
| `ai_providers.*`               | API-Keys (Arrays) für KI-Anbieter (Groq, Gemini, Poe, OpenRouter, Grok)           |
| `image_generation_providers.*` | API-Keys (Arrays) für Bild-KI-Anbieter (Freepik)                                  |
| `voice_chat.enabled`           | Aktiviert/Deaktiviert Sprachkanalverbindung                                       |
| `voice_chat.server_id`         | Guild-ID für den Sprachkanal                                                      |
| `voice_chat.channel_id`        | Sprachkanal-ID zum Beitreten                                                      |
| `voice_chat.user_id`           | Deine Benutzer-ID für die Sprachverbindung                                        |

---

### 🧾 Beispiel `configs.json`

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

### 🔑 Mehrere API-Keys

Der Bot unterstützt **mehrere API-Keys** pro Anbieter. Für jede Anfrage wird zufällig ein Key aus dem Array gewählt:

```json
"ai_providers": {
  "groq": ["key1", "key2", "key3"],
  "gemini": ["key1", "key2"]
}
```

Das hilft bei:

* **Lastverteilung** über mehrere API-Konten
* **Rate-Limit-Management** durch Verteilung der Anfragen
* **Zuverlässigkeit** — falls ein Key fehlschlägt, werden andere versucht

---

<details>
<summary><strong>🔑 GROQ API Key</strong></summary>

[Key erstellen](https://console.groq.com/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GROQ_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 GROK API Key</strong></summary>

[Key erstellen](https://console.x.ai/api-keys)

**Hinweis:** Grok API verwendet OpenAI-kompatible Formate. Hole deinen API-Key aus der X.AI Konsole.

</details>

<details>
<summary><strong>🔑 GEMINI API Key</strong></summary>

[Key erstellen](https://aistudio.google.com/app/apikey)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GEMINI_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 OPENROUTER API Key</strong></summary>

[Key erstellen](https://openrouter.ai/settings/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/OPENROUTER_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 POE API Key</strong></summary>

[Key erstellen](https://poe.com/api_key)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/POE_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 FREEPIK API Key</strong></summary>

[Key erstellen](https://api.freepik.com/v1/auth/create)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/FREEPIK_API_KEY.png?raw=true" width="600" />
</p>

</details>

</details>

---

<details>
<summary><strong>🗂️ Struktur von servers.json (Detaillierte Anleitung)</strong></summary>

Die Datei `servers.json` ist das **Herzstück** deiner Bot-Konfiguration. Sie definiert, mit welchen Servern der Bot interagiert und welche Aktionen in jedem Kanal ausgeführt werden.

---

## 📚 Grundstruktur

Die Datei sollte ein **JSON-Array** mit Server-Objekten enthalten. Jeder Server repräsentiert einen Discord-Server, mit dem der Bot interagieren soll.

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

## 🔑 Feld-Erklärungen

### 1️⃣ **`name`** (String - Erforderlich)

* **Was es ist:** Ein freundlicher Name für den Server (nur für deine Referenz)
* **Beispiel:** `"Curious"`, `"Mein Gaming-Server"`, `"Crypto Community"`
* **Zweck:** Hilft beim Identifizieren von Servern in Logs und Konfiguration

### 2️⃣ **`guild_id`** (String - Erforderlich)

* **Was es ist:** Die eindeutige ID des Discord-Servers
* **Wie man sie bekommt:** [Folge dieser Anleitung](https://t.me/KeoAirDropFreeNee/1676)
* **Beispiel:** `"1417067849926705235"`
* **Zweck:** Wird verwendet, um Server zu verlassen, wenn `leave_server: true` gesetzt ist

### 3️⃣ **`invite_id`** (String - Erforderlich)

* **Was es ist:** Der Invite-Code zum Beitreten des Servers
* **Beispiel:** `"altiuslabs"` (von discord.gg/altiuslabs)
* **Spezialwerte:**

  * `""` (leer) - Nicht diesem Server beitreten
  * `"none"` - Nicht beitreten
  * `"unknown"` - Nicht beitreten
* **Zweck:** Wird verwendet, um beizutreten, wenn `join_server: true` gesetzt ist

### 4️⃣ **`enabled`** (Boolean - Erforderlich)

* **Was es ist:** Steuert, ob der Bot diesen Server verarbeitet
* **Werte:**

  * `true` - Bot verarbeitet diesen Server (sendet Nachrichten, tritt bei, etc.)
  * `false` - Bot überspringt diesen Server komplett
* **Zweck:** Ermöglicht temporäres Deaktivieren ohne Löschen der Konfiguration

### 5️⃣ **`channels`** (Objekt - Erforderlich)

Hier definierst du, was der Bot in jedem Kanal tun soll. Es gibt **vier Kategorien**:

---

## 🗨️ Kanaltypen

### 🔗 **`submit_chat`** - X/Twitter Post-Einreichungen (NEU!)

**Zweck:** Dedizierter Kanaltyp zum Einreichen von X/Twitter-Post-Links mit anpassbaren Verzögerungen.

**Format:**

```json
"submit_chat": {
  "CHANNEL_ID": {
    "message": "https://x.com/yourpost",
    "delay": [6000, 12000]
  }
}
```

**Felder:**

* `message` (String): Die X/Twitter-URL, die eingereicht werden soll
* `delay` (Array): [min, max] Cooldown in Sekunden bevor erneut in diesem Kanal gepostet werden kann
* `enabled` (Boolean, Optional): Auf `false` setzen, um diesen spezifischen Kanal zu deaktivieren ohne ihn zu entfernen

**Beispiel:**

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

**Wie es funktioniert:**

* Bot verarbeitet diese Kanäle nur im **Submit-only Modus** oder im **Normalmodus**
* Jeder Kanal hat seinen eigenen Cooldown-Timer, der unabhängig verfolgt wird
* URLs werden genau so gepostet, wie sie bereitgestellt wurden
* Wenn `submit_x_url: false` in configs gesetzt ist, werden X/Twitter-URLs in regulären Kanälen übersprungen

---

### 📝 **`raw_chat`** - Textnachrichten

Sendet reguläre Textnachrichten an Kanäle.

**Einfaches Format:**

```json
"raw_chat": {
  "CHANNEL_ID": "NACHRICHT_ZUM_SENDEN"
}
```

**Erweitertes Format mit Optionen:**

```json
"raw_chat": {
  "CHANNEL_ID": {
    "message": "NACHRICHT_ZUM_SENDEN",
    "delay": [60, 120],
    "enabled": true
  }
}
```

**Spezialwerte:**

* `"__random_message"` - Bot verwendet KI oder eine zufällige Nachricht aus messages.yaml
* `"[AI] Deine Anweisung"` - Bot nutzt KI mit deiner benutzerdefinierten Anweisung
* Jeder spezifische Text - Bot sendet genau diesen Text (z. B. `"gm"`, `"Hallo!"`)

**Beispiel:**

```json
"raw_chat": {
  "1417068171243815002": {
    "message": "[AI] Auf zufällige Nachrichten antworten",
    "delay": [60, 120]
  },
  "1417084328504197250": {
    "message": "gm",
    "delay": [6000, 12000]
  },
  "9876543210987654321": "__random_message"
}
```

**Was passiert:**

* In Kanal `1417068171243815002`: Bot verwendet KI mit der Anweisung "Auf zufällige Nachrichten antworten"
* In Kanal `1417084328504197250`: Bot sendet "gm" alle 6000–12000 Sekunden
* In Kanal `9876543210987654321`: Bot sendet eine zufällige KI-generierte Nachricht

---

### 🤖 **`command_chat`** - Bot-Befehle

Sendet Slash-Commands oder Bot-Befehle an Kanäle.

**Format:**

```json
"command_chat": {
  "CHANNEL_ID": {
    "command": "COMMANDO_ZUM_AUSFÜHREN",
    "delay": [60, 120]
  }
}
```

**Beispiel:**

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

### 🖼️ **`image_chat`** - KI-generierte Bilder

Generiert und sendet KI-Bilder an Kanäle über die Freepik API (mit automatischem Pollinations.ai Fallback).

**Format:**

```json
"image_chat": {
  "CHANNEL_ID": {
    "prompt": "IMAGE_GENERATION_PROMPT",
    "delay": [60, 120]
  }
}
```

**Beispiel:**

```json
"image_chat": {
  "1435601397591703675": {
    "prompt": "Airdrop-Projekt mit 'Curious'",
    "delay": [7200, 10000]
  },
  "9876543210987654321": {
    "prompt": "Schöner Sonnenuntergang über Bergen",
    "delay": [3600, 7200]
  }
}
```

**Anforderungen:**

* Ein Freepik API-Key muss in `configs.json` konfiguriert sein
* Falls Freepik fehlschlägt oder kein Key vorhanden ist, verwendet der Bot automatisch Pollinations.ai (kostenlos, kein API-Key nötig)

---

## 📋 Vollständiges Beispiel

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
          "message": "[AI] Auf zufällige Nachrichten antworten",
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
          "prompt": "Airdrop-Projekt mit 'CURIOUS'",
          "delay": [60, 120]
        }
      }
    }
  },
  {
    "name": "Deaktivierter Server (Nicht aktiv)",
    "guild_id": "5555555555555555555",
    "invite_id": "oldserver",
    "enabled": false,
    "channels": {
      "submit_chat": {},
      "raw_chat": {
        "3333333333333333333": {
          "message": "Testnachricht",
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

## ⏱️ Verzögerungssystem

Der Bot verwendet ein **intelligentes Cooldown-System**, um Spam und Rate-Limits zu vermeiden:

### 📊 Verzögerungs-Priorität (von höchster bis niederiger):

1. **Kanal-spezifische Verzögerung** (in servers.json)

   ```json
   "1234567890": {
     "message": "gm",
     "delay": [300, 600]  ← Dies hat Vorrang
   }
   ```

2. **Globale delay_each_chat** (in configs.json)

   ```json
   "delay_each_chat": [10, 15]  ← Fallback, wenn Kanal keine Verzögerung hat
   ```

### 🔄 Funktionsweise:

* Jeder Kanal hat seinen eigenen **unabhängigen Cooldown-Timer**
* Timer startet **nach erfolgreichem Versenden einer Nachricht**
* Bot prüft, ob die Cooldown-Periode abgelaufen ist, bevor er die nächste Nachricht sendet
* Ist Cooldown aktiv, überspringt der Bot den Kanal und protokolliert die verbleibende Wartezeit
* Cooldowns sind **persistent** und werden in `chat-timestamps.json` verfolgt

### 💡 Tipps:

* Verwende längere Verzögerungen (3600–7200s) für Kanäle mit geringer Aktivität
* Verwende kürzere Verzögerungen (60–300s) für stark frequentierte Kanäle
* Submit-Kanäle nutzen üblicherweise 6000–12000s Verzögerungen
* Bildgenerierung sollte längere Verzögerungen (7200–10000s) nutzen wegen API-Kosten

---

## 💡 Tipps & Best Practices

### ✅ MACH:

* Verwende beschreibende Servernamen zur leichteren Identifizierung
* Setze `enabled: false`, um Server temporär zu deaktivieren ohne Konfiguration zu verlieren
* Deaktiviere einzelne Kanäle durch `enabled: false`
* Nutze kanal-spezifische Verzögerungen für mehr Kontrolle
* Verwende das Format `"[AI] Anweisung"` für benutzerdefinierte KI-Antworten
* Nutze `submit_chat` für X/Twitter-URLs statt regulärer Kanäle
* Teste zuerst mit einem Server, bevor du mehrere hinzufügst
* Verwende längere Verzögerungen für Bildgenerierung, um API-Kosten zu sparen

### ❌ NICHT MACHEN:

* Lösche Servereinträge nicht — verwende `enabled: false` stattdessen
* Vergiss nicht, Verzögerungen zu setzen (der Bot nutzt Defaults, aber explizite Werte sind besser)
* Verwende keine sehr kurzen Verzögerungen (< 60s), um Rate-Limit-Detektion zu vermeiden
* Setze Kanal-IDs nicht in Anführungszeichen innerhalb von Objekten (sie sind bereits Strings) — (Anm.: in JSON sind sie Strings; hier ist gemeint, nicht doppelt zu escapen)
* Teile `tokens.txt` oder API-Keys nicht mit anderen
* Bot speichert Fehler automatisch in `error-channels.json` um Wiederholungsversuche zu vermeiden
* Verwende Submit-only Modus für dedizierte URL-Einreichungen
* Setze geeignete Cooldowns pro Kanal, um Spam-Detektion zu vermeiden
* KI-Anbieter werden in Reihenfolge versucht, bis einer erfolgreich antwortet
* Bildgenerierung fällt automatisch auf den freien Dienst zurück, falls Freepik fehlschlägt

---

## 🔍 Channel-IDs finden

1. Entwickler-Modus in Discord aktivieren (Einstellungen → Erweitert → Entwickler-Modus)
2. Rechtsklick auf einen Kanal
3. "Channel-ID kopieren" anklicken
4. ID in `servers.json` einfügen

[Visuelle Anleitung](https://t.me/KeoAirDropFreeNee/1676)

---

## 🐛 Fehlerbehebung

| Problem                               | Lösung                                                                           |
| ------------------------------------- | -------------------------------------------------------------------------------- |
| Bot überspringt Server                | Prüfe ob `enabled: true` für den Server gesetzt ist                              |
| Bot überspringt spezifischen Kanal    | Prüfe, ob Kanal `enabled: false` gesetzt ist                                     |
| Bot tritt nicht bei                   | Prüfe, ob `invite_id` korrekt ist und `join_server: true` in configs gesetzt ist |
| Bot sendet keine Nachrichten          | Prüfe, ob Kanal-IDs korrekt sind und `auto_chat: true` in configs gesetzt ist    |
| Nachrichten werden zu häufig gesendet | Erhöhe oder füge `delay` Werte in Kanal-Konfigurationen hinzu                    |
| Bilder generieren nicht               | Prüfe Freepik API-Key in `configs.json` (ansonsten Fallback zu Pollinations.ai)  |
| Submit-Kanäle funktionieren nicht     | Prüfe, ob du im richtigen Modus (submit-only oder normal) ausführst              |
| JSON-Syntax-Fehler                    | Verwende einen JSON-Validator wie jsonlint.com                                   |

</details>

---

<details>
<summary><strong>▶️ Nutzung</strong></summary>

### 📌 Bot starten

**Grundlegende Verwendung:**

```bash
node index_meomundep.js
```

**Mit CLI-Flags:**

```bash
# Erzwinge Submit-only Modus (nur submit_chat Kanäle)
node index_meomundep.js --submit
node index_meomundep.js -s

# Erzwinge Normalmodus (voller Ablauf: join, chat, leave)
node index_meomundep.js --chat
node index_meomundep.js -c

# Hilfe anzeigen
node index_meomundep.js --help
node index_meomundep.js -h
```

### 🎮 Betriebsmodi

Der Bot unterstützt **zwei Betriebsmodi**:

#### 1️⃣ **Normalmodus** (Voller Ablauf)

* Tritt Servern bei (wenn `join_server: true`)
* Verarbeitet ALLE Kanaltypen: `submit_chat`, `raw_chat`, `command_chat`, `image_chat`
* Verlässt Server (wenn `leave_server: true`)
* Nutzt KI zur Nachrichtengenerierung

**Aktivieren mit:**

* CLI: `node index_meomundep.js --chat`
* Config: `"auto_chat": true` (Standard)
* Laufzeit: Option `2` wählen, wenn `ask_before_auto_chat: true` gesetzt ist

#### 2️⃣ **Submit-Only Modus**

* Überspringt Server join/leave
* Verarbeitet **nur** `submit_chat` Kanäle
* Ignoriert `raw_chat`, `command_chat`, `image_chat`
* Ideal für dedizierte X/Twitter-Einreichungs-Aufgaben

**Aktivieren mit:**

* CLI: `node index_meomundep.js --submit`
* Config: `"auto_chat": false`
* Laufzeit: Option `1` wählen, wenn `ask_before_auto_chat: true` gesetzt ist

### 🔄 Modus-Priorität (höchste zu niedrigste):

1. **CLI-Flags** (--submit oder --chat)
2. **Benutzerauswahl** (falls `ask_before_auto_chat: true`)
3. **Config-Einstellung** (`auto_chat` Wert)

### 📊 Interaktive Verwaltung

Der Bot enthält ein integriertes Verwaltungssystem über:

```bash
node index_meomundep.js
# Dann "Server Manager" aus dem Hauptmenü auswählen
```

**Verwaltungs-Funktionen:**

🖥️ **Hauptmenü:**

1. Serververwaltung (Server aktivieren/deaktivieren)
2. Verzögerungsverwaltung (Verzögerungen hinzufügen/anzeigen)
3. Submit-Verwaltung (X-Post Links)
4. Fehler-Kanalverwaltung
5. Beenden

📡 **Serververwaltung:**

* Alle Server gleichzeitig aktivieren/deaktivieren
* Bestimmte Server aktivieren/deaktivieren
* Nur einen Server aktivieren (alle anderen deaktivieren)
* Serverstatus-Übersicht anzeigen

⏱️ **Verzögerungsverwaltung:**

* Standardverzögerungen zu Kanälen hinzufügen, die keine haben
* Benutzerdefinierte Verzögerungen hinzufügen
* Verzögerungsstatistiken anzeigen
* Liste einzigartiger Verzögerungswerte anzeigen

🔗 **Submit-Verwaltung:**

* Alle Submit-Kanäle auflisten
* Neuen Submit-Kanal hinzufügen
* Submit-URLs bearbeiten
* Submit-Kanäle entfernen
* Submit-Statistiken anzeigen

🚫 **Fehler-Kanalverwaltung:**

* Alle Fehlerkanäle pro Token anzeigen
* Bestimmte Fehlerkanäle löschen
* Ganze Token-Einträge löschen
* Fehlgeschlagene Kanal-Einträge bereinigen

### ⬆️ Bot aktualisieren

```bash
git pull
npm install
```

---

### 🔍 Funktionsweise (Kurz)

1. **Liest Konfiguration** aus `configs.json`
2. **Prüft CLI-Flags** (--submit, --chat, --help)
3. **Fragt Benutzer** (falls `ask_before_auto_chat: true` und kein CLI-Flag)
4. **Bestimmt Modus** (submit-only oder normal)
5. **Loggt sich ein** mit Tokens aus `tokens.txt`
6. **Wendet Proxy** pro Account an (falls in `proxies.txt` vorhanden)
7. **Verarbeitet jeden Server** aus `servers.json`:

   * ✅ Prüft, ob `enabled: true` gesetzt ist
   * ✅ Prüft, ob Kanal nicht `enabled: false` ist
   * ✅ Prüft Cooldown-Timer vor dem Senden
   * **Im Normalmodus:**

     * ➕ Tritt Server bei (mit `invite_id`), falls `join_server: true`
     * 💬 Verarbeitet alle Kanaltypen
     * ➖ Verlässt Server (mit `guild_id`), falls `leave_server: true`
   * **Im Submit-only Modus:**

     * 🔗 Verarbeitet nur `submit_chat` Kanäle
     * ⏭️ Überspringt join/leave und andere Kanaltypen
8. **Protokolliert jedes Ereignis** mit Zeitstempeln und farbiger Ausgabe
9. **Speichert Zeitstempel**, um doppelte Posts während Cooldown zu verhindern
10. **Wartet** die konfigurierten Verzögerungen zwischen Aktionen
11. **Wiederholt** automatisch nach `time_to_restart_all_accounts` Sekunden

---

### 📝 Logs & Zeitstempel

* Jeder Logeintrag enthält einen Zeitstempel
* Zeitstempelformat folgt der Einstellung `chat_language`
* Farbcodierte Logs für bessere Lesbarkeit:

  * 🟢 Grün - Erfolg
  * 🔴 Rot - Fehler
  * 🟡 Gelb - Warnung
  * 🔵 Blau - Info
  * 🟣 Lila - Verarbeitung
  * 🔶 Orange - KI/Provider Aktionen

---

### 🎙️ Voice-Channel-Unterstützung

Der Bot kann Sprachkanälen beitreten und dort präsent bleiben:

```json
"voice_chat": {
  "enabled": true,
  "server_id": "1234567890123456789",
  "channel_id": "9876543210987654321",
  "user_id": "1111222233334444555"
}
```

**Funktionen:**

* Automatische Verbindung zu Sprachkanälen
* Herzschlagmechanismus zur Aufrechterhaltung der Verbindung
* Automatische Wiederverbindung bei Trennung (bis zu 5 Versuche mit exponentiellem Backoff)
* WebRTC-Protokoll-Unterstützung
* Sauberes Trennen bei Abmeldung

**Anforderungen:**

* Token muss Berechtigung zum Beitreten des Sprachkanals haben
* Token muss Zugriff auf den angegebenen Server haben
* Benutzer-ID muss mit der Token-Benutzer-ID übereinstimmen

---

### ⚠️ Wichtige Hinweise

* ✅ Stelle sicher, dass alle Tokens gültig sind und die erforderlichen Berechtigungen besitzen
* 🌐 Verwende Proxies, um Rate-Limits oder Sperren zu vermeiden (empfohlen: ein Proxy pro Token)
* ⏱️ Passe Delay-Einstellungen sorgfältig an bei größeren Account-Mengen
* 📊 Überwache Logs auf Fehler und passe `servers.json` entsprechend an
* 🔒 Bewahre Tokens und API-Keys sicher und privat auf
* 🚫 Teile `tokens.txt` nicht mit anderen
* 💾 Bot speichert Fehler automatisch in `error-channels.json`, um Wiederholungsversuche zu vermeiden
* 🔄 Nutze Submit-only Modus für dedizierte URL-Einreichungen
* 🎯 Setze angemessene Cooldowns pro Kanal, um Spam-Detektion zu vermeiden
* 🤖 KI-Anbieter werden der Reihe nach versucht, bis einer erfolgreich ist
* 📸 Bildgenerierung fällt auf kostenlosen Dienst zurück, falls Freepik fehlschlägt
* ⚡ CLI-Flags überschreiben alle anderen Einstellungen zur Laufzeit

</details>

---

## 📞 Kontakt & Support

* 🛒 **Unterstütze mich:** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **Kontakt:** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **Gruppe:** [Tritt Gruppe bei](https://t.me/KeoAirDropFreeNe)
* 📢 **Kanal:** [Besuche Kanal](https://t.me/KeoAirDropFreeNee)

---

⚠️ **Haftungsausschluss**

Dieses Projekt wurde ausschließlich als **persönliche Lernübung** erstellt.
Es ist **kein offizielles Produkt**, keine Website oder Dienstleistung einer in diesem Repository genannten Firma oder Marke.
Der Ersteller ist **nicht verbunden, befürwortet oder assoziiert** mit solchen Unternehmen oder Marken.

Der Code wird **ohne Gewähr** und **"wie gesehen"** bereitgestellt.
Bestimmte Teile des Quellcodes sind absichtlich **obfuskiert**, um persönliche Forschung, benutzerdefinierte Logik und Lerntechniken zu schützen.

Verwende dieses Projekt verantwortungsbewusst und auf eigenes Risiko.
**Weitergabe, Wiederverkauf oder kommerzielle Nutzung** von Teilen dieses Codes—ob original oder modifiziert—ist **nicht erlaubt**.

---

<p align="center"><a href="#-discord-automation-bot-von-meomundep">⬆️ Zurück nach oben</a></p>
