# 🤖 Bot Otomatisasi Discord oleh @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 Gambaran Umum

Bot ini mengotomatiskan interaksi di **Discord** — mengirim pesan, bergabung/keluar server, dan mengelola banyak akun dengan dukungan **proxy**.

---

## 🚀 Fitur Utama

* 💬 **Pesan Otomatis** — Mengirim pesan ke channel yang telah ditentukan
* ➕ **Bergabung Server Otomatis** — Masuk server menggunakan link undangan
* ➖ **Keluar Server Otomatis** — Meninggalkan server yang sudah dikonfigurasi
* 🌍 **Dukungan Proxy** — Mendukung HTTP(S) dan SOCKS5
* 🗑️ **Hapus Pesan Otomatis** — Menghapus pesan setelah waktu tertentu
* 🌐 **Multi Bahasa** — Mendukung pengiriman pesan dalam berbagai bahasa
* 📕 **Log Kesalahan** — Mencatat server atau channel yang gagal
* 🤖 **Balasan AI** — Menggunakan AI (Groq, OpenRouter, Gemini, Poe) untuk menjawab pesan secara alami
* 🖼️ **Pembuatan Gambar AI** — Menghasilkan gambar dari API Freepik
* 🎛️ **Kontrol per Server** — Aktif/nonaktifkan server tanpa menghapus konfigurasi

---

<details>
<summary><strong>🛠️ Instalasi</strong></summary>

