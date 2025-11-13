# 🤖 Bot d’automatisation Discord par @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 Aperçu général

Ce bot automatise les interactions **Discord** — envoi de messages, adhésion/quittage de serveurs, gestion multicomptes, et utilisation de **proxies**.

---

## 🚀 Fonctionnalités principales

* 💬 **Envoi automatique de messages** — Envoie des messages dans les canaux configurés
* ➕ **Rejoindre des serveurs automatiquement** — Rejoint les serveurs à partir d’un lien d’invitation
* ➖ **Quitter les serveurs automatiquement** — Quitte les serveurs définis
* 🌍 **Support des proxies** — Compatible avec HTTP(S) et SOCKS5
* 🗑️ **Suppression automatique des messages** — Supprime les messages après un délai
* 🌐 **Support multilingue** — Génère des messages dans plusieurs langues
* 📕 **Journalisation des erreurs** — Sauvegarde les serveurs ou canaux ayant échoué
* 🤖 **Réponses par IA** — Génère des réponses naturelles via des fournisseurs d’IA (Groq, OpenRouter, Gemini, Poe)
* 🖼️ **Génération d’images** — Crée des images IA via l’API Freepik
* 🎛️ **Contrôle par serveur** — Activer/désactiver un serveur sans supprimer sa configuration

---

<details>
<summary><strong>🛠️ Installation</strong></summary>

