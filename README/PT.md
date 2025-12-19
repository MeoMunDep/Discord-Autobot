# 🤖 Bot de Automação do Discord por @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 Visão Geral

Este bot automatiza interações no **Discord**, incluindo envio de mensagens, entrar/sair de servidores e manipular mensagens usando **múltiplas contas** com **suporte a proxy**.

---

## 🚀 Funcionalidades

* 💬 **Envio Automático de Mensagens** — Envia mensagens para canais especificados com atrasos personalizáveis
* 🔗 **Gestão de Canais de Submissão** — Sistema dedicado para submissão de posts do X/Twitter
* ➕ **Entrada Automática em Servidores** — Entra em servidores usando links de convite
* ➖ **Saída Automática de Servidores** — Sai de servidores especificados
* 🌍 **Suporte a Proxy** — Suporta proxies HTTP(S) e SOCKS5
* 🗑️ **Eliminação Automática de Mensagens** — Apaga mensagens enviadas após um atraso configurável
* 🌐 **Suporte Multilíngue** — Mensagens configuráveis por idioma
* 📕 **Registo de Erros** — Guarda IDs de servidores ou canais onde ocorreram erros
* 🤖 **Respostas por IA** — Gera respostas casuais usando provedores de IA (Groq, OpenRouter, Gemini, Poe, Grok)
* 🖼️ **Geração de Imagens** — Gera e envia imagens por IA para canais usando a API Freepik (com Pollinations.ai como fallback)
* 🎛️ **Controlo por Servidor** — Ativa/desativa servidores individualmente sem apagar a configuração
* ⚙️ **Modo Duplo de Operação** — Executa em modo normal (fluxo completo) ou modo apenas-submissão
* 🎮 **Suporte a Canais de Voz** — Entra e mantém presença em canais de voz
* 📊 **Gestão Interativa** — CLI incorporada para gestão de servidores, atrasos e erros
* 🚀 **Flags de CLI** — Substitui configurações com argumentos de linha de comando

---

<details>
<summary><strong>🛠️ Instalação</strong></summary>

