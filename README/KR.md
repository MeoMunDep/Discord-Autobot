# 🤖 Discord 자동화 봇 by @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 개요

이 봇은 **Discord**에서 여러 작업을 자동으로 수행하도록 설계되었습니다.
메시지 전송, 서버 자동 참여/탈퇴, AI 응답, 프록시를 통한 다중 계정 관리 등 다양한 기능을 제공합니다.

---

## 🚀 주요 기능

* 💬 **자동 메시지 전송** — 지정된 채널에 자동으로 메시지 전송
* ➕ **자동 서버 참여** — 초대 링크를 통해 서버 자동 참여
* ➖ **자동 서버 탈퇴** — 설정된 서버 자동 탈퇴
* 🌍 **프록시 지원** — HTTP(S) 및 SOCKS5 프록시 지원
* 🗑️ **자동 메시지 삭제** — 일정 시간 후 메시지 자동 삭제
* 🌐 **다국어 지원** — 메시지 언어 변경 가능
* 📕 **에러 로깅** — 실패한 서버 및 채널 ID 저장
* 🤖 **AI 자동 응답** — Groq, OpenRouter, Gemini, Poe 등 AI 기반 응답
* 🖼️ **AI 이미지 생성** — Freepik API를 통한 이미지 자동 생성 및 전송
* 🎛️ **서버 제어** — 개별 서버의 자동화 기능 활성/비활성 설정 가능

---

<details>
<summary><strong>🛠️ 설치 방법</strong></summary>

### 📋 필수 환경

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 다운로드: [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 설치 단계

1. **레포지토리 클론:**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **의존성 설치:**

   ```bash
   npm install
   ```

   ⚠️ Windows에서 *Execution Policy* 오류 발생 시:

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   이후 다시 실행:

   ```bash
   npm install
   ```

3. **설정 파일 수정:**
   `configs.json`을 열어 환경에 맞게 수정합니다.

4. **입력 파일 준비:**

   * 📄 `tokens.txt` — Discord 토큰 (한 줄당 하나)
   * 🆔 `servers.json` — 서버 설정 (guild ID, 초대 코드 등)
   * 🌐 `proxies.txt` — 프록시 정보 (선택 사항)
   * 📜 `messages.yaml` — 다국어 메시지
   * 🗂️ `error_channels.json` — 오류 로그 저장 파일

📌 참고 링크:

* 🔑 토큰 얻기: [여기 클릭](https://t.me/KeoAirDropFreeNee/1570)
* 💬 채팅 ID 확인: [여기 클릭](https://t.me/KeoAirDropFreeNee/1569)
* 📡 채널/서버 ID 확인: [여기 클릭](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ 설정 파일 (configs.json)</strong></summary>

| ⚙️ 설정                          | 📘 설명                |
| ------------------------------ | -------------------- |
| `maxAccountsAtOnce`            | 동시에 실행할 계정 수         |
| `delayBetweenAccounts`         | 계정 시작 간 대기 시간 (초)    |
| `delayEachChannel`             | 각 채널 간 메시지 전송 간격 (초) |
| `delayEachChat`                | 각 채팅 간 대기 시간 (초)     |
| `timeToRestartAllAccounts`     | 전체 계정 재시작 주기 (초)     |
| `chat_language`                | 자동 생성 메시지 언어         |
| `auto_chat`                    | 자동 채팅 기능 활성화         |
| `join_server`                  | 서버 자동 참여 활성화         |
| `leave_server`                 | 서버 자동 탈퇴 활성화         |
| `delete_message`               | 메시지 전송 후 삭제 여부       |
| `enable_replies`               | 자동 답장 활성화            |
| `enable_reactions`             | 자동 리액션 활성화           |
| `reaction_chance`              | 리액션 확률 (0–1)         |
| `enable_ai_replies`            | AI 응답 활성화            |
| `ai_providers.*`               | AI 제공자 API 키         |
| `image_generation_providers.*` | 이미지 생성 API 키         |

---

### 🧾 예시 configs.json

```json
{
  "maxAccountsAtOnce": 1,
  "delayBetweenAccounts": 17,
  "delayEachChat": [11, 15],
  "delayEachChannel": [17, 19],
  "timeToRestartAllAccounts": 360,
  "chat_language": "ko",
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
<summary><strong>🗂️ servers.json 구성 예시</strong></summary>

`servers.json`은 봇이 작동할 서버와 채널을 정의하는 핵심 설정 파일입니다.

---

## 📚 기본 구조

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

### 🗨️ 채널 유형

#### 📝 `raw_chat` — 일반 채팅

```json
"raw_chat": {
  "CHANNEL_ID": "__random_message"
}
```

#### 🤖 `command_chat` — 명령 실행

```json
"command_chat": {
  "CHANNEL_ID": "/claim daily"
}
```

#### 🖼️ `image_chat` — AI 이미지 생성

```json
"image_chat": {
  "CHANNEL_ID": "한강의 야경"
}
```

---

### 📋 전체 예시

```json
[
  {
    "name": "Curious Community",
    "guild_id": "1417067849926705235",
    "invite_id": "curious",
    "channels": {
      "raw_chat": {
        "1417068171243815002": "__random_message",
        "1417084328504197250": "안녕하세요 여러분!"
      },
      "command_chat": {
        "1417068171243815003": "/daily claim"
      },
      "image_chat": {
        "1435601397591703675": "Curious 브라우저 로고"
      }
    },
    "enabled": true
  }
]
```

</details>

---

<details>
<summary><strong>▶️ 실행 방법</strong></summary>

### 📌 봇 실행

```bash
node index_meomundep.js
```

### ⬆️ 업데이트

```bash
git pull
```

---

### 🔍 작동 방식

1. `configs.json` 설정 로드
2. `tokens.txt`의 토큰으로 로그인
3. 각 계정에 프록시 적용
4. `servers.json`의 서버별 작업 수행
5. 메시지/명령/이미지 자동 전송
6. 자동 탈퇴 (활성화 시)
7. 주기적으로 전체 계정 재시작

</details>

---

## 📞 지원 및 문의

* 🛒 **후원:** [링크 1](https://t.me/KeoAirDropFreeNe/312/27801) • [링크 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **문의:** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **커뮤니티:** [참여하기](https://t.me/KeoAirDropFreeNe)
* 📢 **채널:** [보기](https://t.me/KeoAirDropFreeNee)

---

## 📜 라이선스

❗ **이 프로젝트의 무단 복제 및 도용을 금지합니다.**
💀 **사용은 본인 책임 하에 진행하세요.**
🚫 **불필요한 질문으로 DM을 보내지 마세요.**

---

<p align="center"><a href="#-discord-자동화-봇-by-meomundep">⬆️ 맨 위로 이동</a></p>