### 📋 Prérequis

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 Télécharger : [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 Étapes d’installation

1. **Cloner le dépôt :**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **Installer les dépendances :**

   ```bash
   npm install
   ```

   ⚠️ Si une erreur "Execution Policy" apparaît sous Windows :

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   Puis relancer :

   ```bash
   npm install
   ```

3. **Configurer le bot :**
   Ouvre et modifie `configs.json` selon tes besoins.

4. **Préparer les fichiers d’entrée :**

   * 📄 `tokens.txt` — Liste des tokens Discord (un par ligne)
   * 🆔 `servers.json` — Détails des serveurs : Guild ID, lien d’invitation, configuration des canaux
   * 🌐 `proxies.txt` — Liste de proxies (optionnel)
   * 📜 `messages.yaml` — Messages multilingues
   * 🗂️ `error_channels.json` — Sauvegarde automatique des erreurs

📌 Liens utiles :

* 🔑 Obtenir un token : [ici](https://t.me/KeoAirDropFreeNee/1570)
* 💬 Obtenir un Chat ID : [ici](https://t.me/KeoAirDropFreeNee/1569)
* 📡 Obtenir un Channel/Server ID : [ici](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ Configuration (configs.json)</strong></summary>

| ⚙️ Paramètre                   | 📘 Description                                            |
| ------------------------------ | --------------------------------------------------------- |
| `maxAccountsAtOnce`            | Nombre de comptes actifs simultanément                    |
| `delayBetweenAccounts`         | Délai entre chaque compte (en secondes)                   |
| `delayEachChannel`             | Délai entre les messages dans différents canaux           |
| `delayEachChat`                | Délai entre les conversations                             |
| `timeToRestartAllAccounts`     | Temps avant redémarrage de tous les comptes (en secondes) |
| `chat_language`                | Langue utilisée pour les messages générés                 |
| `auto_chat`                    | Active/désactive le chat automatique                      |
| `join_server`                  | Active l’adhésion automatique aux serveurs                |
| `leave_server`                 | Active le départ automatique des serveurs                 |
| `delete_message`               | Supprime les messages après envoi                         |
| `enable_replies`               | Active les réponses automatiques                          |
| `enable_reactions`             | Active les réactions automatiques                         |
| `reaction_chance`              | Probabilité d’ajouter une réaction (0 à 1)                |
| `enable_ai_replies`            | Active les réponses générées par IA                       |
| `ai_providers.*`               | Clés API des fournisseurs d’IA                            |
| `image_generation_providers.*` | Clés API des générateurs d’images                         |

---

### 🧾 Exemple de `configs.json`

```json
{
  "maxAccountsAtOnce": 1,
  "delayBetweenAccounts": 17,
  "delayEachChat": [11, 15],
  "delayEachChannel": [17, 19],
  "timeToRestartAllAccounts": 360,

  "chat_language": "fr",

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
<summary><strong>🔑 Génération de clés API</strong></summary>

* **GROQ Key :** [Créer ici](https://console.groq.com/keys)
* **GEMINI Key :** [Créer ici](https://aistudio.google.com/app/apikey)
* **OPENROUTER Key :** [Créer ici](https://openrouter.ai/settings/keys)
* **POE Key :** [Créer ici](https://poe.com/api_key)
* **FREEPIK Key :** [Créer ici](https://api.freepik.com/v1/auth/create)

</details>

</details>

---

<details>
<summary><strong>🗂️ Structure du fichier servers.json</strong></summary>

Ce fichier est le **cœur de la configuration** du bot.
Il définit les serveurs à traiter, les canaux à utiliser et les actions à effectuer.

---

## 📚 Structure de base

```json
[
  {
    "name": "Nom du serveur",
    "guild_id": "1234567890123456789",
    "invite_id": "inviteCode",
    "channels": { ... },
    "enabled": true
  }
]
```

---

## 🗨️ Types de canaux

### 📝 **`raw_chat`** — Envoi de messages texte

```json
"raw_chat": {
  "CHANNEL_ID": "__random_message"
}
```

* `"__random_message"` = message aléatoire ou généré par IA
* Texte simple = envoie ce texte directement

---

### 🤖 **`command_chat`** — Commandes bot

```json
"command_chat": {
  "CHANNEL_ID": "/claim daily"
}
```

Exécute des commandes slash ou textuelles (ex. `/rewards`).

---

### 🖼️ **`image_chat`** — Génération d’images IA

```json
"image_chat": {
  "CHANNEL_ID": "Ville cyberpunk de nuit"
}
```

Génère une image à partir de Freepik ou Pollinations.ai.

---

## 📋 Exemple complet

```json
[
  {
    "name": "Curious Community",
    "guild_id": "1417067849926705235",
    "invite_id": "curious",
    "channels": {
      "raw_chat": {
        "1417068171243815002": "__random_message",
        "1417084328504197250": "bonjour"
      },
      "command_chat": {
        "1417068171243815003": "/daily claim"
      },
      "image_chat": {
        "1435601397591703675": "Logo Curious Browser"
      }
    },
    "enabled": true
  }
]
```

---

## ⚙️ Processus du bot

1. Lit `servers.json`
2. Vérifie si `enabled` est vrai
3. Rejoint le serveur via `invite_id`
4. Envoie les messages, commandes et images
5. Quitte le serveur si configuré
6. Redémarre selon le cycle défini

---

## 💡 Conseils

✅ **À faire :**

* Donner des noms clairs
* Utiliser `enabled: false` au lieu de supprimer
* Employer `"__random_message"` pour plus de naturel

❌ **À éviter :**

* Erreurs JSON
* Supprimer des entrées serveurs

---

## 🐛 Dépannage

| Problème                | Solution                                      |
| ----------------------- | --------------------------------------------- |
| Serveur ignoré          | Vérifier `enabled: true`                      |
| Impossible de rejoindre | Vérifier `invite_id`                          |
| Pas de message envoyé   | Vérifier `auto_chat: true`                    |
| Pas d’image             | Vérifier la clé Freepik                       |
| JSON invalide           | Utiliser [jsonlint.com](https://jsonlint.com) |

</details>

---

<details>
<summary><strong>▶️ Utilisation</strong></summary>

### 📌 Lancer le bot

```bash
node index_meomundep.js
```

### ⬆️ Mettre à jour le bot

```bash
git pull
```

---

### 🔍 Fonctionnement

1. Lit les configurations
2. Se connecte avec les tokens
3. Applique les proxies
4. Parcourt les serveurs
5. Affiche les logs colorés avec horodatage
6. Répète le cycle automatiquement

---

### 📝 Légende des couleurs

* 🟢 Succès
* 🔴 Erreur
* 🟡 Avertissement
* 🔵 Information
* 🟣 Activité

---

### ⚠️ Remarques

* Vérifie que les tokens sont valides
* Utilise des proxies pour éviter les bans
* Configure des délais réalistes
* Ne partage jamais tes tokens ni clés API

</details>

---

## 📞 Contact & Support

* 🛒 **Soutiens-moi :** [Lien 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Lien 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **Contact :** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **Groupe :** [Rejoindre](https://t.me/KeoAirDropFreeNe)
* 📢 **Canal :** [Voir](https://t.me/KeoAirDropFreeNee)

---

## 📜 Licence

❗ **Copie ou vol interdits.**
💀 **Utilisation à vos risques et périls.**
🚫 **Ne pas envoyer de messages inutiles.**

---

<p align="center"><a href="#-bot-dautomatisation-discord-par-meomundep">⬆️ Retour en haut</a></p>
