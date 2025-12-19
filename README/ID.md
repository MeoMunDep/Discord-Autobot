# 🤖 Bot Otomasi Discord oleh @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 Ikhtisar

Bot ini mengotomasi interaksi di **Discord**, termasuk mengirim pesan, bergabung/keluar server, dan menangani pesan menggunakan **banyak akun** dengan **dukungan proxy**.

---

## 🚀 Fitur

* 💬 **Pengiriman Pesan Otomatis** — Mengirim pesan ke channel yang ditentukan dengan jeda yang dapat dikonfigurasi
* 🔗 **Manajemen Submit Channel** — Sistem khusus untuk pengiriman posting X/Twitter
* ➕ **Auto Join Server** — Bergabung ke server menggunakan invite link
* ➖ **Auto Leave Server** — Keluar dari server yang ditentukan
* 🌍 **Dukungan Proxy** — Mendukung proxy HTTP(S) dan SOCKS5
* 🗑️ **Hapus Pesan Otomatis** — Menghapus pesan yang dikirim setelah jeda yang dapat dikonfigurasi
* 🌐 **Dukungan Multi-bahasa** — Bahasa pesan otomatis dapat dikonfigurasi
* 📕 **Pencatatan Error** — Menyimpan ID server atau channel yang bermasalah
* 🤖 **Balasan AI** — Menghasilkan balasan kasual menggunakan penyedia AI (Groq, OpenRouter, Gemini, Poe, Grok)
* 🖼️ **Generasi Gambar** — Menghasilkan dan mengirim gambar AI ke channel menggunakan API Freepik (fallback Pollinations.ai)
* 🎛️ **Kontrol Server** — Aktifkan/nonaktifkan server tanpa menghapus konfigurasi
* 🚀 **Mode Ganda** — Menjalankan mode normal (aliran penuh) atau mode submit-only
* 🎮 **Dukungan Voice Channel** — Bergabung dan mempertahankan presence di voice channel
* 📊 **Manajemen Interaktif** — Menu CLI bawaan untuk manajemen server, delay, dan error
* 🚀 **Flag CLI** — Timpa pengaturan config lewat argumen baris perintah

---

<details>
<summary><strong>🛠️ Instalasi</strong></summary>

