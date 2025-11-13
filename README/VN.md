# 🤖 Bot Tự Động Discord bởi @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 Tổng Quan

Bot này tự động hóa các tương tác trên **Discord**, bao gồm gửi tin nhắn, tham gia/rời server và xử lý tin nhắn bằng **nhiều tài khoản** có hỗ trợ **proxy**.

---

## 🚀 Tính Năng

* 💬 **Tự Động Gửi Tin Nhắn** — Gửi tin nhắn đến các kênh chỉ định
* ➕ **Tự Động Tham Gia Server** — Tham gia server bằng link mời
* ➖ **Tự Động Rời Server** — Rời khỏi server được chỉ định
* 🌍 **Hỗ Trợ Proxy** — Hỗ trợ proxy HTTP(S) và SOCKS5
* 🗑️ **Tự Động Xóa Tin Nhắn** — Xóa tin nhắn sau một khoảng thời gian cấu hình
* 🌐 **Hỗ Trợ Đa Ngôn Ngữ** — Cấu hình ngôn ngữ tin nhắn
* 📕 **Ghi Lại Lỗi** — Lưu ID của server hoặc kênh gặp lỗi
* 🤖 **Trả Lời Bằng AI** — Tạo phản hồi tự nhiên qua các AI provider (Groq, OpenRouter, Gemini, Poe)
* 🖼️ **Tạo Ảnh AI** — Tạo và gửi ảnh bằng API Freepik
* 🎛️ **Điều Khiển Server** — Bật/tắt từng server mà không cần xóa cấu hình

---

<details>
<summary><strong>🛠️ Cài Đặt</strong></summary>

