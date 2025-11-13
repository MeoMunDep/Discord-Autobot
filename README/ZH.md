# 🤖 Discord 自动化机器人 by @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 概述

该机器人可自动化操作 **Discord**，包括发送消息、加入/离开服务器，以及使用**多个账号**和**代理支持**来处理消息。

---

## 🚀 功能特色

* 💬 **自动发送消息** — 向指定频道发送信息
* ➕ **自动加入服务器** — 通过邀请链接加入服务器
* ➖ **自动离开服务器** — 自动离开指定服务器
* 🌍 **代理支持** — 支持 HTTP(S) 与 SOCKS5 代理
* 🗑️ **自动删除消息** — 在设定延迟后删除已发送的消息
* 🌐 **多语言支持** — 可配置消息语言
* 📕 **错误日志** — 保存发生错误的服务器或频道 ID
* 🤖 **AI 回复** — 使用 AI 提供商（Groq、OpenRouter、Gemini、Poe）生成自然对话
* 🖼️ **图像生成** — 使用 Freepik API 生成并发送 AI 图像到频道
* 🎛️ **服务器控制** — 可启用/禁用单个服务器，无需删除配置

---

<details>
<summary><strong>🛠️ 安装</strong></summary>

### 📋 环境要求

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 下载链接：[Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 安装步骤

1. **克隆仓库：**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **安装依赖：**

   ```bash
   npm install
   ```

   ⚠️ 如果在 Windows 上遇到执行策略错误：

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   然后重新执行：

   ```bash
   npm install
   ```

3. **配置机器人：**
   编辑 `configs.json` 文件以符合你的偏好。

4. **准备输入文件：**

   * 📄 `tokens.txt` — Discord 令牌（一行一个）
   * 🆔 `servers.json` — 服务器详细信息，包括 guild ID、邀请码和频道配置
   * 🌐 `proxies.txt` — 代理（可选）
   * 📜 `messages.yaml` — 消息文本（支持多语言）
   * 🗂️ `error_channels.json` — 存储失败的频道/服务器（自动生成与更新）

📌 实用链接：

* 🔑 获取 Token：[点击这里](https://t.me/KeoAirDropFreeNee/1570)
* 💬 获取 Chat ID：[点击这里](https://t.me/KeoAirDropFreeNee/1569)
* 📡 获取 Channel/Server ID：[点击这里](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ 配置文件（configs.json）</strong></summary>

| ⚙️ 设置项                         | 📘 描述                                       |
| ------------------------------ | ------------------------------------------- |
| `maxAccountsAtOnce`            | 同时运行的账号数量                                   |
| `delayBetweenAccounts`         | 每个账号启动之间的延迟（秒）                              |
| `delayEachChannel`             | 不同频道间发送消息的延迟（秒）                             |
| `delayEachChat`                | 不同聊天间发送消息的延迟（秒）                             |
| `timeToRestartAllAccounts`     | 所有账号重启的时间间隔（秒）                              |
| `chat_language`                | 自动生成消息所使用的语言                                |
| `auto_chat`                    | 是否启用自动聊天                                    |
| `join_server`                  | 是否启用自动加入服务器                                 |
| `leave_server`                 | 是否启用自动离开服务器                                 |
| `delete_message`               | 是否启用消息发送后删除                                 |
| `enable_replies`               | 是否启用消息回复                                    |
| `enable_reactions`             | 是否启用表情反应                                    |
| `reaction_chance`              | 设置触发表情反应的几率（0–1）                            |
| `enable_ai_replies`            | 是否启用 AI 自动回复                                |
| `ai_providers.*`               | 各 AI 平台的 API 密钥（Groq、Gemini、Poe、OpenRouter） |
| `image_generation_providers.*` | 图像生成平台 API 密钥（Freepik）                      |

---

### 🧾 示例 `configs.json`

```json
{
  "maxAccountsAtOnce": 1,
  "delayBetweenAccounts": 17,
  "delayEachChat": [11, 15],
  "delayEachChannel": [17, 19],
  "timeToRestartAllAccounts": 360,

  "chat_language": "zh",

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
<summary><strong>🔑 API 密钥获取</strong></summary>

* **GROQ Key:** [创建密钥](https://console.groq.com/keys)
* **GEMINI Key:** [创建密钥](https://aistudio.google.com/app/apikey)
* **OPENROUTER Key:** [创建密钥](https://openrouter.ai/settings/keys)
* **POE Key:** [创建密钥](https://poe.com/api_key)
* **FREEPIK Key:** [创建密钥](https://api.freepik.com/v1/auth/create)

</details>

</details>

---

<details>
<summary><strong>🗂️ servers.json 文件结构（详细说明）</strong></summary>

`servers.json` 是机器人的核心配置文件，定义机器人应与哪些服务器交互以及每个频道要执行的操作。

---

## 📚 基本结构

```json
[
  {
    "name": "服务器名称",
    "guild_id": "1234567890123456789",
    "invite_id": "inviteCode",
    "channels": { ... },
    "enabled": true
  }
]
```

---

### 字段说明

* **`name`**：服务器名称，仅供识别
* **`guild_id`**：服务器 ID
* **`invite_id`**：邀请链接的代码（例如 discord.gg/altiuslabs → `"altiuslabs"`）
* **`enabled`**：是否启用该服务器配置
* **`channels`**：定义要执行的频道操作（发送消息、命令或图像）

---

## 🗨️ 频道类型

### 📝 `raw_chat` — 文本消息

```json
"raw_chat": {
  "CHANNEL_ID": "MESSAGE"
}
```

使用 `"__random_message"` 可随机选择或生成一条自然语言消息。

---

### 🤖 `command_chat` — 命令消息

```json
"command_chat": {
  "CHANNEL_ID": "/claim daily"
}
```

用于执行机器人命令（如 `/rewards`、`/daily claim` 等）。

---

### 🖼️ `image_chat` — AI 图像生成

```json
"image_chat": {
  "CHANNEL_ID": "Cyberpunk city at night"
}
```

通过 Freepik 或 Pollinations.ai 自动生成图像并发送至频道。

---

## 📋 示例

```json
[
  {
    "name": "Curious 社区",
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
        "1435601397591703675": "Curious browser logo"
      }
    },
    "enabled": true
  }
]
```

---

## ⚙️ 执行流程

1. 读取 `servers.json`
2. 检查 `enabled` 状态
3. 若启用自动加入，则使用 `invite_id` 加入服务器
4. 若启用自动聊天：

   * 执行 `raw_chat`（发送文字）
   * 执行 `command_chat`（执行命令）
   * 执行 `image_chat`（生成图像）
5. 若启用自动离开，则离开服务器

---

## 💡 建议与注意事项

✅ 建议：

* 使用清晰命名
* 暂时禁用可设置 `enabled: false`
* 使用 `"__random_message"` 让聊天更自然

❌ 不建议：

* 删除服务器配置
* 使用无效 JSON
* 漏掉逗号或引号

---

## 🐛 常见问题

| 问题       | 解决方案                                       |
| -------- | ------------------------------------------ |
| 机器人跳过服务器 | 检查 `enabled: true`                         |
| 无法加入服务器  | 检查 `invite_id` 与配置项                        |
| 不发送消息    | 确认频道 ID 与 `auto_chat: true`                |
| 无法生成图像   | 检查 Freepik API Key                         |
| JSON 报错  | 使用 [jsonlint.com](https://jsonlint.com) 验证 |

</details>

---

<details>
<summary><strong>▶️ 使用方法</strong></summary>

### 📌 运行机器人

```bash
node index_meomundep.js
```

### ⬆️ 更新机器人

```bash
git pull
```

---

### 🔍 工作流程

1. 读取配置文件
2. 使用 Token 登录
3. 应用代理（若存在）
4. 处理每个服务器：加入 → 发送消息 → 离开
5. 记录日志
6. 等待设定延迟
7. 定时重启循环

---

### 📝 日志说明

* 日志包含时间戳
* 不同颜色表示不同类型：
  🟢 成功 / 🔴 错误 / 🟡 警告 / 🔵 信息 / 🟣 处理中

---

### ⚠️ 注意事项

* 确保所有 Token 有效
* 使用代理以防限流
* 调整延迟参数避免封号
* 不要泄露 Token 或 API Key

</details>

---

## 📞 联系与支持

* 🛒 **支持我:** [链接1](https://t.me/KeoAirDropFreeNe/312/27801) • [链接2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **联系:** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **群组:** [加入群组](https://t.me/KeoAirDropFreeNe)
* 📢 **频道:** [访问频道](https://t.me/KeoAirDropFreeNee)

---

## 📜 许可证

❗ **请勿盗用或抄袭本项目。**
💀 **使用风险自负。**
🚫 **不要私信我问无意义问题。**

---

<p align="center"><a href="#-discord-自动化机器人-by-meomundep">⬆️ 返回顶部</a></p>
