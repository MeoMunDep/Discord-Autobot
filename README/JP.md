# 🤖 Discord 自動化ボット by @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 概要

このボットは **Discord** 上での操作を自動化します。
メッセージ送信、サーバー参加／退出、AI返信、プロキシを使用した複数アカウント管理などが可能です。

---

## 🚀 主な機能

* 💬 **自動メッセージ送信** — 指定チャンネルに自動でメッセージを送信
* ➕ **自動サーバー参加** — 招待リンク経由で自動参加
* ➖ **自動サーバー退出** — 設定されたサーバーから自動退出
* 🌍 **プロキシ対応** — HTTP(S) / SOCKS5 プロキシ対応
* 🗑️ **メッセージ自動削除** — 指定時間後に送信メッセージを削除
* 🌐 **多言語対応** — メッセージ言語を設定可能
* 📕 **エラーログ** — 失敗したサーバー／チャンネルを保存
* 🤖 **AI自動返信** — Groq, OpenRouter, Gemini, Poe などの AI による自動応答
* 🖼️ **画像生成** — Freepik API を使用して AI 画像を生成・送信
* 🎛️ **サーバー制御** — 各サーバーの自動化を個別にオン／オフ切り替え

---

<details>
<summary><strong>🛠️ インストール方法</strong></summary>

### 📋 必要環境

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 ダウンロード: [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 手順

1. **リポジトリをクローン:**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **依存関係をインストール:**

   ```bash
   npm install
   ```

   ⚠️ Windowsで *Execution Policy* エラーが出た場合:

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   その後再度:

   ```bash
   npm install
   ```

3. **設定を編集:**
   `configs.json` ファイルを好みに合わせて編集。

4. **入力ファイルを準備:**

   * 📄 `tokens.txt` — Discordトークン（1行につき1つ）
   * 🆔 `servers.json` — サーバー情報（guild ID, inviteコードなど）
   * 🌐 `proxies.txt` — プロキシ情報（任意）
   * 📜 `messages.yaml` — 多言語メッセージ
   * 🗂️ `error_channels.json` — 失敗ログ

📌 便利リンク:

* 🔑 トークン取得: [こちら](https://t.me/KeoAirDropFreeNee/1570)
* 💬 チャットID取得: [こちら](https://t.me/KeoAirDropFreeNee/1569)
* 📡 チャンネル／サーバーID取得: [こちら](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ 設定ファイル (configs.json)</strong></summary>

| ⚙️ 設定名                         | 📘 説明                |
| ------------------------------ | -------------------- |
| `maxAccountsAtOnce`            | 同時に動作するアカウント数        |
| `delayBetweenAccounts`         | 各アカウント起動の間隔（秒）       |
| `delayEachChannel`             | チャンネルごとのメッセージ送信間隔（秒） |
| `delayEachChat`                | チャットごとの送信間隔（秒）       |
| `timeToRestartAllAccounts`     | 全アカウント再起動までの時間（秒）    |
| `chat_language`                | 自動生成メッセージの言語         |
| `auto_chat`                    | 自動チャット機能のオン／オフ       |
| `join_server`                  | サーバー自動参加を有効化         |
| `leave_server`                 | サーバー自動退出を有効化         |
| `delete_message`               | 送信後にメッセージを削除         |
| `enable_replies`               | 自動返信を有効化             |
| `enable_reactions`             | 自動リアクションを有効化         |
| `reaction_chance`              | リアクション確率 (0–1)       |
| `enable_ai_replies`            | AI応答を有効化             |
| `ai_providers.*`               | 各AIプロバイダーのAPIキー      |
| `image_generation_providers.*` | AI画像生成プロバイダーのAPIキー   |

---

### 🧾 configs.json の例

```json
{
  "maxAccountsAtOnce": 1,
  "delayBetweenAccounts": 17,
  "delayEachChat": [11, 15],
  "delayEachChannel": [17, 19],
  "timeToRestartAllAccounts": 360,
  "chat_language": "ja",
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
<summary><strong>🗂️ servers.json 構成ガイド</strong></summary>

`servers.json` はボット動作の中核設定ファイルです。
どのサーバーで何をするかを定義します。

---

## 📚 基本構造

```json
[
  {
    "name": "Server Name",
    "guild_id": "1234567890123456789",
    "invite_id": "inviteCode",
    "channels": { ... },
    "enabled": true
  }
]
```

---

### 🗨️ チャンネルタイプ

#### 📝 `raw_chat` — 通常メッセージ

```json
"raw_chat": {
  "CHANNEL_ID": "__random_message"
}
```

#### 🤖 `command_chat` — ボットコマンド

```json
"command_chat": {
  "CHANNEL_ID": "/claim daily"
}
```

#### 🖼️ `image_chat` — AI画像生成

```json
"image_chat": {
  "CHANNEL_ID": "富士山の夕日"
}
```

---

### 📋 完全な例

```json
[
  {
    "name": "Curious Community",
    "guild_id": "1417067849926705235",
    "invite_id": "curious",
    "channels": {
      "raw_chat": {
        "1417068171243815002": "__random_message",
        "1417084328504197250": "こんにちは、みんな！"
      },
      "command_chat": {
        "1417068171243815003": "/daily claim"
      },
      "image_chat": {
        "1435601397591703675": "Curious ブラウザのロゴ"
      }
    },
    "enabled": true
  }
]
```

</details>

---

<details>
<summary><strong>▶️ 実行方法</strong></summary>

### 📌 ボット起動

```bash
node index_meomundep.js
```

### ⬆️ 更新

```bash
git pull
```

---

### 🔍 動作の流れ

1. `configs.json` を読み込み
2. `tokens.txt` のトークンでログイン
3. 各アカウントにプロキシを適用
4. `servers.json` のサーバー設定を実行
5. メッセージ／コマンド／画像を送信
6. サーバー退出（設定による）
7. 指定時間後に再起動

</details>

---

## 📞 サポート・連絡

* 🛒 **サポート:** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **連絡先:** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **コミュニティ:** [参加はこちら](https://t.me/KeoAirDropFreeNe)
* 📢 **チャンネル:** [閲覧はこちら](https://t.me/KeoAirDropFreeNee)

---

## 📜 ライセンス

❗ **このプロジェクトの無断コピー・盗用を禁止します。**
💀 **使用は自己責任で行ってください。**
🚫 **無意味な質問のDMはお断りします。**

---

<p align="center"><a href="#-discord-自動化ボット-by-meomundep">⬆️ ページの先頭へ戻る</a></p>