### 📋 Requisitos

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 Transferência: [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 Passos

1. **Clona o repositório:**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **Instala dependências:**

   ```bash
   npm install
   ```

   ⚠️ Se aparecer um erro *Execution Policy* no Windows:

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   Depois execute novamente:

   ```bash
   npm install
   ```

3. **Configura o bot:**
   Edita o ficheiro `configs.json` conforme as tuas preferências.

4. **Prepara os ficheiros de entrada:**

   * 📄 `tokens.txt` — Tokens do Discord (um por linha)
   * 🆔 `servers.json` — Detalhes dos servidores incluindo IDs de guild, códigos de convite e configurações de canal (ver explicação detalhada abaixo)
   * 🌐 `proxies.txt` — Proxies (opcional, um por token)
   * 📜 `messages.yaml` — Mensagens (multi-idioma)
   * 🗂️ `error-channels.json` — Guarda canais/servidores com falha (gerado/atualizado automaticamente)

📌 Links úteis:

* 🔑 Obter tokens: [Aqui](https://t.me/KeoAirDropFreeNee/1570)
* 💬 Obter chat ID: [Aqui](https://t.me/KeoAirDropFreeNee/1569)
* 📡 Obter channel/server ID: [Aqui](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ Configuração (configs.json)</strong></summary>

| ⚙️ Definição                   | 📘 Descrição                                                                         |
| ------------------------------ | ------------------------------------------------------------------------------------ |
| `max_accounts_at_once`         | Número de contas a correr simultaneamente                                            |
| `delay_between_accounts`       | Atraso (em segundos) entre o início de cada conta                                    |
| `delay_each_channel`           | Intervalo [min, max] (em segundos) entre canais diferentes                           |
| `delay_each_chat`              | Intervalo [min, max] (em segundos) entre mensagens no mesmo canal                    |
| `time_to_restart_all_accounts` | Tempo (em segundos) antes de reiniciar todas as contas                               |
| `chat_language`                | Idioma usado para mensagens geradas automaticamente                                  |
| `ask_before_auto_chat`         | Pergunta ao utilizador para escolher o modo (submit_only/normal) antes de cada ciclo |
| `auto_chat`                    | Modo por defeito: true = modo normal, false = modo apenas-submissão                  |
| `submit_x_url`                 | Ativa/desativa submissão de URLs do X/Twitter em canais regulares                    |
| `join_server`                  | Ativa/desativa entrada automática em servidores                                      |
| `leave_server`                 | Ativa/desativa saída automática de servidores                                        |
| `delete_message`               | Ativa/desativa eliminação das mensagens após envio                                   |
| `enable_replies`               | Ativa/desativa respostas a mensagens                                                 |
| `enable_reactions`             | Ativa/desativa reações a mensagens                                                   |
| `reaction_chance`              | Probabilidade (0–1) de reagir a uma mensagem                                         |
| `enable_ai_replies`            | Ativa/desativa respostas geradas por IA                                              |
| `ai_reply_chance`              | Probabilidade (0–1) de usar IA para responder                                        |
| `ai_providers.*`               | Chaves API (arrays) para provedores de IA (Groq, Gemini, Poe, OpenRouter, Grok)      |
| `image_generation_providers.*` | Chaves API (arrays) para provedores de geração de imagem (Freepik)                   |
| `voice_chat.enabled`           | Ativa/desativa ligação a canal de voz                                                |
| `voice_chat.server_id`         | ID da guild para canal de voz                                                        |
| `voice_chat.channel_id`        | ID do canal de voz para conectar                                                     |
| `voice_chat.user_id`           | Teu user ID para a ligação de voz                                                    |

---

### 🧾 Exemplo `configs.json`

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

### 🔑 Chaves API Múltiplas

O bot suporta **múltiplas chaves API** para cada provedor. Irá selecionar aleatoriamente uma chave do array para cada pedido:

```json
"ai_providers": {
  "groq": ["key1", "key2", "key3"],
  "gemini": ["key1", "key2"]
}
```

Isto ajuda em:

* **Balanceamento de carga** entre várias contas API
* **Gestão de rate limits** distribuindo pedidos
* **Confiabilidade** — se uma chave falhar, outras podem ser usadas

---

<details>
<summary><strong>🔑 Chave API GROQ</strong></summary>

[Criar Chave](https://console.groq.com/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GROQ_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 Chave API GROK</strong></summary>

[Criar Chave](https://console.x.ai/api-keys)

**Nota:** A API Grok usa formato compatível com OpenAI. Obtém a tua chave no console X.AI.

</details>

<details>
<summary><strong>🔑 Chave API GEMINI</strong></summary>

[Criar Chave](https://aistudio.google.com/app/apikey)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GEMINI_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 Chave API OPENROUTER</strong></summary>

[Criar Chave](https://openrouter.ai/settings/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/OPENROUTER_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 Chave API POE</strong></summary>

[Criar Chave](https://poe.com/api_key)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/POE_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 Chave API FREEPIK</strong></summary>

[Criar Chave](https://api.freepik.com/v1/auth/create)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/FREEPIK_API_KEY.png?raw=true" width="600" />
</p>

</details>

</details>

---

<details>
<summary><strong>🗂️ Estrutura servers.json (GUIA DETALHADO)</strong></summary>

O ficheiro `servers.json` é o **coração da configuração** do teu bot. Define com que servidores interagir e que ações executar em cada canal.

---

## 📚 Estrutura Básica

O ficheiro deve ser um **array JSON** contendo objetos de servidor. Cada servidor representa um servidor Discord com o qual o bot irá interagir.

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

## 🔑 Explicação dos Campos

### 1️⃣ **`name`** (String - Obrigatório)

* **O que é:** Um nome amigável para o servidor (apenas referência)
* **Exemplo:** `"Curious"`, `"My Gaming Server"`, `"Crypto Community"`
* **Propósito:** Ajuda a identificar servidores nos logs e configuração

### 2️⃣ **`guild_id`** (String - Obrigatório)

* **O que é:** O ID único do servidor Discord
* **Como obter:** [Segue este guia](https://t.me/KeoAirDropFreeNee/1676)
* **Exemplo:** `"1417067849926705235"`
* **Propósito:** Usado para sair do servidor quando `leave_server: true` em configs

### 3️⃣ **`invite_id`** (String - Obrigatório)

* **O que é:** O código de convite para entrar no servidor
* **Exemplo:** `"altiuslabs"` (de discord.gg/altiuslabs)
* **Valores especiais:**

  * `""` (string vazia) - Não entrar neste servidor
  * `"none"` - Não entrar neste servidor
  * `"unknown"` - Não entrar neste servidor
* **Propósito:** Usado para entrar no servidor quando `join_server: true` nas configs

### 4️⃣ **`enabled`** (Boolean - Obrigatório)

* **O que é:** Controla se o bot processa este servidor
* **Valores:**

  * `true` - Bot processa este servidor (envia mensagens, entra, etc.)
  * `false` - Bot ignora este servidor completamente
* **Propósito:** Permite desativar temporariamente servidores sem apagar a configuração

### 5️⃣ **`channels`** (Object - Obrigatório)

Aqui defines o que o bot faz em cada canal. Tem **quatro categorias**:

---

## 🗨️ Tipos de Canal

### 🔗 **`submit_chat`** - Submissões X/Twitter (NOVO!)

**Propósito:** Tipo de canal dedicado para submissão de URLs do X/Twitter com atrasos personalizáveis.

**Formato:**

```json
"submit_chat": {
  "CHANNEL_ID": {
    "message": "https://x.com/yourpost",
    "delay": [6000, 12000]
  }
}
```

**Campos:**

* `message` (String): A URL do X/Twitter a submeter
* `delay` (Array): [min, max] cooldown em segundos antes do bot poder postar novamente neste canal
* `enabled` (Boolean, Opcional): Define `false` para desativar este canal sem removê-lo

**Exemplo:**

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

**Como funciona:**

* O bot processa estes canais apenas em **modo submit-only** ou em **modo normal**
* Cada canal tem o seu próprio temporizador de cooldown rastreado independentemente
* URLs são submetidas exatamente como fornecidas
* Se `submit_x_url: false` nas configs, URLs do X/Twitter em canais regulares são ignoradas

---

### 📝 **`raw_chat`** - Mensagens de Texto

Envia mensagens de texto regulares aos canais.

**Formato (Simples):**

```json
"raw_chat": {
  "CHANNEL_ID": "MESSAGE_TO_SEND"
}
```

**Formato (Avançado com Opções):**

```json
"raw_chat": {
  "CHANNEL_ID": {
    "message": "MESSAGE_TO_SEND",
    "delay": [60, 120],
    "enabled": true
  }
}
```

**Valores Especiais:**

* `"__random_message"` - O bot usará IA ou mensagem aleatória do messages.yaml
* `"[AI] Your instruction"` - O bot usará IA com a tua instrução personalizada
* Qualquer texto específico - O bot envia exatamente esse texto (ex.: `"gm"`, `"Hello!"`)

**Exemplo:**

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

**O que acontece:**

* No canal `1417068171243815002`: O bot usa IA com a instrução "Respond to random messages"
* No canal `1417084328504197250`: O bot envia "gm" a cada 6000-12000 segundos
* No canal `9876543210987654321`: O bot envia mensagem AI aleatória

---

### 🤖 **`command_chat`** - Comandos de Bot

Envia comandos slash ou comandos de bot para canais.

**Formato:**

```json
"command_chat": {
  "CHANNEL_ID": {
    "command": "COMMAND_TO_EXECUTE",
    "delay": [60, 120]
  }
}
```

**Exemplo:**

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

### 🖼️ **`image_chat`** - Imagens Geradas por IA

Gera e envia imagens por IA para canais usando a API Freepik (com fallback automático para Pollinations.ai).

**Formato:**

```json
"image_chat": {
  "CHANNEL_ID": {
    "prompt": "IMAGE_GENERATION_PROMPT",
    "delay": [60, 120]
  }
}
```

**Exemplo:**

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

**Requisitos:**

* Deve ter chave Freepik configurada em `configs.json`
* Se o Freepik falhar ou não houver chave, o bot usa automaticamente Pollinations.ai (gratuito, sem chave)

---

## 📋 Exemplo Completo

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

## ⏱️ Sistema de Atrasos

O bot usa um **sistema inteligente de cooldown** para evitar spam e limites de taxa:

### 📊 Prioridade de Atrasos (do mais alto para o mais baixo):

1. **Atraso específico do canal** (em servers.json)

   ```json
   "1234567890": {
     "message": "gm",
     "delay": [300, 600]  ← Isto tem prioridade
   }
   ```

2. **Atraso global delay_each_chat** (em configs.json)

   ```json
   "delay_each_chat": [10, 15]  ← Fallback se o canal não tiver delay
   ```

### 🔄 Como funciona:

* Cada canal tem o seu próprio **temporizador de cooldown independente**
* O temporizador inicia após **envio bem-sucedido** de mensagem
* O bot verifica se o período de cooldown passou antes de enviar a próxima mensagem
* Se o cooldown estiver ativo, o bot ignora o canal e regista o tempo restante
* Os cooldowns são **persistentes** e rastreados em `chat-timestamps.json`

### 💡 Dicas:

* Usa atrasos maiores (3600-7200s) para canais de baixa atividade
* Usa atrasos menores (60-300s) para canais de alto envolvimento
* Os canais de submissão tipicamente usam delays de 6000-12000s
* Geração de imagens deve usar delays maiores (7200-10000s) devido a custos de API

---

## 💡 Dicas & Boas Práticas

### ✅ FAZER:

* Usa nomes descritivos para servidores para identificar facilmente
* Define `enabled: false` para desativar servidores temporariamente sem perder configuração
* Define `enabled: false` em canais individuais para desativá-los
* Usa atrasos específicos por canal para melhor controlo
* Usa o formato `"[AI] instruction"` para respostas IA personalizadas
* Usa `submit_chat` para URLs do X/Twitter em vez de canais regulares
* Testa com um servidor primeiro antes de adicionar múltiplos servidores
* Usa atrasos maiores para geração de imagens para poupar custos de API

### ❌ NÃO FAZER:

* Não apagues entradas de servidor — usa `enabled: false` em vez disso
* Não te esqueças de adicionar delays a canais (o bot usará padrões, mas é melhor explicitar)
* Não uses delays muito curtos (< 60s) para evitar rate limits
* Não coloques IDs de canal entre aspas dentro de objetos (são strings) — (nota: em JSON são strings, portanto as aspas são necessárias neste ficheiro)
* Não te esqueças das vírgulas entre objetos em arrays
* Não uses sintaxe JSON inválida (usa um validador JSON se estiveres em dúvida)

---

## 🔍 Encontrar IDs de Canais

1. Ativa o Developer Mode no Discord (Settings → Advanced → Developer Mode)
2. Clica com o botão direito em qualquer canal
3. Clica em "Copy Channel ID"
4. Cola o ID em `servers.json`

[Guia Visual](https://t.me/KeoAirDropFreeNee/1676)

---

## 🐛 Resolução de Problemas

| Problema                                    | Solução                                                                     |
| ------------------------------------------- | --------------------------------------------------------------------------- |
| Bot ignora servidor                         | Verifica se `enabled: true` está definido no servidor                       |
| Bot ignora canal específico                 | Verifica se o canal não tem `enabled: false`                                |
| Bot não entra no servidor                   | Verifica se `invite_id` está correto e `join_server: true` nas configs      |
| Bot não envia mensagens                     | Verifica se os IDs de canal estão corretos e `auto_chat: true` nas configs  |
| Mensagens enviadas com demasiada frequência | Adiciona ou aumenta os valores de `delay` nas configurações do canal        |
| Imagens não são geradas                     | Verifica a chave Freepik em `configs.json` (ou o bot usará Pollinations.ai) |
| Canais de submissão não funcionam           | Verifica se estás a correr em modo correto (submit-only ou normal)          |
| Erro de sintaxe JSON                        | Usa um validador JSON como jsonlint.com                                     |

</details>

---

<details>
<summary><strong>▶️ Utilização</strong></summary>

### 📌 Executar o bot

**Uso básico:**

```bash
node index_meomundep.js
```

**Com flags de CLI:**

```bash
# Forçar modo apenas-submissão (somente submit_chat)
node index_meomundep.js --submit
node index_meomundep.js -s

# Forçar modo normal (fluxo completo)
node index_meomundep.js --chat
node index_meomundep.js -c

# Mostrar ajuda
node index_meomundep.js --help
node index_meomundep.js -h
```

### 🎮 Modos de Operação

O bot suporta **dois modos de operação**:

#### 1️⃣ **Modo Normal** (Fluxo Completo)

* Entra em servidores (se `join_server: true`)
* Processa TODOS os tipos de canal: `submit_chat`, `raw_chat`, `command_chat`, `image_chat`
* Sai de servidores (se `leave_server: true`)
* Usa IA para geração de mensagens

**Ativar com:**

* CLI: `node index_meomundep.js --chat`
* Config: `"auto_chat": true` (padrão)
* Runtime: Seleciona a opção `2` quando for perguntado (se `ask_before_auto_chat: true`)

#### 2️⃣ **Modo Apenas-Submissão**

* Ignora entrar/sair em servidores
* **Só** processa canais `submit_chat`
* Ignora `raw_chat`, `command_chat`, `image_chat`
* Ideal para tarefas dedicadas a submissão de URLs do X/Twitter

**Ativar com:**

* CLI: `node index_meomundep.js --submit`
* Config: `"auto_chat": false`
* Runtime: Seleciona a opção `1` quando for perguntado (se `ask_before_auto_chat: true`)

### 🔄 Prioridade de Modo (do mais alto para o mais baixo):

1. **Flags de CLI** (--submit ou --chat)
2. **Prompt ao utilizador** (se `ask_before_auto_chat: true`)
3. **Configuração** (`auto_chat`)

### 📊 Gestão Interativa

O bot inclui um sistema de gestão acessível por:

```bash
node index_meomundep.js
# Depois seleciona "Server Manager" no menu principal
```

**Funcionalidades de Gestão:**

🖥️ **Menu Principal:**

1. Gestão de Servidores (ativar/desativar servidores)
2. Gestão de Atrasos (adicionar/mostrar delays)
3. Gestão de Submissões (links X)
4. Gestão de Canais com Erro
5. Sair

📡 **Gestão de Servidores:**

* Ativar/desativar todos os servidores de uma vez
* Ativar/desativar servidores específicos
* Ativar APENAS um servidor (desativar todos os outros)
* Mostrar resumo do estado dos servidores

⏱️ **Gestão de Atrasos:**

* Adicionar atrasos padrão a canais que não têm
* Adicionar atrasos personalizados
* Mostrar estatísticas de delays
* Listar valores de delay únicos em uso

🔗 **Gestão de Submissões:**

* Listar todos os canais de submissão
* Adicionar novo canal de submissão
* Editar URLs de submissão
* Remover canais de submissão
* Mostrar estatísticas de submissão

🚫 **Gestão de Canais com Erro:**

* Ver todos os canais com erro por token
* Apagar canais de erro específicos
* Apagar entradas de token inteiras
* Limpar registos de canais com falha

### ⬆️ Atualizar o bot

```bash
git pull
npm install
```

---

### 🔍 Como Funciona

1. **Lê a configuração** de `configs.json`
2. **Verifica flags de CLI** (--submit, --chat, --help)
3. **Pede ao utilizador** (se `ask_before_auto_chat: true` e sem flag CLI)
4. **Determina o modo** (apenas-submissão ou normal)
5. **Faz login** usando tokens de `tokens.txt`
6. **Aplica proxy** por conta (se disponível em `proxies.txt`)
7. **Processa cada servidor** de `servers.json`:

   * ✅ Verifica se `enabled: true` está ativo
   * ✅ Verifica se o canal não tem `enabled: false`
   * ✅ Verifica timer de cooldown antes de enviar
   * **No modo normal:**

     * ➕ Entra no servidor (usando `invite_id`) se `join_server: true`
     * 💬 Processa todos os tipos de canal
     * ➖ Sai do servidor (usando `guild_id`) se `leave_server: true`
   * **No modo apenas-submissão:**

     * 🔗 Processa apenas canais `submit_chat`
     * ⏭️ Ignora join/leave e outros tipos de canal
8. **Regista cada evento** com timestamps e output colorido
9. **Guarda timestamps** para evitar posts duplicados durante cooldown
10. **Espera os atrasos** entre ações
11. **Repete automaticamente** depois de `time_to_restart_all_accounts` segundos

---

### 📝 Logs e Timestamps

* Cada entrada de log inclui um timestamp
* Formato do timestamp segue a configuração `chat_language`
* Logs coloridos para leitura fácil:

  * 🟢 Verde - Sucesso
  * 🔴 Vermelho - Erro
  * 🟡 Amarelo - Aviso
  * 🔵 Azul - Info
  * 🟣 Roxo - Processamento
  * 🔶 Laranja - Ações IA/Provedor

---

### 🎙️ Suporte a Canal de Voz

O bot pode entrar e manter presença em canais de voz:

```json
"voice_chat": {
  "enabled": true,
  "server_id": "1234567890123456789",
  "channel_id": "9876543210987654321",
  "user_id": "1111222233334444555"
}
```

**Funcionalidades:**

* Ligação automática a canais de voz
* Mecanismo heartbeat para manter conexão
* Reconexão automática em caso de desconexão (até 5 tentativas com backoff exponencial)
* Suporte ao protocolo WebRTC
* Desligamento limpo e seguro

**Requisitos:**

* Deve ter permissão para entrar no canal de voz
* O token deve ter acesso ao servidor especificado
* O user ID deve corresponder ao token usado

---

### ⚠️ Notas Importantes

* ✅ Assegura que todos os tokens são válidos e têm permissões necessárias
* 🌐 Usa proxies para evitar rate limits ou bans (recomenda-se um proxy por token)
* ⏱️ Ajusta os atrasos com cuidado para conjuntos maiores de contas
* 📊 Monitoriza logs para erros e ajusta `servers.json` conforme necessário
* 🔒 Mantém os teus tokens e chaves API privados e seguros
* 🚫 Não partilhes o ficheiro `tokens.txt` com ninguém
* 💾 O bot grava automaticamente erros em `error-channels.json` para evitar re-tentativas em canais com falha
* 🔄 Usa o modo apenas-submissão para tarefas dedicadas de submissão de URLs
* 🎯 Define cooldowns apropriados por canal para evitar detecção de spam
* 🤖 Os provedores de IA são tentados em sequência até um ter sucesso
* 📸 A geração de imagem recorre automaticamente a serviço gratuito se o Freepik falhar
* ⚡ Flags de CLI sobrescrevem todas as outras definições nessa execução

</details>

---

## 📞 Contacto & Suporte

* 🛒 **Apoia-me:** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **Contacto:** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **Grupo:** [Junta-te ao Grupo](https://t.me/KeoAirDropFreeNe)
* 📢 **Canal:** [Visita o Canal](https://t.me/KeoAirDropFreeNee)

---

⚠️ **Aviso**

Este projeto foi criado exclusivamente como um **exercício educativo pessoal**.
Não é um produto oficial, site ou serviço de qualquer empresa ou marca referenciada no repositório.
O autor **não está afiliado, associado, endossado, nem ligado** a qualquer empresa ou marca mencionada.

O código é fornecido **"tal como está"** sem garantias.
Partes do código podem estar intencionalmente **ofuscadas** para proteger investigação pessoal, lógica customizada e técnicas de implementação desenvolvidas durante o aprendizado.

Usa este projeto de forma responsável e por tua conta e risco.
**Redistribuição, revenda ou uso comercial** de qualquer parte deste código—original ou modificado—não é permitida.

---

<p align="center"><a href="#-bot-de-automação-do-discord-por-meomundep">⬆️ Voltar ao topo</a></p>
