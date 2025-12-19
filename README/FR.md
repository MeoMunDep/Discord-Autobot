# 🤖 Bot d'automatisation Discord par @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 Aperçu

Ce bot automatise les interactions sur **Discord**, y compris l'envoi de messages, rejoindre/quitter des serveurs, et la gestion des messages en utilisant **plusieurs comptes** avec **prise en charge des proxies**.

---

## 🚀 Fonctionnalités

* 💬 **Envoi automatique de messages** — Envoie des messages vers des salons spécifiés avec des délais personnalisables
* 🔗 **Gestion des soumissions (Submit Channel)** — Système dédié pour soumettre des publications X/Twitter
* ➕ **Rejoindre automatiquement des serveurs** — Rejoint des serveurs via des liens d'invitation
* ➖ **Quitter automatiquement des serveurs** — Quitte des serveurs spécifiés
* 🌍 **Support proxy** — Supporte les proxies HTTP(S) et SOCKS5
* 🗑️ **Suppression automatique de messages** — Supprime les messages envoyés après un délai configurable
* 🌐 **Support multilingue** — Langage des messages auto-configurable
* 📕 **Journal des erreurs** — Sauvegarde les IDs de serveurs ou salons où des erreurs sont survenues
* 🤖 **Réponses AI** — Génère des réponses casual en utilisant des fournisseurs d'IA (Groq, OpenRouter, Gemini, Poe, Grok)
* 🖼️ **Génération d'images** — Génère et envoie des images IA aux salons via l'API Freepik (fallback Pollinations.ai)
* 🎛️ **Contrôle serveur** — Activer/désactiver des serveurs individuellement sans supprimer la config
* 🚀 **Mode double** — Exécution en mode normal (flux complet) ou uniquement soumission
* 🎮 **Support salon vocal** — Rejoindre et maintenir la présence dans des salons vocaux
* 📊 **Gestion interactive** — Interface CLI intégrée pour gérer serveurs, délais et erreurs
* 🚀 **Flags CLI** — Surcharger les paramètres de config via arguments en ligne de commande

---

<details>
<summary><strong>🛠️ Installation</strong></summary>

