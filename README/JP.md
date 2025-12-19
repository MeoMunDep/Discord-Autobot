# 🤖 Discord 自動化ボット by @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 概要

このボットは **Discord** 上の操作（指定チャンネルへのメッセージ送信、サーバー参加/退室、複数アカウントの取り扱い、プロキシ対応など）を自動化します。

---

## 🚀 機能

* 💬 **自動メッセージ送信** — カスタマイズ可能な遅延を付けて指定チャンネルへメッセージを送信
* 🔗 **Submit チャンネル管理** — X/Twitter 投稿を専用で投稿する仕組み
* ➕ **自動サーバー参加** — 招待リンクからサーバーに参加
* ➖ **自動サーバー退室** — 指定したサーバーから退室
* 🌍 **プロキシ対応** — HTTP(S) / SOCKS5 プロキシをサポート
* 🗑️ **自動メッセージ削除** — 指定遅延後に送信したメッセージを削除
* 🌐 **多言語対応** — メッセージの言語設定可能
* 📕 **エラーログ** — 問題が発生したサーバー／チャンネルIDを保存
* 🤖 **AI 応答** — AI プロバイダ（Groq, OpenRouter, Gemini, Poe, Grok）でカジュアルな返信を生成
* 🖼️ **画像生成** — Freepik API（Pollinations.ai フォールバックあり）で画像生成してチャンネルへ送信
* 🎛️ **サーバーコントロール** — 設定を削除せずにサーバー単位で有効/無効を切り替え
* ⚙️ **デュアルモード動作** — 通常フロー（Full flow）か Submit のみモードで実行可能
* 🎮 **ボイスチャット対応** — ボイスチャンネルに参加して滞在可能
* 📊 **インタラクティブ管理** — サーバー・遅延・エラー管理用の組み込み CLI メニュー
* 🚀 **CLI フラグ** — コマンドライン引数で設定を上書き可能

---

<details>
<summary><strong>🛠️ インストール</strong></summary>

