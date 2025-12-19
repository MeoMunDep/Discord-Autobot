# 🤖 Bot Discord bởi @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 Tổng Quan

Bot này tự động hóa các tương tác trên **Discord**, bao gồm gửi tin nhắn, tham gia/rời server, và xử lý tin nhắn sử dụng **nhiều tài khoản** với **hỗ trợ proxy**.

---

## 🚀 Tính Năng

* 💬 **Gửi Tin Tự Động** — Gửi tin nhắn vào kênh chỉ định với độ trễ tuỳ chỉnh
* 🔗 **Quản lý Kênh Submit** — Hệ thống nộp bài lên X/Twitter chuyên dụng
* ➕ **Tự Động Tham Gia Server** — Tham gia server bằng invite link
* ➖ **Tự Động Rời Server** — Rời các server được chỉ định
* 🌍 **Hỗ trợ Proxy** — Hỗ trợ proxy HTTP(S) và SOCKS5
* 🗑️ **Xoá Tin Tự Động** — Xoá tin đã gửi sau thời gian cấu hình
* 🌐 **Hỗ trợ Đa ngôn ngữ** — Ngôn ngữ tin nhắn có thể cấu hình
* 📕 **Ghi Lỗi** — Lưu ID server hoặc channel xảy ra lỗi
* 🤖 **Trả Lời Bằng AI** — Tạo phản hồi casual bằng nhà cung cấp AI (Groq, OpenRouter, Gemini, Poe, Grok)
* 🖼️ **Tạo Ảnh Bằng AI** — Tạo và gửi ảnh AI vào kênh bằng Freepik API (dự phòng Pollinations.ai)
* 🎛️ **Điều Khiển Server** — Bật/tắt server riêng lẻ mà không cần xóa cấu hình
* ⚙️ **Chế Độ Kép** — Chạy chế độ normal (toàn bộ quy trình) hoặc submit-only
* 🎮 **Hỗ trợ Voice Channel** — Tham gia và duy trì presence trong voice channel
* 📊 **Quản lý Tương tác** — Menu CLI tích hợp để quản lý server, delay và lỗi
* 🚀 **Cờ CLI** — Ghi đè cấu hình bằng argument dòng lệnh

---

<details>
<summary><strong>🛠️ Cài đặt</strong></summary>

