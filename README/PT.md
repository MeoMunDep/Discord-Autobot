# 🤖 Discord Automation Bot por @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 Visão Geral

Este bot automatiza ações no **Discord**, como enviar mensagens, entrar ou sair de servidores e interagir usando **várias contas**, com **suporte a proxies**.

---

## 🚀 Recursos

* 💬 **Envio Automático de Mensagens** — Envia mensagens automaticamente em canais específicos
* ➕ **Auto Entrar em Servidores** — Entra automaticamente em servidores via link de convite
* ➖ **Auto Sair de Servidores** — Sai automaticamente de servidores específicos
* 🌍 **Suporte a Proxy** — Compatível com proxies HTTP(S) e SOCKS5
* 🗑️ **Exclusão Automática de Mensagens** — Apaga mensagens após alguns segundos
* 🌐 **Suporte Multi-idioma** — Escolha o idioma das mensagens automáticas
* 📕 **Registro de Erros** — Registra automaticamente canais/servidores com falhas
* 🤖 **Respostas com IA** — Gera respostas naturais usando provedores de IA (Groq, OpenRouter, Gemini, Poe)
* 🖼️ **Geração de Imagens** — Cria e envia imagens geradas por IA com a API da Freepik
* 🎛️ **Controle de Servidor** — Habilite ou desabilite servidores sem apagar a configuração

---

<details>
<summary><strong>🛠️ Instalação</strong></summary>

### 📋 Pré-requisitos

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 Baixe aqui: [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 Passos

1. **Clone o repositório:**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **Instale as dependências:**

   ```bash
   npm install
   ```

   ⚠️ Se aparecer erro de *Execution Policy* no Windows:

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   Em seguida, repita:

   ```bash
   npm install
   ```

3. **Configure o bot:**
   Edite o arquivo `configs.json` conforme suas preferências.

4. **Prepare os arquivos de entrada:**

   * 📄 `tokens.txt` — Tokens do Discord (um por linha)
   * 🆔 `servers.json` — Lista de servidores e canais
   * 🌐 `proxies.txt` — Lista de proxies (opcional)
   * 📜 `messages.yaml` — Mensagens nos idiomas disponíveis
   * 🗂️ `error_channels.json` — Armazena erros automaticamente

📌 Links úteis:

* 🔑 Obter tokens: [Aqui](https://t.me/KeoAirDropFreeNee/1570)
* 💬 Obter chat ID: [Aqui](https://t.me/KeoAirDropFreeNee/1569)
* 📡 Obter server/channel ID: [Aqui](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ Configuração (configs.json)</strong></summary>

| ⚙️ Opção                       | 📘 Descrição                                      |
| ------------------------------ | ------------------------------------------------- |
| `maxAccountsAtOnce`            | Número de contas simultâneas                      |
| `delayBetweenAccounts`         | Atraso entre o uso de cada conta                  |
| `delayEachChannel`             | Atraso entre mensagens em canais diferentes       |
| `delayEachChat`                | Atraso entre mensagens em chats                   |
| `timeToRestartAllAccounts`     | Tempo para reiniciar todas as contas              |
| `chat_language`                | Idioma das mensagens automáticas                  |
| `auto_chat`                    | Ativar/desativar envio automático                 |
| `join_server`                  | Ativar/desativar entrada automática em servidores |
| `leave_server`                 | Ativar/desativar saída automática                 |
| `delete_message`               | Ativar/desativar exclusão de mensagens            |
| `enable_replies`               | Ativar respostas automáticas                      |
| `enable_reactions`             | Ativar reações automáticas                        |
| `reaction_chance`              | Probabilidade (0–1) de reagir                     |
| `enable_ai_replies`            | Ativar respostas com IA                           |
| `ai_providers.*`               | Chaves API dos provedores de IA                   |
| `image_generation_providers.*` | Chaves API para geração de imagem                 |

---

### 🧾 Exemplo de `configs.json`

```json
{
  "maxAccountsAtOnce": 1,
  "delayBetweenAccounts": 17,
  "delayEachChat": [11, 15],
  "delayEachChannel": [17, 19],
  "timeToRestartAllAccounts": 360,
  "chat_language": "pt",
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
<summary><strong>🗂️ Estrutura de servers.json</strong></summary>

Este arquivo define **quais servidores e canais** o bot usará.

---

### 📝 Exemplo

```json
[
  {
    "name": "Curious Community",
    "guild_id": "1417067849926705235",
    "invite_id": "curious",
    "channels": {
      "raw_chat": {
        "1417068171243815002": "__random_message",
        "1417084328504197250": "Olá, pessoal!"
      },
      "command_chat": {
        "1417068171243815003": "/daily claim"
      },
      "image_chat": {
        "1435601397591703675": "Logo do Curious Browser"
      }
    },
    "enabled": true
  }
]
```

</details>

---

<details>
<summary><strong>▶️ Uso</strong></summary>

### 📌 Executar o bot

```bash
node index_meomundep.js
```

### ⬆️ Atualizar o bot

```bash
git pull
```

---

### 🔍 Como funciona

1. Lê as configurações de `configs.json`
2. Faz login com os tokens em `tokens.txt`
3. Aplica proxy para cada conta (se configurado)
4. Processa servidores e canais conforme `servers.json`
5. Envia mensagens, comandos ou imagens automaticamente
6. Sai de servidores se `leave_server` estiver ativo
7. Reinicia após o tempo configurado (`timeToRestartAllAccounts`)

</details>

---

## 📞 Suporte e Contato

* 🛒 **Apoie o projeto:** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **Contato:** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **Grupo:** [Entrar Aqui](https://t.me/KeoAirDropFreeNe)
* 📢 **Canal:** [Visitar Aqui](https://t.me/KeoAirDropFreeNee)

---

## 📜 Licença

❗ **Não copie nem redistribua este projeto.**
💀 **Use por sua própria conta e risco.**
🚫 **Não envie spam ou DMs indesejadas.**

---

<p align="center"><a href="#-discord-automation-bot-por-meomundep">⬆️ Voltar ao topo</a></p>