### 📋 Prérequis

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 Télécharger : [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 Étapes

1. **Cloner le dépôt :**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **Installer les dépendances :**

   ```bash
   npm install
   ```

   ⚠️ Si vous voyez une erreur *Execution Policy* sur Windows :

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   Puis relancez :

   ```bash
   npm install
   ```

3. **Configurer le bot :**
   Éditez le fichier `configs.json` selon vos préférences.

4. **Préparer les fichiers d'entrée :**

   * 📄 `tokens.txt` — Tokens Discord (un par ligne)
   * 🆔 `servers.json` — Détails des serveurs incluant guild IDs, codes d'invite et config des salons (voir guide détaillé ci-dessous)
   * 🌐 `proxies.txt` — Proxies (optionnel, un par token)
   * 📜 `messages.yaml` — Messages (multilingue)
   * 🗂️ `error-channels.json` — Stocke les salons/serveurs échoués (généré/mis à jour automatiquement)

📌 Liens utiles :

* 🔑 Obtenir des tokens : [Ici](https://t.me/KeoAirDropFreeNee/1570)
* 💬 Obtenir chat ID : [Ici](https://t.me/KeoAirDropFreeNee/1569)
* 📡 Obtenir channel/server ID : [Ici](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ Configuration (configs.json)</strong></summary>

| ⚙️ Paramètre                   | 📘 Description                                                                     |
| ------------------------------ | ---------------------------------------------------------------------------------- |
| `max_accounts_at_once`         | Nombre de comptes exécutés simultanément                                           |
| `delay_between_accounts`       | Délai (en secondes) entre le démarrage de chaque compte                            |
| `delay_each_channel`           | Plage de délai [min, max] (en secondes) entre différents salons                    |
| `delay_each_chat`              | Plage de délai [min, max] (en secondes) entre messages dans un même salon          |
| `time_to_restart_all_accounts` | Temps (en secondes) avant de redémarrer tous les comptes                           |
| `chat_language`                | Langue utilisée pour les messages automatiques                                     |
| `ask_before_auto_chat`         | Demande à l'utilisateur de choisir le mode (submit_only/normal) avant chaque cycle |
| `auto_chat`                    | Mode par défaut : true = mode normal, false = mode uniquement soumission           |
| `submit_x_url`                 | Activer/désactiver la soumission d'URLs X/Twitter dans les salons réguliers        |
| `join_server`                  | Activer/désactiver le join automatique de serveurs                                 |
| `leave_server`                 | Activer/désactiver le leave automatique de serveurs                                |
| `delete_message`               | Activer/désactiver la suppression de messages après envoi                          |
| `enable_replies`               | Activer/désactiver les réponses aux messages                                       |
| `enable_reactions`             | Activer/désactiver les réactions aux messages                                      |
| `reaction_chance`              | Probabilité (0–1) de réagir à un message                                           |
| `enable_ai_replies`            | Activer/désactiver les réponses générées par l'IA                                  |
| `ai_reply_chance`              | Probabilité (0–1) d'utiliser l'IA pour répondre                                    |
| `ai_providers.*`               | Clés API (tableaux) pour fournisseurs IA (Groq, Gemini, Poe, OpenRouter, Grok)     |
| `image_generation_providers.*` | Clés API (tableaux) pour fournisseurs d'images IA (Freepik)                        |
| `voice_chat.enabled`           | Activer/désactiver la connexion au salon vocal                                     |
| `voice_chat.server_id`         | Guild ID pour le salon vocal                                                       |
| `voice_chat.channel_id`        | Channel ID vocal à rejoindre                                                       |
| `voice_chat.user_id`           | Votre user ID pour la connexion vocale                                             |

---

### 🧾 Exemple `configs.json`

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

### 🔑 Clés API multiples

Le bot supporte **plusieurs clés API** pour chaque fournisseur. Il sélectionnera aléatoirement une clé du tableau pour chaque requête :

```json
"ai_providers": {
  "groq": ["key1", "key2", "key3"],
  "gemini": ["key1", "key2"]
}
```

Avantages :

* **Répartition de charge** entre plusieurs comptes API
* **Gestion des limites** en répartissant les requêtes
* **Fiabilité** — si une clé échoue, d'autres peuvent être essayées

---

<details>
<summary><strong>🔑 Clé API GROQ</strong></summary>

[Créer une clé](https://console.groq.com/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GROQ_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 Clé API GROK</strong></summary>

[Créer une clé](https://console.x.ai/api-keys)

**Remarque :** L'API Grok utilise un format compatible OpenAI. Obtenez votre clé depuis la console X.AI.

</details>

<details>
<summary><strong>🔑 Clé API GEMINI</strong></summary>

[Créer une clé](https://aistudio.google.com/app/apikey)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GEMINI_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 Clé API OPENROUTER</strong></summary>

[Créer une clé](https://openrouter.ai/settings/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/OPENROUTER_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 Clé API POE</strong></summary>

[Créer une clé](https://poe.com/api_key)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/POE_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 Clé API FREEPIK</strong></summary>

[Créer une clé](https://api.freepik.com/v1/auth/create)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/FREEPIK_API_KEY.png?raw=true" width="600" />
</p>

</details>

</details>

---

<details>
<summary><strong>🗂️ Structure de servers.json (GUIDE DÉTAILLÉ)</strong></summary>

Le fichier `servers.json` est **le cœur** de la configuration du bot. Il définit quels serveurs interagir et quelles actions exécuter dans chaque salon.

---

## 📚 Structure de base

Le fichier doit être un **tableau JSON** contenant des objets serveur. Chaque serveur représente un serveur Discord à traiter par le bot.

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

## 🔑 Explication des champs

### 1️⃣ **`name`** (String - Requis)

* **Qu'est-ce que c'est :** Un nom lisible pour identifier le serveur (usage interne)
* **Exemple :** `"Curious"`, `"Mon Serveur de jeu"`, `"Crypto Community"`
* **But :** Aide à repérer les serveurs dans les logs et la config

### 2️⃣ **`guild_id`** (String - Requis)

* **Qu'est-ce que c'est :** L'ID unique du serveur Discord
* **Comment l'obtenir :** [Guide lié précédemment](https://t.me/KeoAirDropFreeNee/1676)
* **Exemple :** `"1417067849926705235"`
* **But :** Utilisé pour quitter le serveur quand `leave_server: true`

### 3️⃣ **`invite_id`** (String - Requis)

* **Qu'est-ce que c'est :** Le code d'invitation du serveur
* **Exemple :** `"altiuslabs"` (depuis discord.gg/altiuslabs)
* **Valeurs spéciales :**

  * `""` (chaine vide) - Ne pas rejoindre ce serveur
  * `"none"` - Ne pas rejoindre ce serveur
  * `"unknown"` - Ne pas rejoindre ce serveur
* **But :** Utilisé pour rejoindre si `join_server: true`

### 4️⃣ **`enabled`** (Boolean - Requis)

* **Qu'est-ce que c'est :** Contrôle si le bot traite ce serveur
* **Valeurs :**

  * `true` - Le bot traitera le serveur
  * `false` - Le bot ignorera ce serveur
* **But :** Permet de désactiver temporairement un serveur sans supprimer sa config

### 5️⃣ **`channels`** (Object - Requis)

Ici vous définissez ce que le bot fait dans chaque salon. Contient **quatre catégories** :

---

## 🗨️ Types de salons

### 🔗 **`submit_chat`** - Soumission de posts X/Twitter (NOUVEAU !)

**But :** Canal dédié pour soumettre des liens X/Twitter avec délais personnalisés.

**Format :**

```json
"submit_chat": {
  "CHANNEL_ID": {
    "message": "https://x.com/yourpost",
    "delay": [6000, 12000]
  }
}
```

**Champs :**

* `message` (String) : L'URL X/Twitter à soumettre
* `delay` (Array) : [min, max] cooldown en secondes avant de pouvoir poster de nouveau dans ce salon
* `enabled` (Boolean, Optionnel) : Mettre `false` pour désactiver ce salon sans le supprimer

**Exemple :**

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

**Fonctionnement :**

* Le bot traite ces salons seulement en **mode submit-only** ou en **mode normal**
* Chaque salon a son propre timer de cooldown suivi indépendamment
* Les URLs sont soumises exactement telles quelles
* Si `submit_x_url: false` dans configs, les URLs X/Twitter dans les salons réguliers seront ignorées

---

### 📝 **`raw_chat`** - Messages texte

Envoie des messages texte classiques aux salons.

**Format (Simple) :**

```json
"raw_chat": {
  "CHANNEL_ID": "MESSAGE_TO_SEND"
}
```

**Format (Avancé avec options) :**

```json
"raw_chat": {
  "CHANNEL_ID": {
    "message": "MESSAGE_TO_SEND",
    "delay": [60, 120],
    "enabled": true
  }
}
```

**Valeurs spéciales :**

* `"__random_message"` - Le bot utilisera l'IA ou un message aléatoire depuis `messages.yaml`
* `"[AI] Votre instruction"` - Le bot utilisera l'IA avec votre instruction personnalisée
* Tout texte spécifique - Le bot enverra exactement ce texte (ex. `"gm"`, `"Hello!"`)

**Exemple :**

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

**Comportement :**

* Dans `1417068171243815002`: le bot utilise l'IA avec l'instruction "Respond to random messages"
* Dans `1417084328504197250`: le bot envoie "gm" toutes les 6000-12000 secondes
* Dans `9876543210987654321`: le bot envoie un message IA aléatoire

---

### 🤖 **`command_chat`** - Commandes bot

Envoie des commandes slash ou commandes bot dans les salons.

**Format :**

```json
"command_chat": {
  "CHANNEL_ID": {
    "command": "COMMAND_TO_EXECUTE",
    "delay": [60, 120]
  }
}
```

**Exemple :**

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

### 🖼️ **`image_chat`** - Images générées par IA

Génère et envoie des images IA aux salons en utilisant l'API Freepik (fallback Pollinations.ai).

**Format :**

```json
"image_chat": {
  "CHANNEL_ID": {
    "prompt": "IMAGE_GENERATION_PROMPT",
    "delay": [60, 120]
  }
}
```

**Exemple :**

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

**Exigences :**

* Doit avoir la clé Freepik configurée dans `configs.json`
* Si Freepik échoue ou s'il n'y a pas de clé, le bot utilisera automatiquement Pollinations.ai (gratuit)

---

## 📋 Exemple complet

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

## ⏱️ Système de délais

Le bot utilise un **système de cooldown intelligent** pour éviter le spam et les limites de taux :

### 📊 Priorité des délais (du plus prioritaire au moins prioritaire) :

1. **Délai spécifique au salon** (dans `servers.json`)

   ```json
   "1234567890": {
     "message": "gm",
     "delay": [300, 600]  ← Ceci a la priorité
   }
   ```

2. **Délai global `delay_each_chat`** (dans `configs.json`)

   ```json
   "delay_each_chat": [10, 15]  ← Utilisé si le salon n'a pas de délai
   ```

### 🔄 Fonctionnement :

* Chaque salon possède son propre **timer de cooldown indépendant**
* Le timer démarre après un **envoi de message réussi**
* Le bot vérifie si la période de cooldown est passée avant d'envoyer le prochain message
* Si le cooldown est actif, le bot ignore le salon et enregistre le temps restant
* Les cooldowns sont **persistants** et suivis dans `chat-timestamps.json`

### 💡 Astuces :

* Utilisez des délais plus longs (3600–7200s) pour les salons peu actifs
* Utilisez des délais plus courts (60–300s) pour salons à haute activité
* `submit_chat` utilise typiquement 6000–12000s de délai
* La génération d'images doit utiliser des délais plus longs (7200–10000s) à cause du coût API

---

## 💡 Conseils & Bonnes pratiques

### ✅ À FAIRE :

* Utilisez des noms descriptifs pour repérer facilement les serveurs
* Définissez `enabled: false` pour désactiver temporairement sans supprimer la config
* Désactivez des salons individuellement via `enabled: false`
* Mettez des délais spécifiques par salon pour mieux contrôler le comportement
* Utilisez le format `"[AI] instruction"` pour des réponses IA personnalisées
* Utilisez `submit_chat` pour les URLs X/Twitter plutôt que les salons réguliers
* Testez d'abord avec un seul serveur avant d'en ajouter plusieurs
* Utilisez des délais plus longs pour la génération d'images pour économiser l'API

### ❌ À ÉVITER :

* Ne supprimez pas les entrées de serveur — utilisez `enabled: false`
* N'oubliez pas d'ajouter des délais aux salons (le bot utilisera des valeurs par défaut sinon)
* N'utilisez pas des délais très courts (< 60s) pour éviter les limites de taux
* Ne mettez pas vos tokens et clés API en public — gardez-les privés
* Ne partagez pas votre fichier `tokens.txt` avec d'autres
* N'utilisez pas des petites fenêtres de temps pour des actions susceptibles d'être détectées comme spam

---

## 🔍 Trouver les Channel IDs

1. Activez le mode développeur dans Discord (Paramètres → Avancé → Developer Mode)
2. Clic-droit sur un canal
3. Cliquez sur "Copy Channel ID"
4. Collez l'ID dans `servers.json`

[Guide visuel](https://t.me/KeoAirDropFreeNee/1676)

---

## 🐛 Dépannage

| Problème                          | Solution                                                                         |
| --------------------------------- | -------------------------------------------------------------------------------- |
| Le bot ignore un serveur          | Vérifiez que `enabled: true` est défini pour le serveur                          |
| Le bot ignore un salon spécifique | Vérifiez que le salon n'a pas `enabled: false`                                   |
| Le bot ne rejoint pas le serveur  | Vérifiez que `invite_id` est correct et `join_server: true` dans configs         |
| Le bot n'envoie pas de messages   | Vérifiez que les channel IDs sont corrects et que `auto_chat: true` dans configs |
| Messages envoyés trop fréquemment | Ajoutez/augmentez les `delay` dans les configs de salon                          |
| Images non générées               | Vérifiez la clé Freepik dans `configs.json` (sinon fallback Pollinations.ai)     |
| Submit channels inactifs          | Vérifiez que vous êtes en bon mode (submit-only ou normal)                       |
| Erreur de syntaxe JSON            | Utilisez un validateur JSON comme jsonlint.com                                   |

</details>

---

<details>
<summary><strong>▶️ Utilisation</strong></summary>

### 📌 Lancer le bot

**Utilisation basique :**

```bash
node index_meomundep.js
```

**Avec flags CLI :**

```bash
# Forcer le mode submit-only (seuls les salons submit_chat)
node index_meomundep.js --submit
node index_meomundep.js -s

# Forcer le mode normal (flux complet : join, chat, leave)
node index_meomundep.js --chat
node index_meomundep.js -c

# Afficher l'aide
node index_meomundep.js --help
node index_meomundep.js -h
```

### 🎮 Modes d'opération

Le bot supporte **deux modes** :

#### 1️⃣ **Mode Normal** (Flux complet)

* Rejoint des serveurs (si `join_server: true`)
* Traite TOUS les types de salons : `submit_chat`, `raw_chat`, `command_chat`, `image_chat`
* Quitte des serveurs (si `leave_server: true`)
* Utilise l'IA pour la génération de messages

**Activation :**

* CLI : `node index_meomundep.js --chat`
* Config : `"auto_chat": true` (par défaut)
* Runtime : Sélectionnez l'option `2` si `ask_before_auto_chat: true`

#### 2️⃣ **Mode Submit-Only**

* Ignore join/leave de serveurs
* **TRAITE UNIQUEMENT** les salons `submit_chat`
* Idéal pour tâches dédiées de soumission X/Twitter

**Activation :**

* CLI : `node index_meomundep.js --submit`
* Config : `"auto_chat": false`
* Runtime : Sélectionnez l'option `1` si `ask_before_auto_chat: true`

### 🔄 Priorité des modes (du plus élevé au plus bas) :

1. **Flags CLI** (--submit ou --chat)
2. **Invite utilisateur** (si `ask_before_auto_chat: true`)
3. **Paramètre dans la config** (`auto_chat`)

### 📊 Gestion interactive

Le bot inclut un système de gestion accessible via :

```bash
node index_meomundep.js
# Puis sélectionnez "Server Manager" dans le menu principal
```

**Fonctionnalités de gestion :**

🖥️ **Menu principal :**

1. Gestion des serveurs (activer/désactiver)
2. Gestion des délais (ajouter/montrer)
3. Gestion des soumissions (liens X)
4. Gestion des error channels
5. Quitter

📡 **Gestion des serveurs :**

* Activer/désactiver tous les serveurs
* Activer/désactiver des serveurs spécifiques
* Activer uniquement un serveur (désactiver les autres)
* Afficher l'état des serveurs

⏱️ **Gestion des délais :**

* Ajouter des délais par défaut aux salons qui en manquent
* Ajouter des délais personnalisés
* Montrer des statistiques de délais
* Lister les valeurs uniques de délais utilisées

🔗 **Gestion des soumissions :**

* Lister tous les submit channels
* Ajouter un nouveau submit channel
* Éditer les URLs de soumission
* Supprimer des submit channels
* Montrer des statistiques de soumission

🚫 **Gestion des error channels :**

* Voir tous les error channels par token
* Supprimer des error channels spécifiques
* Supprimer des entrées token entières
* Nettoyer les enregistrements de salons échoués

### ⬆️ Mettre à jour le bot

```bash
git pull
npm install
```

---

### 🔍 Comment ça marche

1. **Lit la configuration** depuis `configs.json`
2. **Vérifie les flags CLI** (--submit, --chat, --help)
3. **Demande à l'utilisateur** (si `ask_before_auto_chat: true` et aucun flag)
4. **Détermine le mode** (submit-only ou normal)
5. **Se connecte** en utilisant les tokens fournis dans `tokens.txt`
6. **Applique le proxy** par compte (si présent dans `proxies.txt`)
7. **Traitement de chaque serveur** dans `servers.json` :

   * ✅ Vérifie que `enabled: true` est défini pour le serveur
   * ✅ Vérifie que le salon n'a pas `enabled: false`
   * ✅ Vérifie le timer de cooldown avant d'envoyer
   * **En mode normal :**

     * ➕ Rejoint le serveur (avec `invite_id`) si `join_server: true`
     * 💬 Traite tous les types de salons
     * ➖ Quitte le serveur (avec `guild_id`) si `leave_server: true`
   * **En mode submit-only :**

     * 🔗 Traite uniquement `submit_chat`
     * ⏭️ Ignore join/leave et autres types de salons
8. **Log chaque événement** avec timestamp et sortie colorée
9. **Sauvegarde des timestamps** pour éviter les doublons durant le cooldown
10. **Attend les délais** entre actions
11. **Répète automatiquement** après `time_to_restart_all_accounts` secondes

---

### 📝 Logs et timestamps

* Chaque entrée de log inclut un timestamp
* Le format du timestamp suit le paramètre `chat_language`
* Logs colorés pour lecture rapide :

  * 🟢 Vert - Succès
  * 🔴 Rouge - Erreur
  * 🟡 Jaune - Avertissement
  * 🔵 Bleu - Info
  * 🟣 Violet - Traitement
  * 🔶 Orange - Actions IA/Fournisseur

---

### 🎙️ Support salon vocal

Le bot peut rejoindre et maintenir une présence dans des salons vocaux :

```json
"voice_chat": {
  "enabled": true,
  "server_id": "1234567890123456789",
  "channel_id": "9876543210987654321",
  "user_id": "1111222233334444555"
}
```

**Fonctionnalités :**

* Connexion automatique aux salons vocaux
* Mécanisme de heartbeat pour maintenir la connexion
* Reconnexion automatique en cas de déconnexion (jusqu'à 5 tentatives avec backoff exponentiel)
* Support du protocole WebRTC
* Déconnexion propre

**Exigences :**

* Avoir la permission de rejoindre le salon vocal
* Le token doit avoir accès au serveur spécifié
* `user_id` doit correspondre à l'ID de l'utilisateur du token

---

### ⚠️ Notes importantes

* ✅ Assurez-vous que tous les tokens sont valides et ont les permissions requises
* 🌐 Utilisez des proxies pour réduire les risques de limites ou bannissements (un proxy par token recommandé)
* ⏱️ Ajustez les paramètres de délais pour des sets de comptes importants
* 📊 Surveillez les logs pour détecter les erreurs et ajuster `servers.json` en conséquence
* 🔒 Gardez vos tokens et clés API privés et sécurisés
* 🚫 Ne partagez pas `tokens.txt`
* 💾 Le bot sauvegarde automatiquement les erreurs dans `error-channels.json` pour éviter de retenter des salons défaillants
* 🔄 Utilisez le mode submit-only pour des tâches dédiées de soumission d'URL
* 🎯 Définissez des cooldowns appropriés par salon pour éviter la détection anti-spam
* 🤖 Les fournisseurs IA sont essayés en séquence jusqu'à succès
* 📸 La génération d'images bascule automatiquement vers un service gratuit si Freepik échoue
* ⚡ Les flags CLI ont priorité sur toutes les autres configurations pour l'exécution en cours

</details>

---

## 📞 Contact & Support

* 🛒 **Me soutenir :** [Lien 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Lien 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **Contact :** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **Groupe :** [Rejoindre le groupe](https://t.me/KeoAirDropFreeNe)
* 📢 **Chaîne :** [Visiter la chaîne](https://t.me/KeoAirDropFreeNee)

---

⚠️ **Disclaimer**

Ce projet a été créé uniquement comme **exercice éducatif personnel**.
Il **n'est pas** un produit officiel, site web, ni service d'aucune des marques mentionnées.
Le créateur **n'est affilié, associé, approuvé ni connecté** à aucune de ces marques.

Le code est fourni **"tel quel"** sans garantie.
Certaines parties de la source sont volontairement **obfusquées** pour protéger la recherche personnelle, la logique personnalisée et les techniques d'implémentation développées pendant l'apprentissage.

Utilisez ce projet de manière responsable et à vos risques et périls.
**La redistribution, revente ou usage commercial** d'une partie quelconque de ce code—original ou modifié—n'est **pas autorisée**.

---

<p align="center"><a href="#-bot-d'automatisation-discord-par-meomundep">⬆️ Retour en haut</a></p>