### 📋 要件

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 ダウンロード: [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 手順

1. **リポジトリをクローン：**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **依存関係をインストール：**

   ```bash
   npm install
   ```

   ⚠️ Windows で *Execution Policy* エラーが出た場合：

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   その後再度：

   ```bash
   npm install
   ```

3. **ボットを設定：**
   `configs.json` を編集して好みに合わせてください。

4. **入力ファイルの準備：**

   * 📄 `tokens.txt` — Discord トークン（1 行に 1 つ）
   * 🆔 `servers.json` — ギルドID、招待コード、チャンネル設定等（下記で詳細説明）
   * 🌐 `proxies.txt` — プロキシ（オプション、トークンごとに 1 つ）
   * 📜 `messages.yaml` — メッセージ（多言語対応）
   * 🗂️ `error-channels.json` — 失敗したチャンネル／サーバーを保存（自動生成・更新）

📌 参考リンク：

* 🔑 トークン入手: [Here](https://t.me/KeoAirDropFreeNee/1570)
* 💬 チャットID取得: [Here](https://t.me/KeoAirDropFreeNee/1569)
* 📡 チャンネル／サーバーID取得: [Here](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ 設定（configs.json）</strong></summary>

| ⚙️ 設定項目                        | 📘 説明                                                    |
| ------------------------------ | -------------------------------------------------------- |
| `max_accounts_at_once`         | 同時に実行するアカウント数                                            |
| `delay_between_accounts`       | 各アカウント開始間の遅延（秒）                                          |
| `delay_each_channel`           | チャンネル間の遅延範囲（秒）[min, max]                                 |
| `delay_each_chat`              | 同じチャンネル内でのメッセージ間の遅延範囲（秒）[min, max]                       |
| `time_to_restart_all_accounts` | 全アカウントを再起動するまでの時間（秒）                                     |
| `chat_language`                | 自動生成メッセージの言語                                             |
| `ask_before_auto_chat`         | サイクルごとにモード（submit_only / normal）を選ぶプロンプトを表示するか           |
| `auto_chat`                    | デフォルトモード：true = normal、false = submit_only               |
| `submit_x_url`                 | 通常チャンネルでの X/Twitter URL 投稿を有効化/無効化                       |
| `join_server`                  | サーバー参加を有効/無効                                             |
| `leave_server`                 | サーバー退室を有効/無効                                             |
| `delete_message`               | 送信後のメッセージ削除を有効/無効                                        |
| `enable_replies`               | メッセージへの返信を有効/無効                                          |
| `enable_reactions`             | メッセージへのリアクションを有効/無効                                      |
| `reaction_chance`              | リアクション付与確率（0–1）                                          |
| `enable_ai_replies`            | AI 応答を有効/無効                                              |
| `ai_reply_chance`              | AI を使って返信する確率（0–1）                                       |
| `ai_providers.*`               | AI プロバイダ用 API キーの配列（Groq, Gemini, Poe, OpenRouter, Grok） |
| `image_generation_providers.*` | 画像生成プロバイダ用 API キー（Freepik）                               |
| `voice_chat.enabled`           | ボイスチャット接続を有効/無効                                          |
| `voice_chat.server_id`         | ボイス接続先ギルド ID                                             |
| `voice_chat.channel_id`        | ボイス接続先チャンネル ID                                           |
| `voice_chat.user_id`           | ボイス接続で使用するユーザー ID                                        |

---

### 🧾 `configs.json` の例

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

### 🔑 複数 API キーの扱い

ボットは各プロバイダに対して **複数の API キー配列** をサポートし、リクエストごとにランダムでキーを選択します：

```json
"ai_providers": {
  "groq": ["key1", "key2", "key3"],
  "gemini": ["key1", "key2"]
}
```

利点：

* **負荷分散**（複数アカウント間で振り分け）
* **レート制限対策**（リクエストを分散）
* **信頼性向上**（1 つのキーが失敗しても他で試行）

---

<details>
<summary><strong>🔑 GROQ API キー</strong></summary>

[キー作成](https://console.groq.com/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GROQ_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 GROK API キー</strong></summary>

[キー作成](https://console.x.ai/api-keys)

**注意：** Grok API は OpenAI 互換のフォーマットを使用します。X.AI コンソールからキーを取得してください。

</details>

<details>
<summary><strong>🔑 GEMINI API キー</strong></summary>

[キー作成](https://aistudio.google.com/app/apikey)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GEMINI_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 OPENROUTER API キー</strong></summary>

[キー作成](https://openrouter.ai/settings/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/OPENROUTER_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 POE API キー</strong></summary>

[キー作成](https://poe.com/api_key)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/POE_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 FREEPIK API キー</strong></summary>

[キー作成](https://api.freepik.com/v1/auth/create)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/FREEPIK_API_KEY.png?raw=true" width="600" />
</p>

</details>

</details>

---

<details>
<summary><strong>🗂️ servers.json 構造（詳細ガイド）</strong></summary>

`servers.json` は **ボット設定の中核** です。どのサーバーで何を行うかを定義します。

---

## 📚 基本構造

このファイルはサーバーオブジェクトの **JSON 配列** です。各オブジェクトはボットが操作するサーバーを表します。

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

## 🔑 フィールドの説明

### 1️⃣ **`name`**（文字列 - 必須）

* **説明：** サーバーの表示名（参照用）
* **例：** `"Curious"`, `"My Gaming Server"`, `"Crypto Community"`
* **用途：** ログや設定でサーバーを識別するため

### 2️⃣ **`guild_id`**（文字列 - 必須）

* **説明：** Discord サーバーのユニーク ID
* **取得方法：** 上記リンクのガイド参照
* **例：** `"1417067849926705235"`

### 3️⃣ **`invite_id`**（文字列 - 必須）

* **説明：** サーバー招待コード
* **例：** `"altiuslabs"`（discord.gg/altiuslabs の code 部分）
* **特別な値：**

  * `""`（空文字） - このサーバーには参加しない
  * `"none"` - 参加しない
  * `"unknown"` - 参加しない

### 4️⃣ **`enabled`**（真偽値 - 必須）

* **説明：** ボットがこのサーバーを処理するかどうか
* **値：** `true` = 処理する、`false` = スキップ

### 5️⃣ **`channels`**（オブジェクト - 必須）

チャンネルごとの動作を定義します。以下の **4 種類** のカテゴリがあります：

---

## 🗨️ チャンネルタイプ

### 🔗 **`submit_chat`** - X/Twitter 投稿用（NEW!）

**目的：** X/Twitter 投稿リンクを専用に投稿するチャンネルタイプ。遅延設定可能。

**フォーマット：**

```json
"submit_chat": {
  "CHANNEL_ID": {
    "message": "https://x.com/yourpost",
    "delay": [6000, 12000]
  }
}
```

**フィールド：**

* `message`（文字列）：投稿する X/Twitter の URL
* `delay`（配列）：次回投稿までのクールダウン（秒）[min, max]
* `enabled`（真偽値、オプション）：個別チャンネルを無効化可能

**例：**

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

**動作：**

* Submit-only モードまたは Normal モードで処理される
* 各チャンネルごとにクールダウンを独立管理
* `submit_x_url: false` の場合、通常チャンネル内の X/Twitter URL はスキップ

---

### 📝 **`raw_chat`** - テキストメッセージ

通常のテキストメッセージを送信します。

**シンプルフォーマット：**

```json
"raw_chat": {
  "CHANNEL_ID": "MESSAGE_TO_SEND"
}
```

**オプション付きフォーマット：**

```json
"raw_chat": {
  "CHANNEL_ID": {
    "message": "MESSAGE_TO_SEND",
    "delay": [60, 120],
    "enabled": true
  }
}
```

**特殊値：**

* `"__random_message"` - AI または messages.yaml のランダムメッセージを使用
* `"[AI] Your instruction"` - 指定の AI 命令で生成
* 任意のテキスト - そのまま送信（例："gm", "Hello!"）

**例：**

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

**動作：**

* `1417068171243815002` では "Respond to random messages" の命令で AI を使用
* `1417084328504197250` では 6000–12000 秒ごとに "gm" を送信
* `9876543210987654321` では AI によるランダムメッセージを送信

---

### 🤖 **`command_chat`** - コマンド実行

スラッシュコマンドや BOT コマンドを送信します。

**フォーマット：**

```json
"command_chat": {
  "CHANNEL_ID": {
    "command": "COMMAND_TO_EXECUTE",
    "delay": [60, 120]
  }
}
```

**例：**

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

### 🖼️ **`image_chat`** - AI 生成画像

Freepik API（Failover: Pollinations.ai）を使って生成した画像をチャンネルへ送信します。

**フォーマット：**

```json
"image_chat": {
  "CHANNEL_ID": {
    "prompt": "IMAGE_GENERATION_PROMPT",
    "delay": [60, 120]
  }
}
```

**例：**

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

**要件：**

* `configs.json` に `freepik` API キーが必要
* Freepik が失敗するかキーがない場合、自動的に Pollinations.ai を使用

---

## 📋 完全な例

```json
[ ...（前述の例と同じ構造）... ]
```

（上記例は実際の JSON をそのまま使用してください）

---

## ⏱️ 遅延システム

ボットは **スマートクールダウンシステム** を使い、スパムやレート制限を回避します。

### 📊 遅延の優先順位（高 → 低）

1. **チャンネル固有の遅延**（servers.json 内）
2. **グローバル `delay_each_chat`**（configs.json 内） — チャンネルに遅延がない場合のフォールバック

### 🔄 動作概要：

* 各チャンネルに独立したクールダウンタイマーがある
* メッセージ送信成功後にタイマーが開始
* クールダウン中はそのチャンネルをスキップし、残り時間をログに出力
* クールダウンは `chat-timestamps.json` に保存して永続化

### 💡 ヒント：

* 低アクティビティのチャンネルには長めの遅延（3600–7200 秒）を推奨
* 高エンゲージメントのチャンネルには短め（60–300 秒）を利用可能
* Submit チャンネルは通常 6000–12000 秒
* 画像生成は API コストのため長めの遅延（7200–10000 秒）推奨

---

## 💡 ベストプラクティス

### ✅ 推奨：

* サーバー名は判別しやすくする
* 一時的に無効化する場合は `enabled: false` を使う（削除しない）
* チャンネル個別に `enabled: false` を設定して無効化可能
* チャンネル固有の遅延を設定して細かく制御
* `"[AI] instruction"` フォーマットでカスタム AI 応答を作る
* X 投稿は `submit_chat` で管理する
* 最初は 1 サーバーでテストしてから追加する
* 画像生成は API コストに注意して遅延を長めに設定

### ❌ NG：

* サーバー項目を削除する代わりに `enabled: false` を使う
* 遅延を指定しない（デフォルトはあるが明示した方が安全）
* 非常に短い遅延（< 60 秒）を設定してレート制限や検出リスクを高める
* `tokens.txt` を他人と共有しない（機密情報扱い）

---

## 🔍 チャンネルIDの取得方法

1. Discord の「開発者モード」を有効化（設定 → 詳細 → Developer Mode）
2. 任意のチャンネルを右クリック
3. 「チャンネルIDをコピー」を選択
4. `servers.json` に貼り付け

[ビジュアルガイド](https://t.me/KeoAirDropFreeNee/1676)

---

## 🐛 トラブルシューティング

| 問題                 | 解決策                                                                 |
| ------------------ | ------------------------------------------------------------------- |
| ボットがサーバーをスキップする    | `enabled: true` が設定されているか確認                                         |
| 特定チャンネルをスキップする     | チャンネルが `enabled: false` になっていないか確認                                  |
| サーバーに参加できない        | `invite_id` と `join_server: true` を確認                               |
| メッセージが送信されない       | チャンネル ID と `auto_chat: true` を確認                                    |
| メッセージが頻繁すぎる        | チャンネルに遅延を追加または増やす                                                   |
| 画像が生成されない          | `freepik` API キーが `configs.json` にあるか確認（なければ Pollinations にフォールバック） |
| Submit チャンネルが動作しない | 実行モードが Submit-only か確認                                              |
| JSON 構文エラー         | jsonlint.com 等でバリデートする                                              |

</details>

---

<details>
<summary><strong>▶️ 使い方</strong></summary>

### 📌 ボットの起動

**基本：**

```bash
node index_meomundep.js
```

**CLI フラグ付き：**

```bash
# Submit-only モード（submit_chat のみ）
node index_meomundep.js --submit
node index_meomundep.js -s

# Normal モード（フルフロー：join, chat, leave）
node index_meomundep.js --chat
node index_meomundep.js -c

# ヘルプ表示
node index_meomundep.js --help
node index_meomundep.js -h
```

### 🎮 動作モード

#### 1️⃣ **Normal Mode（フルフロー）**

* サーバー参加（`join_server: true` の場合）
* 全チャンネルタイプ（`submit_chat`, `raw_chat`, `command_chat`, `image_chat`）を処理
* サーバー退室（`leave_server: true` の場合）
* AI でメッセージ生成を行う

**有効化方法：**

* CLI：`node index_meomundep.js --chat`
* 設定：`"auto_chat": true`（デフォルト）
* 実行時プロンプト：`ask_before_auto_chat: true` の場合にオプション 2 を選択

#### 2️⃣ **Submit-Only Mode**

* サーバー参加/退室をスキップ
* **`submit_chat` のみ** を処理
* `raw_chat`, `command_chat`, `image_chat` は無視
* X 投稿専用のタスクに最適

**有効化方法：**

* CLI：`node index_meomundep.js --submit`
* 設定：`"auto_chat": false`
* 実行時プロンプト：`ask_before_auto_chat: true` の場合にオプション 1 を選択

### 🔄 モード優先順位（高 → 低）

1. **CLI フラグ**（--submit / --chat）
2. **実行時プロンプト**（`ask_before_auto_chat: true` の場合）
3. **設定ファイル**（`auto_chat` の値）

### 📊 インタラクティブ管理

起動後のメニューから各種管理が可能：

```bash
node index_meomundep.js
# メインメニューで "Server Manager" を選択
```

**管理機能：**

🖥️ **メインメニュー：**

1. サーバー管理（有効/無効切替）
2. 遅延管理（追加/表示）
3. Submit 管理（X 投稿リンク）
4. エラーチャンネル管理
5. 終了

📡 **サーバー管理：**

* 全サーバー一括有効/無効
* 特定サーバーの有効/無効切替
* 一つだけ有効にする（他を無効化）
* サーバーの状態概要表示

⏱️ **遅延管理：**

* 遅延が未設定のチャンネルにデフォルト遅延を追加
* カスタム遅延の追加
* 遅延の統計表示
* 利用中のユニークな遅延値一覧

🔗 **Submit 管理：**

* Submit チャンネル一覧表示
* 新しい Submit チャンネル追加
* Submit URL 編集
* Submit チャンネル削除
* Submit 統計表示

🚫 **エラーチャンネル管理：**

* トークン別の失敗チャンネルを表示
* 特定のエラーチャンネル削除
* トークンのエントリ全削除
* 失敗記録のクリーンアップ

### ⬆️ ボットの更新

```bash
git pull
npm install
```

---

### 🔍 動作の仕組み（要約）

1. `configs.json` を読み込む
2. CLI フラグを確認（--submit, --chat, --help）
3. 実行時プロンプト（`ask_before_auto_chat: true` の場合）
4. 実行モードを決定（submit-only / normal）
5. `tokens.txt` のトークンでログイン
6. `proxies.txt` があればアカウントごとにプロキシを適用
7. `servers.json` の各サーバーを処理：

   * ✅ `enabled: true` をチェック
   * ✅ チャンネルが `enabled: false` でないことをチェック
   * ✅ クールダウンが経過しているかチェック
   * **Normal Mode の場合：**

     * ➕ `invite_id` で参加（`join_server: true`）
     * 💬 全チャンネルタイプを処理
     * ➖ `guild_id` で退室（`leave_server: true`）
   * **Submit-Only Mode の場合：**

     * 🔗 `submit_chat` のみ処理
     * ⏭️ 参加/退室や他チャンネルタイプはスキップ
8. イベントをログに記録（タイムスタンプ付き）
9. 送信タイムスタンプを保存して重複投稿を防止
10. 各処理後に遅延を待機
11. `time_to_restart_all_accounts` 秒後に自動で繰り返し

---

### 📝 ログとタイムスタンプ

* 各ログはタイムスタンプ付き
* タイムスタンプは `chat_language` 設定に従う
* カラー出力（視認性を高める）：

  * 🟢 成功
  * 🔴 エラー
  * 🟡 警告
  * 🔵 情報
  * 🟣 処理中
  * 🔶 AI / プロバイダ関連

---

### 🎙️ ボイスチャット対応

ボイスチャンネルに接続して滞在できます：

```json
"voice_chat": {
  "enabled": true,
  "server_id": "1234567890123456789",
  "channel_id": "9876543210987654321",
  "user_id": "1111222233334444555"
}
```

**機能：**

* 自動接続
* ハートビートで接続を維持
* 切断時自動再接続（最大 5 回、指数バックオフ）
* WebRTC サポート
* クリーンな切断処理

**注意：**

* ボイスチャネルに参加する権限が必要
* トークンがそのサーバーにアクセスできる必要あり
* `user_id` はトークンに紐づくユーザーの ID と一致させること

---

### ⚠️ 重要な注意点

* ✅ トークンは有効で適切な権限があることを確認すること
* 🌐 レート制限や検出回避のためプロキシを使う（推奨：トークン 1 つにつきプロキシ 1 つ）
* ⏱️ 大量アカウント運用時は遅延設定を厳格に行う
* 📊 ログを監視してエラー発生箇所を特定する
* 🔒 トークンと API キーは慎重に管理し、公開しないこと
* 🚫 `tokens.txt` を他者と共有しない
* 💾 `error-channels.json` に失敗を保存して二度試行しない仕組みあり
* 🔄 Submit-only モードは URL 提出に専念する用途で便利
* 🎯 チャンネルごとの適切なクールダウンを設定してスパム判定を避ける
* 🤖 AI プロバイダは順に試行し、成功するまで次を試す
* 📸 Freepik が失敗した場合は Pollinations.ai に自動フォールバック
* ⚡ CLI フラグはすべての設定より優先される

</details>

---

## 📞 サポート・連絡先

* 🛒 **支援（Support Me）：** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **連絡先：** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **グループ：** [Join Group](https://t.me/KeoAirDropFreeNe)
* 📢 **チャンネル：** [Visit Channel](https://t.me/KeoAirDropFreeNee)

---

⚠️ **免責事項**

このプロジェクトは個人的な学習目的で作成されたものです。
参照されている企業やブランドとは **公式に関係があるものではありません**。
提供コードは **現状のまま**（"as is"）で、保証はありません。
ソースの一部は研究や実験のために **意図的に難読化** されています。

責任を持って利用してください。
このコードの **再配布、転売、商用利用は禁止** です。

---

<p align="center"><a href="#-discord-automation-bot-by-meomundep">⬆️ トップへ戻る</a></p>