### 📋 Yêu Cầu

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 Tải: [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 Các bước

1. **Clone repository:**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **Cài dependencies:**

   ```bash
   npm install
   ```

   ⚠️ Nếu gặp lỗi *Execution Policy* trên Windows:

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   Sau đó chạy lại:

   ```bash
   npm install
   ```

3. **Cấu hình bot:**
   Chỉnh file `configs.json` cho phù hợp.

4. **Chuẩn bị file input:**

   * 📄 `tokens.txt` — Token Discord (mỗi token một dòng)
   * 🆔 `servers.json` — Thông tin server bao gồm guild IDs, invite codes, cấu hình kênh (xem hướng dẫn chi tiết bên dưới)
   * 🌐 `proxies.txt` — Proxies (tùy chọn, một proxy cho mỗi token)
   * 📜 `messages.yaml` — Tin nhắn (đa ngôn ngữ)
   * 🗂️ `error-channels.json` — Lưu kênh/server bị lỗi (tự động tạo/cập nhật)

📌 Link hữu ích:

* 🔑 Lấy token: [Here](https://t.me/KeoAirDropFreeNee/1570)
* 💬 Lấy chat ID: [Here](https://t.me/KeoAirDropFreeNee/1569)
* 📡 Lấy channel/server ID: [Here](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ Cấu hình (configs.json)</strong></summary>

| ⚙️ Thiết lập                   | 📘 Mô tả                                                                  |
| ------------------------------ | ------------------------------------------------------------------------- |
| `max_accounts_at_once`         | Số lượng tài khoản chạy đồng thời                                         |
| `delay_between_accounts`       | Thời gian (giây) giữa mỗi lần khởi chạy tài khoản                         |
| `delay_each_channel`           | Khoảng delay [min, max] (giây) giữa các channel khác nhau                 |
| `delay_each_chat`              | Khoảng delay [min, max] (giây) giữa các tin nhắn trong cùng channel       |
| `time_to_restart_all_accounts` | Thời gian (giây) trước khi khởi động lại tất cả tài khoản                 |
| `chat_language`                | Ngôn ngữ dùng cho tin nhắn auto                                           |
| `ask_before_auto_chat`         | Hỏi người dùng chọn chế độ (submit_only/normal) trước mỗi chu kỳ          |
| `auto_chat`                    | Chế độ mặc định: true = normal, false = submit_only                       |
| `submit_x_url`                 | Bật/tắt submit URL X/Twitter trong kênh thường                            |
| `join_server`                  | Bật/tắt tự động tham gia server                                           |
| `leave_server`                 | Bật/tắt tự động rời server                                                |
| `delete_message`               | Bật/tắt xoá tin sau khi gửi                                               |
| `enable_replies`               | Bật/tắt trả lời tin nhắn                                                  |
| `enable_reactions`             | Bật/tắt react cho tin nhắn                                                |
| `reaction_chance`              | Xác suất (0–1) react vào tin nhắn                                         |
| `enable_ai_replies`            | Bật/tắt trả lời bằng AI                                                   |
| `ai_reply_chance`              | Xác suất (0–1) sử dụng AI để trả lời                                      |
| `ai_providers.*`               | API keys (mảng) cho các provider AI (Groq, Gemini, Poe, OpenRouter, Grok) |
| `image_generation_providers.*` | API keys (mảng) cho provider tạo ảnh (Freepik)                            |
| `voice_chat.enabled`           | Bật/tắt kết nối voice channel                                             |
| `voice_chat.server_id`         | Guild ID cho voice channel                                                |
| `voice_chat.channel_id`        | Voice channel ID để tham gia                                              |
| `voice_chat.user_id`           | User ID để kết nối voice                                                  |

---

### 🧾 Ví dụ `configs.json`

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

### 🧾 Nhiều API Key

Bot hỗ trợ **nhiều API key** cho mỗi provider. Bot sẽ chọn ngẫu nhiên một key từ mảng cho mỗi yêu cầu:

```json
"ai_providers": {
  "groq": ["key1", "key2", "key3"],
  "gemini": ["key1", "key2"]
}
```

Lợi ích:

* **Cân bằng tải** across các account API
* **Quản lý rate limit** bằng cách phân phối request
* **Độ tin cậy** - nếu 1 key fail, có thể thử key khác

---

<details>
<summary><strong>🔑 GROQ API Key</strong></summary>

[Tạo Key](https://console.groq.com/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GROQ_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 GROK API Key</strong></summary>

[Tạo Key](https://console.x.ai/api-keys)

**Lưu ý:** Grok dùng format tương thích OpenAI. Lấy API key từ console X.AI.

</details>

<details>
<summary><strong>🔑 GEMINI API Key</strong></summary>

[Tạo Key](https://aistudio.google.com/app/apikey)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GEMINI_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 OPENROUTER API Key</strong></summary>

[Tạo Key](https://openrouter.ai/settings/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/OPENROUTER_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 POE API Key</strong></summary>

[Tạo Key](https://poe.com/api_key)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/POE_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 FREEPIK API Key</strong></summary>

[Tạo Key](https://api.freepik.com/v1/auth/create)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/FREEPIK_API_KEY.png?raw=true" width="600" />
</p>

</details>

</details>

---

<details>
<summary><strong>🗂️ Cấu trúc servers.json (HƯỚNG DẪN CHI TIẾT)</strong></summary>

File `servers.json` là **trái tim** của cấu hình bot. Nó định nghĩa server nào bot sẽ tương tác và hành động trên từng kênh.

---

## 📚 Cấu trúc cơ bản

File là **mảng JSON** chứa các object server. Mỗi server đại diện cho một Discord server mà bot sẽ tương tác.

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

## 🔑 Giải thích trường

### 1️⃣ **`name`** (String - Bắt buộc)

* **Là gì:** Tên tham khảo cho server
* **VD:** `"Curious"`, `"My Gaming Server"`, `"Crypto Community"`
* **Mục đích:** Giúp nhận dạng server trong logs và cấu hình

### 2️⃣ **`guild_id`** (String - Bắt buộc)

* **Là gì:** ID duy nhất của server Discord
* **Lấy như nào:** [Xem hướng dẫn](https://t.me/KeoAirDropFreeNee/1676)
* **VD:** `"1417067849926705235"`
* **Mục đích:** Dùng để rời server khi `leave_server: true`

### 3️⃣ **`invite_id`** (String - Bắt buộc)

* **Là gì:** Invite code để tham gia server
* **VD:** `"altiuslabs"` (từ discord.gg/altiuslabs)
* **Giá trị đặc biệt:**

  * `""` (chuỗi rỗng) - Không join server này
  * `"none"` - Không join server này
  * `"unknown"` - Không join server này
* **Mục đích:** Dùng để join server khi `join_server: true`

### 4️⃣ **`enabled`** (Boolean - Bắt buộc)

* **Là gì:** Điều khiển bot có xử lý server này hay không
* **Giá trị:**

  * `true` - Bot sẽ xử lý server (gửi tin, join, etc.)
  * `false` - Bot sẽ bỏ qua server này
* **Mục đích:** Cho phép tắt server tạm thời mà không xóa cấu hình

### 5️⃣ **`channels`** (Object - Bắt buộc)

Định nghĩa hành động bot trong mỗi kênh. Có **bốn loại** kênh:

---

## 🗨️ Các loại kênh

### 🔗 **`submit_chat`** - Gửi bài X/Twitter (MỚI!)

**Mục đích:** Kênh chuyên dụng để submit link X/Twitter với delay tuỳ chỉnh.

**Định dạng:**

```json
"submit_chat": {
  "CHANNEL_ID": {
    "message": "https://x.com/yourpost",
    "delay": [6000, 12000]
  }
}
```

**Trường:**

* `message` (String): URL X/Twitter để submit
* `delay` (Array): [min, max] cooldown (giây) trước khi bot có thể post lại
* `enabled` (Boolean, Optional): Set `false` để tắt channel này mà không xóa

**Ví dụ:**

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

**Cách hoạt động:**

* Bot chỉ xử lý loại kênh này khi **submit-only mode** hoặc **normal mode**
* Mỗi kênh có cooldown riêng được theo dõi độc lập
* URL được submit chính xác theo nội dung cung cấp
* Nếu `submit_x_url: false` trong configs, URL X/Twitter trong kênh thường sẽ bị bỏ qua

---

### 📝 **`raw_chat`** - Tin nhắn văn bản

Gửi tin nhắn văn bản thông thường vào kênh.

**Định dạng (đơn giản):**

```json
"raw_chat": {
  "CHANNEL_ID": "MESSAGE_TO_SEND"
}
```

**Định dạng (nâng cao với tuỳ chọn):**

```json
"raw_chat": {
  "CHANNEL_ID": {
    "message": "MESSAGE_TO_SEND",
    "delay": [60, 120],
    "enabled": true
  }
}
```

**Giá trị đặc biệt:**

* `"__random_message"` - Bot sẽ dùng AI hoặc tin ngẫu nhiên từ messages.yaml
* `"[AI] Your instruction"` - Bot sẽ dùng AI với hướng dẫn của bạn
* Bất kỳ văn bản cụ thể nào - Bot sẽ gửi nguyên văn (ví dụ `"gm"`, `"Hello!"`)

**Ví dụ:**

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

**Điều xảy ra:**

* Ở channel `1417068171243815002`: Bot dùng AI với instruction "Respond to random messages"
* Ở channel `1417084328504197250`: Bot gửi "gm" mỗi 6000-12000 giây
* Ở channel `9876543210987654321`: Bot gửi tin AI ngẫu nhiên

---

### 🤖 **`command_chat`** - Lệnh bot

Gửi slash command hoặc lệnh bot vào kênh.

**Định dạng:**

```json
"command_chat": {
  "CHANNEL_ID": {
    "command": "COMMAND_TO_EXECUTE",
    "delay": [60, 120]
  }
}
```

**Ví dụ:**

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

### 🖼️ **`image_chat`** - Ảnh Tạo Bằng AI

Tạo và gửi ảnh AI vào kênh sử dụng Freepik API (dự phòng Pollinations.ai).

**Định dạng:**

```json
"image_chat": {
  "CHANNEL_ID": {
    "prompt": "IMAGE_GENERATION_PROMPT",
    "delay": [60, 120]
  }
}
```

**Ví dụ:**

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

**Yêu cầu:**

* Phải có API key `freepik` trong `configs.json`
* Nếu Freepik fail hoặc không có key, bot tự động dùng Pollinations.ai (miễn phí)

---

## 📋 Ví dụ hoàn chỉnh

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

## ⏱️ Hệ thống Delay

Bot dùng **hệ thống cooldown thông minh** để tránh spam và rate limit:

### 📊 Ưu tiên Delay (từ cao đến thấp):

1. **Delay riêng cho channel** (trong servers.json)

   ```json
   "1234567890": {
     "message": "gm",
     "delay": [300, 600]  ← Ưu tiên này sẽ được dùng
   }
   ```

2. **Global delay_each_chat** (trong configs.json)

   ```json
   "delay_each_chat": [10, 15]  ← Dùng khi channel không có delay riêng
   ```

### 🔄 Cách hoạt động:

* Mỗi kênh có **bộ đếm cooldown độc lập**
* Đồng hồ bắt đầu sau khi gửi tin thành công
* Bot kiểm tra nếu waktu cooldown còn hiệu lực trước khi gửi tiếp
* Nếu cooldown còn, bot sẽ bỏ qua kênh và log thời gian còn lại
* Cooldown được **lưu persist** trong `chat-timestamps.json`

### 💡 Mẹo:

* Dùng delay dài hơn (3600-7200s) cho kênh ít hoạt động
* Dùng delay ngắn hơn (60-300s) cho kênh tương tác cao
* Kênh submit thường dùng 6000-12000s
* Tạo ảnh nên dùng delay dài hơn (7200-10000s) vì chi phí API

---

## 💡 Mẹo & Thực Hành Tốt

### ✅ NÊN:

* Đặt tên server rõ ràng để dễ nhận biết
* Dùng `enabled: false` để tắt tạm server mà không mất cấu hình
* Dùng `enabled: false` cho kênh để tắt kênh riêng lẻ
* Dùng delay cho từng channel để kiểm soát tốt hơn
* Dùng định dạng `"[AI] instruction"` để chỉ dẫn AI tuỳ chỉnh
* Dùng `submit_chat` cho URL X/Twitter thay vì kênh thường
* Thử nghiệm với 1 server trước khi thêm nhiều server
* Dùng delay dài cho tạo ảnh để tiết kiệm chi phí API

### ❌ KHÔNG NÊN:

* Không xóa entry server — dùng `enabled: false` thay thế
* Không quên thêm delay cho kênh (bot sẽ dùng default nhưng nên rõ ràng)
* Không dùng delay quá ngắn (< 60s) để tránh rate limit
* Không đặt channel IDs trong quotes bên trong object (chúng là strings rồi)
* Không quên dấu phẩy giữa object trong array
* Không dùng JSON sai cú pháp (dùng validator nếu không chắc)

---

## 🔍 Lấy Channel ID

1. Bật Developer Mode trong Discord (Settings → Advanced → Developer Mode)
2. Click phải vào channel
3. Chọn "Copy Channel ID"
4. Dán ID vào `servers.json`

[Hướng dẫn hình ảnh](https://t.me/KeoAirDropFreeNee/1676)

---

## 🐛 Khắc phục sự cố

| Vấn đề                         | Giải pháp                                                                     |
| ------------------------------ | ----------------------------------------------------------------------------- |
| Bot bỏ qua server              | Kiểm tra `enabled: true` trên server                                          |
| Bot bỏ qua kênh cụ thể         | Kiểm tra kênh không bị `enabled: false`                                       |
| Bot không join server          | Kiểm tra `invite_id` đúng và `join_server: true` trong configs                |
| Bot không gửi tin              | Kiểm tra channel IDs và `auto_chat: true` trong configs                       |
| Tin gửi quá nhanh              | Thêm/tăng `delay` trong cấu hình kênh                                         |
| Ảnh không tạo được             | Kiểm tra Freepik API key trong `configs.json` (hoặc bot dùng Pollinations.ai) |
| Submit channel không hoạt động | Kiểm tra đang chạy ở chế độ đúng (submit-only hoặc normal)                    |
| Lỗi cú pháp JSON               | Dùng JSON validator như jsonlint.com                                          |

</details>

---

<details>
<summary><strong>▶️ Cách Sử Dụng</strong></summary>

### 📌 Chạy bot

**Cơ bản:**

```bash
node index_meomundep.js
```

**Với cờ CLI:**

```bash
# Ép chế độ submit-only (chỉ chạy submit_chat)
node index_meomundep.js --submit
node index_meomundep.js -s

# Ép chế độ normal (toàn bộ flow: join, chat, leave)
node index_meomundep.js --chat
node index_meomundep.js -c

# Hiển thị help
node index_meomundep.js --help
node index_meomundep.js -h
```

### 🎮 Chế độ hoạt động

Bot hỗ trợ **2 chế độ**:

#### 1️⃣ **Normal Mode** (Toàn bộ flow)

* Tham gia server (nếu `join_server: true`)
* Xử lý TẤT CẢ loại kênh: `submit_chat`, `raw_chat`, `command_chat`, `image_chat`
* Rời server (nếu `leave_server: true`)
* Dùng AI để tạo tin nhắn

**Kích hoạt bằng:**

* CLI: `node index_meomundep.js --chat`
* Cấu hình: `"auto_chat": true` (mặc định)
* Runtime: Chọn option `2` nếu được hỏi (nếu `ask_before_auto_chat: true`)

#### 2️⃣ **Submit-Only Mode**

* Bỏ qua join/leave server
* **Chỉ** xử lý `submit_chat` channels
* Bỏ qua `raw_chat`, `command_chat`, `image_chat`
* Phù hợp để chỉ submit URL X/Twitter

**Kích hoạt bằng:**

* CLI: `node index_meomundep.js --submit`
* Cấu hình: `"auto_chat": false`
* Runtime: Chọn option `1` nếu được hỏi (nếu `ask_before_auto_chat: true`)

### 🔄 Ưu tiên chế độ (từ cao đến thấp):

1. **CLI flags** (--submit hoặc --chat)
2. **Prompt người dùng** (nếu `ask_before_auto_chat: true`)
3. **Cấu hình** (`auto_chat`)

### 📊 Quản lý tương tác (Interactive Management)

Bot có hệ thống quản lý tích hợp qua CLI:

```bash
node index_meomundep.js
# Sau đó chọn "Server Manager" từ menu chính
```

**Tính năng quản lý:**

🖥️ **Menu chính:**

1. Quản lý Server (bật/tắt)
2. Quản lý Delay (thêm/hiện)
3. Quản lý Submit (link X)
4. Quản lý Error Channels
5. Thoát

📡 **Quản lý Server:**

* Bật/tắt tất cả server cùng lúc
* Bật/tắt server cụ thể
* Bật CHỈ 1 server (tắt tất cả còn lại)
* Hiển thị trạng thái server

⏱️ **Quản lý Delay:**

* Thêm default delays cho channel thiếu delay
* Thêm delay tuỳ chỉnh
* Hiển thị thống kê delay
* Liệt kê giá trị delay đang dùng

🔗 **Quản lý Submit:**

* Liệt kê tất cả submit channels
* Thêm submit channel mới
* Chỉnh URL submit
* Xoá submit channel
* Hiển thị thống kê submit

🚫 **Quản lý Error Channels:**

* Xem tất cả error channels theo token
* Xoá channel cụ thể
* Xoá toàn bộ token entry
* Clean up bản ghi kênh lỗi

### ⬆️ Cập nhật bot

```bash
git pull
npm install
```

---

### 🔍 Cách hoạt động (tóm tắt)

1. **Đọc cấu hình** từ `configs.json`
2. **Kiểm tra CLI flags** (--submit, --chat, --help)
3. **Hỏi người dùng** (nếu `ask_before_auto_chat: true` và không có CLI flag)
4. **Xác định chế độ** (submit-only hoặc normal)
5. **Đăng nhập** bằng tokens từ `tokens.txt`
6. **Áp dụng proxy** cho mỗi account (nếu có trong `proxies.txt`)
7. **Xử lý từng server** từ `servers.json`:

   * ✅ Kiểm tra `enabled: true`
   * ✅ Kiểm tra channel không `enabled: false`
   * ✅ Kiểm tra cooldown trước khi gửi
   * **Trong normal mode:**

     * ➕ Join server (dùng `invite_id`) nếu `join_server: true`
     * 💬 Xử lý tất cả loại channel
     * ➖ Leave server (dùng `guild_id`) nếu `leave_server: true`
   * **Trong submit-only mode:**

     * 🔗 Chỉ xử lý `submit_chat`
     * ⏭️ Bỏ qua join/leave và các loại channel khác
8. **Log mọi event** với timestamp và màu
9. **Lưu timestamps** để tránh post trùng trong cooldown
10. **Chờ các delay** giữa các hành động
11. **Lặp lại tự động** sau `time_to_restart_all_accounts` giây

---

### 📝 Logs và Timestamps

* Mỗi log có timestamp
* Định dạng timestamp theo `chat_language`
* Màu log để dễ đọc:

  * 🟢 Xanh - Thành công
  * 🔴 Đỏ - Lỗi
  * 🟡 Vàng - Cảnh báo
  * 🔵 Xanh dương - Thông tin
  * 🟣 Tím - Đang xử lý
  * 🔶 Cam - Hành động AI/Provider

---

### 🎙️ Hỗ trợ Voice Channel

Bot có thể tham gia và giữ presence trong voice channel:

```json
"voice_chat": {
  "enabled": true,
  "server_id": "1234567890123456789",
  "channel_id": "9876543210987654321",
  "user_id": "1111222233334444555"
}
```

**Tính năng:**

* Kết nối tự động vào voice channel
* Cơ chế heartbeat để giữ kết nối
* Tự reconnect khi rớt (tối đa 5 lần với exponential backoff)
* Hỗ trợ WebRTC
* Xử lý ngắt kết nối sạch sẽ

**Yêu cầu:**

* Token phải có quyền join voice channel
* Token phải có quyền truy cập server tương ứng
* User ID phải khớp với token

---

### ⚠️ Lưu ý quan trọng

* ✅ Đảm bảo tất cả tokens hợp lệ và có quyền cần thiết
* 🌐 Dùng proxy để tránh rate limit hoặc bị ban (1 proxy cho 1 token nên tốt hơn)
* ⏱️ Tinh chỉnh delay cho bộ account lớn
* 📊 Theo dõi logs để fix lỗi và điều chỉnh `servers.json`
* 🔒 Giữ token và API keys an toàn, không chia sẻ
* 🚫 Không chia sẻ `tokens.txt` với ai
* 💾 Bot tự save lỗi vào `error-channels.json` để tránh retry kênh lỗi
* 🔄 Dùng submit-only mode cho tác vụ chuyên submit URL
* 🎯 Đặt cooldown hợp lý để tránh bị spam detection
* 🤖 Các provider AI được thử tuần tự cho đến khi 1 provider thành công
* 📸 Tạo ảnh sẽ fallback sang dịch vụ miễn phí nếu Freepik fail
* ⚡ CLI flags ghi đè mọi setting khác trong lần chạy đó

</details>

---

## 📞 Liên hệ & Hỗ trợ

* 🛒 **Ủng hộ mình:** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **Liên hệ:** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **Group:** [Tham gia Group](https://t.me/KeoAirDropFreeNe)
* 📢 **Channel:** [Xem Channel](https://t.me/KeoAirDropFreeNee)

---

⚠️ **Tuyên bố từ chối trách nhiệm**

Dự án này được tạo chỉ như một **bài tập cá nhân để học tập**.
Nó **không phải sản phẩm chính thức**, website, hay dịch vụ nào của các thương hiệu được nhắc tới.
Người tạo **không liên kết, ủy quyền, hay chịu trách nhiệm** với bất kỳ công ty hay thương hiệu nào được nhắc tới.

Mã nguồn cung cấp theo dạng **"as is"** không có bảo đảm.
Một số phần mã nguồn được **obfuscate/làm rối** để bảo vệ code, logic tuỳ chỉnh, và các kỹ thuật phát triển.

Sử dụng dự án có trách nhiệm và tự chịu rủi ro.
**Không được phân phối, bán lại, hoặc sử dụng thương mại** bất kỳ phần mã nào — dù gốc hay đã chỉnh sửa — nếu không có phép.

---

<p align="center"><a href="#-bot-tự-động-discord-bởi-meomundep">⬆️ Quay lên đầu</a></p>