### 📋 Persyaratan

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 Download: [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 Langkah

1. **Clone repository:**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **Install dependency:**

   ```bash
   npm install
   ```

   ⚠️ Jika muncul error *Execution Policy* di Windows:

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   Lalu jalankan kembali:

   ```bash
   npm install
   ```

3. **Konfigurasi bot:**
   Edit file `configs.json` sesuai preferensi Anda.

4. **Siapkan file input:**

   * 📄 `tokens.txt` — Token Discord (satu per baris)
   * 🆔 `servers.json` — Detail server termasuk guild ID, invite code, dan konfigurasi channel (lihat penjelasan di bawah)
   * 🌐 `proxies.txt` — Proxies (opsional, satu per token)
   * 📜 `messages.yaml` — Pesan (multi-bahasa)
   * 🗂️ `error-channels.json` — Menyimpan channel/server yang gagal (dibuat/diupdate otomatis)

📌 Tautan berguna:

* 🔑 Dapatkan token: [Here](https://t.me/KeoAirDropFreeNee/1570)
* 💬 Dapatkan chat ID: [Here](https://t.me/KeoAirDropFreeNee/1569)
* 📡 Dapatkan channel/server ID: [Here](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ Konfigurasi (configs.json)</strong></summary>

| ⚙️ Pengaturan                  | 📘 Deskripsi                                                              |
| ------------------------------ | ------------------------------------------------------------------------- |
| `max_accounts_at_once`         | Jumlah akun yang dijalankan bersamaan                                     |
| `delay_between_accounts`       | Jeda (dalam detik) antara setiap mulai akun                               |
| `delay_each_channel`           | Rentang jeda [min, max] (dalam detik) antar channel berbeda               |
| `delay_each_chat`              | Rentang jeda [min, max] (dalam detik) antar pesan dalam channel yang sama |
| `time_to_restart_all_accounts` | Waktu (dalam detik) sebelum me-restart semua akun                         |
| `chat_language`                | Bahasa untuk pesan otomatis                                               |
| `ask_before_auto_chat`         | Menanyakan mode (submit_only/normal) sebelum setiap siklus                |
| `auto_chat`                    | Mode default: true = normal, false = submit_only                          |
| `submit_x_url`                 | Aktif/nonaktifkan pengiriman URL X/Twitter di channel reguler             |
| `join_server`                  | Aktif/nonaktifkan auto join server                                        |
| `leave_server`                 | Aktif/nonaktifkan auto leave server                                       |
| `delete_message`               | Aktif/nonaktifkan penghapusan pesan setelah dikirim                       |
| `enable_replies`               | Aktif/nonaktifkan balasan pesan                                           |
| `enable_reactions`             | Aktif/nonaktifkan reaction pada pesan                                     |
| `reaction_chance`              | Probabilitas (0–1) untuk bereaksi pada pesan                              |
| `enable_ai_replies`            | Aktif/nonaktifkan balasan yang dibuat AI                                  |
| `ai_reply_chance`              | Probabilitas (0–1) menggunakan AI untuk balasan                           |
| `ai_providers.*`               | API keys (array) untuk penyedia AI (Groq, Gemini, Poe, OpenRouter, Grok)  |
| `image_generation_providers.*` | API keys (array) untuk penyedia gambar AI (Freepik)                       |
| `voice_chat.enabled`           | Aktif/nonaktifkan koneksi voice channel                                   |
| `voice_chat.server_id`         | Guild ID untuk voice channel                                              |
| `voice_chat.channel_id`        | Channel ID voice untuk bergabung                                          |
| `voice_chat.user_id`           | User ID Anda untuk koneksi voice                                          |

---

### 🧾 Contoh `configs.json`

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

### 🔑 Banyak API Key

Bot mendukung **beberapa API key** untuk tiap penyedia. Bot akan memilih secara acak salah satu key dari array untuk tiap permintaan:

```json
"ai_providers": {
  "groq": ["key1", "key2", "key3"],
  "gemini": ["key1", "key2"]
}
```

Manfaat:

* **Load balancing** antar akun API
* **Manajemen rate limit** dengan mendistribusikan permintaan
* **Reliabilitas** — jika satu key gagal, yang lain dapat dicoba

---

<details>
<summary><strong>🔑 API Key GROQ</strong></summary>

[Create Key](https://console.groq.com/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GROQ_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 API Key GROK</strong></summary>

[Create Key](https://console.x.ai/api-keys)

**Catatan:** API Grok menggunakan format kompatibel OpenAI. Dapatkan API key dari konsol X.AI.

</details>

<details>
<summary><strong>🔑 API Key GEMINI</strong></summary>

[Create Key](https://aistudio.google.com/app/apikey)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GEMINI_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 API Key OPENROUTER</strong></summary>

[Create Key](https://openrouter.ai/settings/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/OPENROUTER_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 API Key POE</strong></summary>

[Create Key](https://poe.com/api_key)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/POE_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 API Key FREEPIK</strong></summary>

[Create Key](https://api.freepik.com/v1/auth/create)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/FREEPIK_API_KEY.png?raw=true" width="600" />
</p>

</details>

</details>

---

<details>
<summary><strong>🗂️ Struktur servers.json (PANDUAN LENGKAP)</strong></summary>

File `servers.json` adalah **inti konfigurasi bot**. Menentukan server mana yang akan diinteraksi dan aksi apa yang dilakukan di tiap channel.

---

## 📚 Struktur Dasar

File harus berupa **array JSON** yang berisi objek server. Setiap server merepresentasikan server Discord yang ingin bot proses.

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

## 🔑 Penjelasan Field

### 1️⃣ **`name`** (String - Wajib)

* **Apa itu:** Nama referensi untuk server (hanya untuk catatan Anda)
* **Contoh:** `"Curious"`, `"My Gaming Server"`, `"Crypto Community"`
* **Tujuan:** Memudahkan identifikasi di log dan konfigurasi

### 2️⃣ **`guild_id`** (String - Wajib)

* **Apa itu:** ID unik server Discord
* **Cara dapatkan:** [Ikuti panduan ini](https://t.me/KeoAirDropFreeNee/1676)
* **Contoh:** `"1417067849926705235"`
* **Tujuan:** Digunakan untuk keluar server saat `leave_server: true`

### 3️⃣ **`invite_id`** (String - Wajib)

* **Apa itu:** Kode invite untuk bergabung ke server
* **Contoh:** `"altiuslabs"` (dari discord.gg/altiuslabs)
* **Nilai khusus:**

  * `""` (string kosong) - Jangan gabung server ini
  * `"none"` - Jangan gabung server ini
  * `"unknown"` - Jangan gabung server ini
* **Tujuan:** Digunakan untuk join server bila `join_server: true`

### 4️⃣ **`enabled`** (Boolean - Wajib)

* **Apa itu:** Kontrol apakah bot memproses server ini
* **Nilai:**

  * `true` - Bot akan memproses server ini
  * `false` - Bot akan melewatkan server ini
* **Tujuan:** Memungkinkan menonaktifkan sementara tanpa menghapus konfigurasi

### 5️⃣ **`channels`** (Object - Wajib)

Menentukan apa yang bot lakukan di setiap channel. Memiliki **empat kategori**:

---

## 🗨️ Tipe Channel

### 🔗 **`submit_chat`** - Pengiriman Post X/Twitter (BARU!)

**Tujuan:** Channel khusus untuk mengirim URL posting X/Twitter dengan jeda yang dapat disesuaikan.

**Format:**

```json
"submit_chat": {
  "CHANNEL_ID": {
    "message": "https://x.com/yourpost",
    "delay": [6000, 12000]
  }
}
```

**Field:**

* `message` (String): URL X/Twitter yang akan dikirim
* `delay` (Array): [min, max] cooldown dalam detik sebelum bot boleh memposting lagi di channel ini
* `enabled` (Boolean, Opsional): `false` untuk menonaktifkan channel ini tanpa menghapusnya

**Contoh:**

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

**Cara kerja:**

* Bot memproses channel ini hanya dalam **submit-only mode** atau **normal mode**
* Setiap channel punya cooldown terpisah yang dilacak
* URL dikirim persis seperti diberikan
* Jika `submit_x_url: false` di configs, URL X/Twitter di channel reguler akan di-skip

---

### 📝 **`raw_chat`** - Pesan Teks

Mengirim pesan teks biasa ke channel.

**Format (Sederhana):**

```json
"raw_chat": {
  "CHANNEL_ID": "MESSAGE_TO_SEND"
}
```

**Format (Lanjutan dengan Opsi):**

```json
"raw_chat": {
  "CHANNEL_ID": {
    "message": "MESSAGE_TO_SEND",
    "delay": [60, 120],
    "enabled": true
  }
}
```

**Nilai Khusus:**

* `"__random_message"` - Bot akan menggunakan AI atau pesan acak dari messages.yaml
* `"[AI] Instruksi Anda"` - Bot akan memanggil AI dengan instruksi kustom
* Teks spesifik - Bot mengirim persis teks tersebut (mis. `"gm"`, `"Hello!"`)

**Contoh:**

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

**Apa yang terjadi:**

* Di channel `1417068171243815002`: Bot menggunakan AI dengan instruksi "Respond to random messages"
* Di channel `1417084328504197250`: Bot mengirim "gm" setiap 6000–12000 detik
* Di channel `9876543210987654321`: Bot mengirim pesan acak yang dihasilkan AI

---

### 🤖 **`command_chat`** - Perintah Bot

Mengirim perintah slash atau perintah bot ke channel.

**Format:**

```json
"command_chat": {
  "CHANNEL_ID": {
    "command": "COMMAND_TO_EXECUTE",
    "delay": [60, 120]
  }
}
```

**Contoh:**

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

### 🖼️ **`image_chat`** - Gambar yang Dihasilkan AI

Menghasilkan dan mengirim gambar AI ke channel menggunakan API Freepik (dengan fallback otomatis ke Pollinations.ai).

**Format:**

```json
"image_chat": {
  "CHANNEL_ID": {
    "prompt": "IMAGE_GENERATION_PROMPT",
    "delay": [60, 120]
  }
}
```

**Contoh:**

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

**Persyaratan:**

* Harus memiliki API key `freepik` di `configs.json`
* Jika Freepik gagal atau tidak ada API key, bot otomatis menggunakan Pollinations.ai (gratis, tanpa API key)

---

## 📋 Contoh Lengkap

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

## ⏱️ Sistem Delay

Bot menggunakan **sistem cooldown pintar** untuk mencegah spam dan rate limit:

### 📊 Prioritas Delay (dari paling tinggi ke rendah):

1. **Delay spesifik channel** (di servers.json)

   ```json
   "1234567890": {
     "message": "gm",
     "delay": [300, 600]  ← Ini prioritas utama
   }
   ```

2. **Global delay_each_chat** (di configs.json)

   ```json
   "delay_each_chat": [10, 15]  ← Digunakan jika channel tidak punya delay
   ```

### 🔄 Cara kerja:

* Setiap channel punya **timer cooldown independen**
* Timer dimulai setelah **pesan berhasil dikirim**
* Bot memeriksa apakah periode cooldown berakhir sebelum mengirim pesan berikutnya
* Jika cooldown aktif, bot melewatkan channel dan mencatat sisa waktu
* Cooldown dipersistentkan dan dilacak di `chat-timestamps.json`

### 💡 Tips:

* Gunakan delay lebih panjang (3600–7200s) untuk channel low-activity
* Gunakan delay pendek (60–300s) untuk channel high-engagement
* Channel submit biasanya pakai 6000–12000s delay
* Generasi gambar sebaiknya pakai delay panjang (7200–10000s) karena biaya API

---

## 💡 Tips & Praktik Terbaik

### ✅ LAKUKAN:

* Gunakan nama deskriptif untuk server agar mudah dikenali
* Set `enabled: false` untuk menonaktifkan server tanpa kehilangan konfigurasi
* Set `enabled: false` pada channel untuk menonaktifkan channel tertentu
* Gunakan delay per-channel untuk kontrol lebih baik
* Gunakan format `"[AI] instruksi"` untuk balasan AI kustom
* Gunakan `submit_chat` untuk URL X/Twitter daripada channel reguler
* Uji dengan satu server terlebih dahulu sebelum menambahkan banyak server
* Gunakan delay lebih lama untuk generasi gambar agar menghemat biaya API

### ❌ JANGAN:

* Jangan hapus entri server — pakai `enabled: false` sebagai gantinya
* Jangan lupa tambahkan delay ke channel (bot akan pakai default tapi lebih baik eksplisit)
* Jangan gunakan delay sangat pendek (< 60s) untuk menghindari rate limit
* Jangan meletakkan channel ID tanpa tanda kutip di dalam objek (mereka sudah string)
* Jangan lupa koma antar object di JSON — gunakan validator JSON jika ragu

---

## 🔍 Menemukan Channel ID

1. Aktifkan Developer Mode di Discord (Settings → Advanced → Developer Mode)
2. Klik kanan pada channel yang diinginkan
3. Pilih "Copy Channel ID"
4. Paste ID ke `servers.json`

[Panduan Visual](https://t.me/KeoAirDropFreeNee/1676)

---

## 🐛 Pemecahan Masalah

| Masalah                          | Solusi                                                                            |
| -------------------------------- | --------------------------------------------------------------------------------- |
| Bot melewatkan server            | Periksa apakah `enabled: true` di server                                          |
| Bot melewatkan channel tertentu  | Periksa apakah channel tidak punya `enabled: false`                               |
| Bot tidak dapat bergabung server | Periksa `invite_id` benar dan `join_server: true` di configs                      |
| Bot tidak mengirim pesan         | Periksa ID channel benar dan `auto_chat: true` di configs                         |
| Pesan terkirim terlalu sering    | Tambah atau tingkatkan `delay` di konfigurasi channel                             |
| Gambar tidak ter-generate        | Periksa API key Freepik di `configs.json` (atau bot akan gunakan Pollinations.ai) |
| Channel submit tidak bekerja     | Pastikan mode yang dijalankan benar (submit-only atau normal)                     |
| Error syntax JSON                | Gunakan validator JSON seperti jsonlint.com                                       |

</details>

---

<details>
<summary><strong>▶️ Cara Menjalankan</strong></summary>

### 📌 Jalankan bot

**Penggunaan dasar:**

```bash
node index_meomundep.js
```

**Dengan flag CLI:**

```bash
# Paksa mode submit-only (hanya submit_chat)
node index_meomundep.js --submit
node index_meomundep.js -s

# Paksa mode normal (aliran penuh: join, chat, leave)
node index_meomundep.js --chat
node index_meomundep.js -c

# Tampilkan help
node index_meomundep.js --help
node index_meomundep.js -h
```

### 🎮 Mode Operasi

Bot mendukung **dua mode operasi**:

#### 1️⃣ **Mode Normal** (Aliran Penuh)

* Bergabung ke server (jika `join_server: true`)
* Memproses SEMUA tipe channel: `submit_chat`, `raw_chat`, `command_chat`, `image_chat`
* Keluar dari server (jika `leave_server: true`)
* Menggunakan AI untuk generasi pesan

**Aktifkan dengan:**

* CLI: `node index_meomundep.js --chat`
* Config: `"auto_chat": true` (default)
* Runtime: Pilih opsi `2` saat diminta (jika `ask_before_auto_chat: true`)

#### 2️⃣ **Mode Submit-Only**

* Melewatkan join/leave server
* **HANYA** memproses `submit_chat` channels
* Mengabaikan `raw_chat`, `command_chat`, `image_chat`
* Cocok untuk tugas khusus pengiriman URL X/Twitter

**Aktifkan dengan:**

* CLI: `node index_meomundep.js --submit`
* Config: `"auto_chat": false`
* Runtime: Pilih opsi `1` saat diminta (jika `ask_before_auto_chat: true`)

### 🔄 Prioritas Mode (dari paling tinggi):

1. **Flag CLI** (--submit atau --chat)
2. **Prompt pengguna** (jika `ask_before_auto_chat: true`)
3. **Setting di config** (`auto_chat`)

### 📊 Manajemen Interaktif

Bot memiliki sistem manajemen bawaan yang diakses via:

```bash
node index_meomundep.js
# Lalu pilih "Server Manager" dari menu utama
```

**Fitur Manajemen:**

🖥️ **Menu Utama:**

1. Manajemen Server (aktif/nonaktif server)
2. Manajemen Delay (tambah/tampilkan delay)
3. Manajemen Submit (link posting X)
4. Manajemen Error Channels
5. Exit

📡 **Manajemen Server:**

* Aktif/nonaktifkan semua server sekaligus
* Aktif/nonaktifkan server spesifik
* Aktifkan HANYA satu server (nonaktifkan semua lainnya)
* Tampilkan overview status server

⏱️ **Manajemen Delay:**

* Tambah default delay ke channel yang belum punya
* Tambah delay kustom
* Tampilkan statistik delay
* Daftar nilai delay unik yang digunakan

🔗 **Manajemen Submit:**

* Daftar semua submit channels
* Tambah submit channel baru
* Edit URL submit
* Hapus submit channel
* Tampilkan statistik submit

🚫 **Manajemen Error Channels:**

* Lihat semua error channels per token
* Hapus channel error spesifik
* Hapus seluruh entry token
* Bersihkan catatan channel gagal

### ⬆️ Update bot

```bash
git pull
npm install
```

---

### 🔍 Cara Kerja

1. **Membaca konfigurasi** dari `configs.json`
2. **Memeriksa flag CLI** (--submit, --chat, --help)
3. **Meminta input pengguna** (jika `ask_before_auto_chat: true` dan tanpa flag CLI)
4. **Menentukan mode** (submit-only atau normal)
5. **Login** menggunakan token dari `tokens.txt`
6. **Menerapkan proxy** per akun (jika tersedia di `proxies.txt`)
7. **Memproses setiap server** dari `servers.json`:

   * ✅ Cek `enabled: true` pada server
   * ✅ Cek channel tidak `enabled: false`
   * ✅ Cek cooldown sebelum mengirim
   * **Dalam mode normal:**

     * ➕ Join server (pakai `invite_id`) jika `join_server: true`
     * 💬 Proses semua tipe channel
     * ➖ Leave server (pakai `guild_id`) jika `leave_server: true`
   * **Dalam mode submit-only:**

     * 🔗 Hanya proses `submit_chat` channels
     * ⏭️ Skip join/leave dan tipe channel lain
8. **Mencatat setiap event** dengan timestamp dan output berwarna
9. **Menyimpan timestamp** untuk mencegah posting duplikat selama cooldown
10. **Menunggu delay** antar aksi
11. **Mengulang otomatis** setelah `time_to_restart_all_accounts` detik

---

### 📝 Log dan Timestamp

* Setiap entry log termasuk timestamp
* Format timestamp mengikuti setting `chat_language`
* Log berwarna untuk kemudahan baca:

  * 🟢 Hijau - Sukses
  * 🔴 Merah - Error
  * 🟡 Kuning - Peringatan
  * 🔵 Biru - Info
  * 🟣 Ungu - Sedang diproses
  * 🔶 Oranye - Aksi AI/Penyedia

---

### 🎙️ Dukungan Voice Channel

Bot dapat bergabung dan mempertahankan presence di voice channel:

```json
"voice_chat": {
  "enabled": true,
  "server_id": "1234567890123456789",
  "channel_id": "9876543210987654321",
  "user_id": "1111222233334444555"
}
```

**Fitur:**

* Koneksi otomatis ke voice channel
* Mekanisme heartbeat untuk mempertahankan koneksi
* Reconnect otomatis saat disconnect (hingga 5 kali dengan exponential backoff)
* Mendukung protokol WebRTC
* Penanganan disconnect yang bersih

**Persyaratan:**

* Harus punya izin untuk bergabung voice channel
* Token harus punya akses ke server yang ditentukan
* User ID harus sesuai dengan token

---

### ⚠️ Catatan Penting

* ✅ Pastikan semua token valid dan punya permission yang diperlukan
* 🌐 Gunakan proxy untuk menghindari rate limit atau banned (satu proxy per token direkomendasikan)
* ⏱️ Atur delay dengan hati-hati untuk set akun besar
* 📊 Pantau log untuk error dan sesuaikan `servers.json` jika perlu
* 🔒 Jaga kerahasiaan token dan API key Anda
* 🚫 Jangan bagikan file `tokens.txt` ke siapapun
* 💾 Bot menyimpan error ke `error-channels.json` supaya tidak mencoba ulang channel yang gagal
* 🔄 Gunakan submit-only mode untuk tugas khusus pengiriman URL
* 🎯 Set cooldown yang sesuai per channel untuk menghindari deteksi spam
* 🤖 Penyedia AI dicoba berurutan sampai salah satu berhasil
* 📸 Generasi gambar fallback otomatis ke layanan gratis jika Freepik gagal
* ⚡ Flag CLI menimpa semua pengaturan lain pada runtime

</details>

---

## 📞 Kontak & Dukungan

* 🛒 **Dukung Saya:** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **Kontak:** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **Group:** [Join Group](https://t.me/KeoAirDropFreeNe)
* 📢 **Channel:** [Visit Channel](https://t.me/KeoAirDropFreeNee)

---

⚠️ **Penafian**

Proyek ini dibuat semata-mata sebagai **latihan pendidikan pribadi**.
Bukan produk resmi, situs, atau layanan dari perusahaan atau merek yang disebutkan.
Pencipta **tidak berafiliasi, diasosiasikan, didukung, atau terkait** dengan perusahaan atau merek tersebut.

Kode disediakan **"apa adanya"** tanpa jaminan.
Beberapa bagian sumber sengaja **diobfuskasi** untuk melindungi riset pribadi dan logika khusus.

Gunakan proyek ini dengan tanggung jawab dan risiko Anda sendiri.
**Redistribusi, penjualan ulang, atau penggunaan komersial** bagian mana pun dari kode ini—baik asli maupun yang dimodifikasi—**tidak diizinkan**.

---

<p align="center"><a href="#-bot-otomasi-discord-oleh-meomundep">⬆️ Kembali ke atas</a></p>