### 📋 Yêu Cầu

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 Tải về: [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 Các Bước

1. **Clone repository:**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **Cài đặt dependencies:**

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
   Chỉnh file `configs.json` theo ý muốn.

4. **Chuẩn bị file đầu vào:**

   * 📄 `tokens.txt` — Token Discord (mỗi dòng một token)
   * 🆔 `servers.json` — Chi tiết server gồm guild ID, invite code và cấu hình kênh
   * 🌐 `proxies.txt` — Proxy (tùy chọn)
   * 📜 `messages.yaml` — Tin nhắn (đa ngôn ngữ)
   * 🗂️ `error_channels.json` — Lưu các kênh/server lỗi (tự tạo/cập nhật)

📌 Liên kết hữu ích:

* 🔑 Lấy token: [Tại đây](https://t.me/KeoAirDropFreeNee/1570)
* 💬 Lấy chat ID: [Tại đây](https://t.me/KeoAirDropFreeNee/1569)
* 📡 Lấy channel/server ID: [Tại đây](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ Cấu Hình (configs.json)</strong></summary>

| ⚙️ Thiết Lập                   | 📘 Mô Tả                                                    |
| ------------------------------ | ----------------------------------------------------------- |
| `maxAccountsAtOnce`            | Số tài khoản chạy cùng lúc                                  |
| `delayBetweenAccounts`         | Thời gian (giây) giữa các tài khoản                         |
| `delayEachChannel`             | Thời gian (giây) giữa các tin nhắn ở kênh khác nhau         |
| `delayEachChat`                | Thời gian (giây) giữa các tin nhắn ở phòng khác nhau        |
| `timeToRestartAllAccounts`     | Thời gian (giây) để khởi động lại toàn bộ tài khoản         |
| `chat_language`                | Ngôn ngữ sử dụng cho tin nhắn tự động                       |
| `auto_chat`                    | Bật/tắt tự động trò chuyện                                  |
| `join_server`                  | Bật/tắt tự động tham gia server                             |
| `leave_server`                 | Bật/tắt tự động rời server                                  |
| `delete_message`               | Bật/tắt tự động xóa tin nhắn sau khi gửi                    |
| `enable_replies`               | Bật/tắt phản hồi tin nhắn                                   |
| `enable_reactions`             | Bật/tắt reaction                                            |
| `reaction_chance`              | Tỉ lệ (0–1) phản ứng với tin nhắn                           |
| `enable_ai_replies`            | Bật/tắt phản hồi bằng AI                                    |
| `ai_providers.*`               | API key của các provider AI (Groq, Gemini, Poe, OpenRouter) |
| `image_generation_providers.*` | API key của nhà cung cấp tạo ảnh (Freepik)                  |

---

### 🧾 Ví Dụ `configs.json`

```json
{
  "maxAccountsAtOnce": 1,
  "delayBetweenAccounts": 17,
  "delayEachChat": [11, 15],
  "delayEachChannel": [17, 19],
  "timeToRestartAllAccounts": 360,
  "chat_language": "vi",
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
<summary><strong>🗂️ Cấu Trúc servers.json (HƯỚNG DẪN CHI TIẾT)</strong></summary>

File `servers.json` là **trái tim của cấu hình bot**, quy định bot sẽ làm gì và ở đâu.

---

## 📚 Cấu Trúc Cơ Bản

```json
[
  {
    "name": "Tên Server",
    "guild_id": "1234567890123456789",
    "invite_id": "inviteCode",
    "channels": { ... },
    "enabled": true
  }
]
```

---

## 🔑 Giải Thích Các Trường

* **`name`**: Tên hiển thị server
* **`guild_id`**: ID của server Discord
* **`invite_id`**: Mã mời server (discord.gg/...)
* **`enabled`**: `true` để bật / `false` để tạm tắt
* **`channels`**: Danh sách kênh và hành động

---

### 🗨️ Loại Kênh

#### 📝 `raw_chat` — Tin nhắn văn bản

```json
"raw_chat": {
  "CHANNEL_ID": "__random_message"
}
```

Bot sẽ gửi tin nhắn tự động hoặc ngẫu nhiên từ `messages.yaml`.

#### 🤖 `command_chat` — Lệnh bot

```json
"command_chat": {
  "CHANNEL_ID": "/claim daily"
}
```

#### 🖼️ `image_chat` — Ảnh AI

```json
"image_chat": {
  "CHANNEL_ID": "Mặt trời lặn trên núi"
}
```

---

### 📋 Ví Dụ Hoàn Chỉnh

```json
[
  {
    "name": "Cộng Đồng Curious",
    "guild_id": "1417067849926705235",
    "invite_id": "curious",
    "channels": {
      "raw_chat": {
        "1417068171243815002": "__random_message",
        "1417084328504197250": "gcurious"
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

</details>

---

<details>
<summary><strong>▶️ Cách Sử Dụng</strong></summary>

### 📌 Chạy Bot

```bash
node index_meomundep.js
```

### ⬆️ Cập Nhật Bot

```bash
git pull
```

---

### 🔍 Cách Hoạt Động

1. Đọc cấu hình từ `configs.json`
2. Đăng nhập bằng token trong `tokens.txt`
3. Áp dụng proxy (nếu có)
4. Duyệt qua từng server trong `servers.json`
5. Gửi tin nhắn/lệnh/ảnh theo cài đặt
6. Rời server (nếu bật `leave_server`)
7. Ghi log có màu và thời gian
8. Tự động lặp lại sau `timeToRestartAllAccounts` giây

---

### 📝 Ghi Log

* Có timestamp và màu sắc:

  * 🟢 Thành công
  * 🔴 Lỗi
  * 🟡 Cảnh báo
  * 🔵 Thông tin
  * 🟣 Đang xử lý

</details>

---

## 📞 Liên Hệ & Hỗ Trợ

* 🛒 **Ủng hộ tôi:** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **Liên hệ:** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **Nhóm:** [Tham gia nhóm](https://t.me/KeoAirDropFreeNe)
* 📢 **Kênh:** [Theo dõi kênh](https://t.me/KeoAirDropFreeNee)

---

## 📜 Giấy Phép

❗ **Không sao chép hoặc ăn cắp dự án này.**
💀 **Tự chịu rủi ro khi sử dụng.**
🚫 **Đừng nhắn tin hỏi mấy câu vớ vẩn.**

---

<p align="center"><a href="#-bot-tự-động-discord-bởi-meomundep">⬆️ Quay Lại Đầu Trang</a></p>