### 📋 Persyaratan

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 Unduh di sini: [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 Langkah-langkah Instalasi

1. **Clone repositori:**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **Instal dependensi:**

   ```bash
   npm install
   ```

   ⚠️ Jika muncul error *Execution Policy* di Windows:

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   Lalu jalankan ulang:

   ```bash
   npm install
   ```

3. **Konfigurasikan bot:**
   Edit file `configs.json` sesuai kebutuhanmu.

4. **Siapkan file input:**

   * 📄 `tokens.txt` — Daftar token Discord (satu per baris)
   * 🆔 `servers.json` — Detail server: guild_id, link undangan, dan channel
   * 🌐 `proxies.txt` — Daftar proxy (opsional)
   * 📜 `messages.yaml` — Pesan dalam berbagai bahasa
   * 🗂️ `error_channels.json` — Log kesalahan (dibuat otomatis)

📌 Link berguna:

* 🔑 Dapatkan token: [Klik di sini](https://t.me/KeoAirDropFreeNee/1570)
* 💬 Dapatkan chat ID: [Klik di sini](https://t.me/KeoAirDropFreeNee/1569)
* 📡 Dapatkan channel/server ID: [Klik di sini](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ Konfigurasi (configs.json)</strong></summary>

| ⚙️ Nama Pengaturan             | 📘 Deskripsi                              |
| ------------------------------ | ----------------------------------------- |
| `maxAccountsAtOnce`            | Jumlah akun aktif bersamaan               |
| `delayBetweenAccounts`         | Jeda antar akun (detik)                   |
| `delayEachChannel`             | Jeda antar pesan di channel berbeda       |
| `delayEachChat`                | Jeda antar percakapan                     |
| `timeToRestartAllAccounts`     | Waktu untuk me-restart semua akun (detik) |
| `chat_language`                | Bahasa pesan otomatis                     |
| `auto_chat`                    | Aktifkan/Nonaktifkan chat otomatis        |
| `join_server`                  | Aktifkan/Nonaktifkan auto join server     |
| `leave_server`                 | Aktifkan/Nonaktifkan auto leave server    |
| `delete_message`               | Hapus pesan setelah dikirim               |
| `enable_replies`               | Aktifkan balasan otomatis                 |
| `enable_reactions`             | Aktifkan reaksi otomatis                  |
| `reaction_chance`              | Peluang menambahkan reaksi (0–1)          |
| `enable_ai_replies`            | Aktifkan balasan AI                       |
| `ai_providers.*`               | Kunci API penyedia AI                     |
| `image_generation_providers.*` | Kunci API penyedia gambar                 |

---

### 🧾 Contoh file `configs.json`

```json
{
  "maxAccountsAtOnce": 1,
  "delayBetweenAccounts": 17,
  "delayEachChat": [11, 15],
  "delayEachChannel": [17, 19],
  "timeToRestartAllAccounts": 360,

  "chat_language": "id",

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
<summary><strong>🔑 Membuat API Key</strong></summary>

* **GROQ Key:** [Buat di sini](https://console.groq.com/keys)
* **GEMINI Key:** [Buat di sini](https://aistudio.google.com/app/apikey)
* **OPENROUTER Key:** [Buat di sini](https://openrouter.ai/settings/keys)
* **POE Key:** [Buat di sini](https://poe.com/api_key)
* **FREEPIK Key:** [Buat di sini](https://api.freepik.com/v1/auth/create)

</details>

</details>

---

<details>
<summary><strong>🗂️ Struktur servers.json</strong></summary>

File ini adalah **inti dari konfigurasi bot**.
Menentukan server, channel, dan aksi yang akan dijalankan.

---

## 📚 Struktur Dasar

```json
[
  {
    "name": "Nama Server",
    "guild_id": "1234567890123456789",
    "invite_id": "kodeUndangan",
    "channels": { ... },
    "enabled": true
  }
]
```

---

## 🗨️ Jenis Channel

### 📝 **`raw_chat`** — Pesan teks biasa

```json
"raw_chat": {
  "CHANNEL_ID": "__random_message"
}
```

* `"__random_message"` = pesan acak atau dari AI
* Teks langsung = dikirim seperti yang ditulis

---

### 🤖 **`command_chat`** — Perintah bot

```json
"command_chat": {
  "CHANNEL_ID": "/claim daily"
}
```

Menjalankan perintah slash atau teks (misal `/rewards`).

---

### 🖼️ **`image_chat`** — Gambar AI

```json
"image_chat": {
  "CHANNEL_ID": "Kota cyberpunk malam hari"
}
```

Menghasilkan gambar melalui Freepik atau Pollinations.ai.

---

## 📋 Contoh Lengkap

```json
[
  {
    "name": "Curious Community",
    "guild_id": "1417067849926705235",
    "invite_id": "curious",
    "channels": {
      "raw_chat": {
        "1417068171243815002": "__random_message",
        "1417084328504197250": "selamat pagi"
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

## ⚙️ Proses Bot

1. Membaca `servers.json`
2. Mengecek `enabled`
3. Bergabung ke server (`invite_id`) jika aktif
4. Mengirim pesan, perintah, dan gambar
5. Keluar server jika diatur
6. Mengulang proses secara otomatis

---

## 💡 Tips

✅ **Lakukan:**

* Gunakan nama yang jelas
* Ubah `enabled` jadi `false` alih-alih hapus
* Gunakan `"__random_message"` untuk chat alami

❌ **Jangan:**

* Salah format JSON
* Hapus data server

---

## 🐛 Pemecahan Masalah

| Masalah             | Solusi                                       |
| ------------------- | -------------------------------------------- |
| Server dilewati     | Periksa `enabled: true`                      |
| Tidak bisa join     | Periksa `invite_id`                          |
| Tidak kirim pesan   | Aktifkan `auto_chat: true`                   |
| Gambar tidak muncul | Cek Freepik API Key                          |
| Error JSON          | Gunakan [jsonlint.com](https://jsonlint.com) |

</details>

---

<details>
<summary><strong>▶️ Cara Menggunakan</strong></summary>

### 📌 Jalankan bot

```bash
node index_meomundep.js
```

### ⬆️ Perbarui bot

```bash
git pull
```

---

### 🔍 Cara kerja

1. Membaca konfigurasi
2. Login menggunakan token
3. Terapkan proxy (jika ada)
4. Jalankan server satu per satu
5. Log aktivitas dengan warna dan waktu
6. Ulangi siklus otomatis

---

### 📝 Warna Log

* 🟢 Sukses
* 🔴 Error
* 🟡 Peringatan
* 🔵 Info
* 🟣 Aktivitas

---

### ⚠️ Catatan

* Pastikan token valid
* Gunakan proxy untuk menghindari banned
* Atur jeda realistis
* Jangan bagikan token atau API key

</details>

---

## 📞 Kontak & Dukungan

* 🛒 **Dukung saya:** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **Hubungi:** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **Grup:** [Gabung](https://t.me/KeoAirDropFreeNe)
* 📢 **Kanal:** [Lihat](https://t.me/KeoAirDropFreeNee)

---

## 📜 Lisensi

❗ **Dilarang menyalin atau mencuri kode.**
💀 **Gunakan dengan risiko sendiri.**
🚫 **Jangan kirim DM tanpa alasan.**

---

<p align="center"><a href="#-bot-otomatisasi-discord-oleh-meomundep">⬆️ Kembali ke atas</a></p>
