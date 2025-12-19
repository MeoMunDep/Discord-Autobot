# 🤖 Discord 자동화 봇 by @MeoMunDep

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/DISCORD_MEOMUNDEP_CLI.png?raw=true" width="600" />
</p>

---

## 🌐 개요

이 봇은 **Discord** 상호작용을 자동화합니다. 메시지 전송, 서버 참가/탈퇴, 메시지 처리 등을 **다수 계정**과 **프록시 지원**으로 수행합니다.

---

## 🚀 기능

* 💬 **자동 메시지 전송** — 지정 채널에 사용자 지정 지연으로 메시지 전송
* 🔗 **제출 채널 관리** — X/Twitter 게시물 제출 전용 시스템
* ➕ **자동 서버 가입** — 초대 링크로 서버 가입
* ➖ **자동 서버 탈퇴** — 지정한 서버 탈퇴
* 🌍 **프록시 지원** — HTTP(S) 및 SOCKS5 프록시 지원
* 🗑️ **자동 메시지 삭제** — 설정한 지연 후 전송한 메시지 삭제
* 🌐 **다국어 지원** — 메시지 언어 구성 가능
* 📕 **에러 로깅** — 에러가 발생한 서버/채널 ID 저장
* 🤖 **AI 답글** — AI 제공자(Groq, OpenRouter, Gemini, Poe, Grok)를 사용한 캐주얼 응답 생성
* 🖼️ **이미지 생성** — Freepik API(폴리네이션스 대체)를 사용해 AI 이미지 생성 및 전송
* 🎛️ **서버 제어** — 구성 삭제 없이 개별 서버 활성/비활성 전환 가능
* ⚙️ **이중 모드 작동** — 일반 모드(전체 흐름) 또는 제출 전용 모드로 실행
* 🎮 **음성 채널 지원** — 음성 채널 참가 및 유지
* 📊 **인터랙티브 관리** — 서버, 지연, 에러 관리를 위한 내장 CLI 메뉴
* 🚀 **CLI 플래그** — 명령줄 인수로 구성 재정의 가능

---

<details>
<summary><strong>🛠️ 설치</strong></summary>

### 📋 요구사항

* **Node.js** `v22.11.0`
* **npm** `v10.9.0`

📦 다운로드: [Node.js & npm](https://t.me/KeoAirDropFreeNe/257/1462)

---

### 📥 설치 단계

1. **레포지토리 복제:**

   ```bash
   git clone https://github.com/MeoMunDep/Discord-Autobot.git
   cd "discord-autobot"
   ```

2. **의존성 설치:**

   ```bash
   npm install
   ```

   ⚠️ Windows에서 *Execution Policy* 오류가 발생하면:

   ```bash
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ```

   그런 다음 다시:

   ```bash
   npm install
   ```

3. **봇 구성:**
   `configs.json` 파일을 편집하여 환경에 맞게 설정하세요.

4. **입력 파일 준비:**

   * 📄 `tokens.txt` — Discord 토큰(한 줄에 하나씩)
   * 🆔 `servers.json` — 서버 세부정보(길드 ID, 초대 코드, 채널 구성 등)
   * 🌐 `proxies.txt` — 프록시(선택적, 토큰당 하나)
   * 📜 `messages.yaml` — 메시지(다국어 지원)
   * 🗂️ `error-channels.json` — 실패한 채널/서버 저장(자동 생성/업데이트)

📌 도움 링크:

* 🔑 토큰 얻기: [Here](https://t.me/KeoAirDropFreeNee/1570)
* 💬 채팅 ID 얻기: [Here](https://t.me/KeoAirDropFreeNee/1569)
* 📡 채널/서버 ID 얻기: [Here](https://t.me/KeoAirDropFreeNee/1676)

</details>

---

<details>
<summary><strong>⚙️ 구성 (configs.json)</strong></summary>

| ⚙️ 설정                          | 📘 설명                                                 |
| ------------------------------ | ----------------------------------------------------- |
| `max_accounts_at_once`         | 동시에 실행할 계정 수                                          |
| `delay_between_accounts`       | 각 계정 시작 사이의 지연(초)                                     |
| `delay_each_channel`           | 채널 간 지연 범위 [min, max] (초)                             |
| `delay_each_chat`              | 같은 채팅 내 메시지 간 지연 범위 [min, max] (초)                    |
| `time_to_restart_all_accounts` | 전체 계정 재시작 전 시간(초)                                     |
| `chat_language`                | 자동 생성 메시지에 사용할 언어                                     |
| `ask_before_auto_chat`         | 각 사이클 전에 모드(submit_only/normal) 선택을 묻기                |
| `auto_chat`                    | 기본 모드: true = 일반 모드, false = 제출 전용 모드                 |
| `submit_x_url`                 | 일반 채널에서 X/Twitter URL 제출 활성화/비활성화                     |
| `join_server`                  | 자동 서버 가입 활성화/비활성화                                     |
| `leave_server`                 | 자동 서버 탈퇴 활성화/비활성화                                     |
| `delete_message`               | 메시지 전송 후 삭제 활성화/비활성화                                  |
| `enable_replies`               | 메시지 답글 활성화/비활성화                                       |
| `enable_reactions`             | 메시지 리액션 활성화/비활성화                                      |
| `reaction_chance`              | 메시지에 리액트할 확률 (0–1)                                    |
| `enable_ai_replies`            | AI 생성 답글 활성화/비활성화                                     |
| `ai_reply_chance`              | AI로 답글을 생성할 확률 (0–1)                                  |
| `ai_providers.*`               | AI 제공자(Groq, Gemini, Poe, OpenRouter, Grok)의 API 키 배열 |
| `image_generation_providers.*` | 이미지 AI 제공자(Freepik)의 API 키 배열                         |
| `voice_chat.enabled`           | 음성 채널 연결 활성화/비활성화                                     |
| `voice_chat.server_id`         | 음성 채널이 있는 길드 ID                                       |
| `voice_chat.channel_id`        | 참가할 음성 채널 ID                                          |
| `voice_chat.user_id`           | 음성 연결에 사용할 사용자 ID                                     |

---

### 🧾 예시 `configs.json`

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

### 👳 여러 API 키

봇은 각 제공자에 대해 **여러 API 키**를 지원합니다. 요청 시 배열에서 무작위로 하나의 키를 선택합니다:

```json
"ai_providers": {
  "groq": ["key1", "key2", "key3"],
  "gemini": ["key1", "key2"]
}
```

이것은 다음에 도움이 됩니다:

* **부하 분산** — 여러 API 계정으로 요청 분산
* **요율 제한 관리** — 여러 키로 한도 완화
* **신뢰성 향상** — 하나의 키가 실패하면 다른 키로 시도

---

<details>
<summary><strong>🔑 GROQ API 키</strong></summary>

[키 생성](https://console.groq.com/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GROQ_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 GROK API 키</strong></summary>

[키 생성](https://console.x.ai/api-keys)

**참고:** Grok API는 OpenAI 호환 형식을 사용합니다. X.AI 콘솔에서 API 키를 가져오세요.

</details>

<details>
<summary><strong>🔑 GEMINI API 키</strong></summary>

[키 생성](https://aistudio.google.com/app/apikey)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/GEMINI_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 OPENROUTER API 키</strong></summary>

[키 생성](https://openrouter.ai/settings/keys)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/OPENROUTER_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 POE API 키</strong></summary>

[키 생성](https://poe.com/api_key)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/POE_API_KEY.png?raw=true" width="600" />
</p>

</details>

<details>
<summary><strong>🔑 FREEPIK API 키</strong></summary>

[키 생성](https://api.freepik.com/v1/auth/create)

<p align="center">
  <img src="https://github.com/MeoMunDep/Discord-Autobot/blob/main/IMAGE/FREEPIK_API_KEY.png?raw=true" width="600" />
</p>

</details>

</details>

---

<details>
<summary><strong>🗂️ servers.json 구조 (상세 가이드)</strong></summary>

`servers.json` 파일은 **봇 구성의 핵심**입니다. 봇이 어떤 서버와 상호작용할지, 각 채널에서 어떤 동작을 수행할지를 정의합니다.

---

## 📚 기본 구조

파일은 서버 객체들의 **JSON 배열**이어야 합니다. 각 서버는 봇이 상호작용할 Discord 서버를 나타냅니다.

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

## 🔑 필드 설명

### 1️⃣ **`name`** (문자열 - 필수)

* **설명:** 서버를 식별하기 위한 친숙한 이름(참고용)
* **예시:** `"Curious"`, `"My Gaming Server"`, `"Crypto Community"`
* **목적:** 로그와 구성에서 서버를 식별하기 위함

### 2️⃣ **`guild_id`** (문자열 - 필수)

* **설명:** Discord 서버의 고유 ID
* **얻는법:** [가이드 참조](https://t.me/KeoAirDropFreeNee/1676)
* **예시:** `"1417067849926705235"`
* **목적:** `leave_server: true`일 때 서버 탈퇴에 사용

### 3️⃣ **`invite_id`** (문자열 - 필수)

* **설명:** 서버 참가에 사용할 초대 코드
* **예시:** `"altiuslabs"` (discord.gg/altiuslabs에서)
* **특수 값:**

  * `""`(빈 문자열) - 이 서버에 가입하지 않음
  * `"none"` - 가입 안 함
  * `"unknown"` - 가입 안 함
* **목적:** `join_server: true`일 때 가입에 사용

### 4️⃣ **`enabled`** (불리언 - 필수)

* **설명:** 봇이 이 서버를 처리할지 여부
* **값:**

  * `true` - 봇이 서버 처리(메시지 전송, 가입 등)
  * `false` - 봇이 이 서버 건너뜀
* **목적:** 구성을 삭제하지 않고 서버를 일시 비활성화할 수 있음

### 5️⃣ **`channels`** (객체 - 필수)

채널별 동작을 정의하는 곳입니다. 네 가지 카테고리가 있습니다:

---

## 🗨️ 채널 유형

### 🔗 **`submit_chat`** - X/Twitter 게시물 제출(신규)

**목적:** X/Twitter 게시물 링크 전용 제출 채널

**포맷:**

```json
"submit_chat": {
  "CHANNEL_ID": {
    "message": "https://x.com/yourpost",
    "delay": [6000, 12000]
  }
}
```

**필드:**

* `message` (문자열): 제출할 X/Twitter URL
* `delay` (배열): 봇이 다시 게시하기 전 채널별 쿨다운 [초]
* `enabled` (불리언, 선택적): 특정 채널 비활성화

**예시:**

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

**동작 방식:**

* 제출 전용 모드 또는 일반 모드에서 이 채널을 처리
* 각 채널은 독립 쿨다운을 가짐
* `submit_x_url: false`이면 일반 채널에 있는 X/Twitter URL은 건너뜀

---

### 📝 **`raw_chat`** - 텍스트 메시지

일반 텍스트 메시지를 전송합니다.

**간단 포맷:**

```json
"raw_chat": {
  "CHANNEL_ID": "MESSAGE_TO_SEND"
}
```

**고급 옵션 포맷:**

```json
"raw_chat": {
  "CHANNEL_ID": {
    "message": "MESSAGE_TO_SEND",
    "delay": [60, 120],
    "enabled": true
  }
}
```

**특수 값:**

* `"__random_message"` - 봇이 AI 또는 messages.yaml에서 무작위 메시지 사용
* `"[AI] Your instruction"` - AI를 사용해 지정한 명령으로 메시지 생성
* 특정 텍스트 - 정확히 해당 텍스트 전송(예: `"gm"`, `"Hello!"`)

**예시:**

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

**동작 예시:**

* 채널 `1417068171243815002`: AI 지시문 "Respond to random messages"로 응답 생성
* 채널 `1417084328504197250`: 6000–12000초마다 "gm" 전송
* 채널 `9876543210987654321`: 무작위 AI 메시지 전송

---

### 🤖 **`command_chat`** - 봇 명령

슬래시 커맨드나 봇 명령을 채널에 전송합니다.

**포맷:**

```json
"command_chat": {
  "CHANNEL_ID": {
    "command": "COMMAND_TO_EXECUTE",
    "delay": [60, 120]
  }
}
```

**예시:**

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

### 🖼️ **`image_chat`** - AI 생성 이미지

Freepik API를 사용해 이미지를 생성하고 채널에 전송합니다(폴리네이션스.ai로 자동 대체 가능).

**포맷:**

```json
"image_chat": {
  "CHANNEL_ID": {
    "prompt": "IMAGE_GENERATION_PROMPT",
    "delay": [60, 120]
  }
}
```

**예시:**

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

**요구사항:**

* `configs.json`에 `freepik` API 키가 있어야 함
* Freepik이 실패하거나 키가 없으면 자동으로 Pollinations.ai(무료)로 대체

---

## 📋 전체 예시

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

## ⏱️ 지연 시스템

봇은 **스마트 쿨다운 시스템**을 사용하여 스팸 및 요율 제한을 방지합니다:

### 📊 지연 우선순위(높음 → 낮음):

1. **채널별 지연** (`servers.json` 내)

   ```json
   "1234567890": {
     "message": "gm",
     "delay": [300, 600]  ← 우선 적용
   }
   ```

2. **글로벌 delay_each_chat** (`configs.json` 내)

   ```json
   "delay_each_chat": [10, 15]  ← 채널에 지연이 없을 때 대체 적용
   ```

### 🔄 동작 방식:

* 각 채널은 **독립적인 쿨다운 타이머**를 가짐
* 타이머는 **성공적으로 메시지 전송된 시점**에 시작
* 쿨다운 기간이 지나기 전엔 채널을 건너뜀(다음 전송 시도하지 않음)
* 쿨다운은 `chat-timestamps.json`에 영구 저장됨

### 💡 팁:

* 활동이 적은 채널에는 긴 지연(3600–7200초)을 사용
* 활동이 높은 채널에는 짧은 지연(60–300초)을 사용
* 제출 채널은 일반적으로 6000–12000초 지연 사용
* 이미지 생성은 API 비용 때문에 더 긴 지연(7200–10000초) 권장

---

## 💡 팁 및 모범 사례

### ✅ 해야 할 것들:

* 식별하기 쉬운 서버 이름 사용
* 서버를 일시 비활성화할 때는 `enabled: false` 사용
* 개별 채널을 비활성화하려면 해당 채널의 `enabled: false` 설정
* 채널별 지연을 사용하여 더 세밀하게 제어
* `"[AI] instruction"` 형식으로 사용자 지정 AI 응답 지시문 사용
* X/Twitter 링크는 `submit_chat`에 넣기
* 여러 서버 추가 전에 먼저 한 서버로 테스트
* 이미지 생성에는 API 비용 절감을 위해 긴 지연 사용

### ❌ 하지 말아야 할 것들:

* 서버 항목을 삭제하지 말고 `enabled: false`로 비활성화
* 채널에 지연을 추가하는 것을 잊지 마세요(기본값이 적용되긴 하나 명시 권장)
* 매우 짧은 지연(< 60초)은 피하세요(요율 제한 위험)
* `tokens.txt` 파일을 다른 사람과 공유하지 마세요
* 메시지가 과도하게 전송되지 않도록 쿨다운을 적절히 설정
* AI 제공자는 순차적으로 시도되며 하나가 실패하면 다음 것으로 시도
* Freepik 실패 시 자동으로 무료 대체 서비스 사용
* CLI 플래그는 실행 중 모든 설정을 재정의함

---

## 🔍 채널 ID 찾기

1. Discord에서 개발자 모드 활성화(설정 → 고급 → 개발자 모드)
2. 채널 우클릭
3. "채널 ID 복사" 선택
4. `servers.json`에 붙여넣기

[시각 가이드](https://t.me/KeoAirDropFreeNee/1676)

---

## 🐛 문제 해결

| 문제             | 해결 방법                                                     |
| -------------- | --------------------------------------------------------- |
| 봇이 서버를 건너뜀     | 서버의 `enabled: true` 설정 확인                                 |
| 봇이 특정 채널을 건너뜀  | 채널에 `enabled: false`로 설정되어 있지 않은지 확인                      |
| 봇이 서버에 가입하지 않음 | `invite_id` 값과 `join_server: true` 설정 확인                  |
| 메시지가 전송되지 않음   | 채널 ID가 올바른지, `auto_chat: true`인지 확인                       |
| 메시지가 너무 자주 전송됨 | 채널의 `delay` 값을 늘리기                                        |
| 이미지 생성이 되지 않음  | `configs.json`에서 Freepik API 키 확인(없으면 Pollinations.ai 사용) |
| 제출 채널이 작동하지 않음 | 올바른 모드(submit-only 또는 normal)로 실행 중인지 확인                  |
| JSON 구문 오류     | JSON 밸리데이터(jsonlint.com 등)로 확인                            |

</details>

---

<details>
<summary><strong>▶️ 사용법</strong></summary>

### 📌 봇 실행

**기본 실행:**

```bash
node index_meomundep.js
```

**CLI 플래그 사용 예:**

```bash
# 제출 전용 모드 강제 실행 (submit_chat 채널만 처리)
node index_meomundep.js --submit
node index_meomundep.js -s

# 일반 모드 강제 실행 (전체 흐름: 가입, 채팅, 탈퇴)
node index_meomundep.js --chat
node index_meomundep.js -c

# 도움말 표시
node index_meomundep.js --help
node index_meomundep.js -h
```

### 🎮 작동 모드

봇은 두 가지 모드를 지원합니다:

#### 1️⃣ **일반 모드** (전체 흐름)

* 서버 가입(`join_server: true`일 경우)
* 모든 채널 유형 처리: `submit_chat`, `raw_chat`, `command_chat`, `image_chat`
* 서버 탈퇴(`leave_server: true`일 경우)
* AI를 사용한 메시지 생성

**활성화 방법:**

* CLI: `node index_meomundep.js --chat`
* 구성: `"auto_chat": true` (기본값)
* 런타임: `ask_before_auto_chat: true`일 경우 옵션 `2` 선택

#### 2️⃣ **제출 전용 모드**

* 서버 가입/탈퇴 건너뜀
* **오직** `submit_chat` 채널만 처리
* `raw_chat`, `command_chat`, `image_chat` 무시
* X/Twitter 제출 전용 작업에 적합

**활성화 방법:**

* CLI: `node index_meomundep.js --submit`
* 구성: `"auto_chat": false`
* 런타임: `ask_before_auto_chat: true`일 경우 옵션 `1` 선택

### 🔄 모드 우선순위 (높음 → 낮음):

1. **CLI 플래그** (--submit 또는 --chat)
2. **사용자 프롬프트** (`ask_before_auto_chat: true`일 경우)
3. **구성 설정** (`auto_chat` 값)

### 📊 인터랙티브 관리

다음으로 접근 가능한 내장 관리 시스템이 포함되어 있습니다:

```bash
node index_meomundep.js
# 그런 다음 메인 메뉴에서 "Server Manager" 선택
```

**관리 기능:**

🖥️ **메인 메뉴:**

1. 서버 관리 (서버 활성/비활성)
2. 지연 관리 (지연 추가/표시)
3. 제출 관리 (X 게시물 링크)
4. 에러 채널 관리
5. 종료

📡 **서버 관리:**

* 모든 서버 일괄 활성/비활성
* 특정 서버 활성/비활성
* 특정 서버만 활성화(다른 서버 비활성화)
* 서버 상태 개요 보기

⏱️ **지연 관리:**

* 지연이 없는 채널에 기본 지연 추가
* 사용자 지정 지연 추가
* 지연 통계 보기
* 사용중인 고유 지연 값 나열

🔗 **제출 관리:**

* 모든 제출 채널 나열
* 새 제출 채널 추가
* 제출 URL 편집
* 제출 채널 제거
* 제출 통계 보기

🚫 **에러 채널 관리:**

* 토큰별 실패 채널 보기
* 특정 실패 채널 삭제
* 토큰 항목 전체 삭제
* 실패 채널 기록 정리

### ⬆️ 봇 업데이트

```bash
git pull
npm install
```

---

### 🔍 동작 원리 요약

1. `configs.json`에서 구성 읽기
2. CLI 플래그 확인(--submit, --chat, --help)
3. 런타임에서 모드 선택 프롬프트(없으면 구성 사용)
4. 모드 결정(제출 전용 또는 일반)
5. `tokens.txt`에서 토큰으로 로그인
6. 계정별로 프록시 적용(가능한 경우 `proxies.txt` 사용)
7. `servers.json`의 각 서버 처리:

   * ✅ 서버가 `enabled: true`인지 확인
   * ✅ 채널이 `enabled: false`인지 확인
   * ✅ 쿨다운 타이머 확인 후 전송
   * **일반 모드:**

     * ➕ `join_server: true`이면 서버 가입(초대 코드 사용)
     * 💬 모든 채널 유형 처리
     * ➖ `leave_server: true`이면 서버 탈퇴
   * **제출 전용 모드:**

     * 🔗 `submit_chat` 채널만 처리
     * ⏭️ 가입/탈퇴 및 다른 채널 유형 건너뜀
8. 모든 이벤트를 타임스탬프와 함께 로그에 기록
9. 중복 게시 방지를 위해 타임스탬프 저장
10. 동작 사이에 지연 적용
11. `time_to_restart_all_accounts` 초 후 자동 반복

---

### 📝 로그 및 타임스탬프

* 각 로그 항목은 타임스탬프 포함
* 타임스탬프 형식은 `chat_language` 설정을 따름
* 색상 구분 로그(보기 편함):

  * 🟢 성공
  * 🔴 에러
  * 🟡 경고
  * 🔵 정보
  * 🟣 처리 중
  * 🔶 AI/제공자 동작

---

### 🎙️ 음성 채널 지원

봇은 음성 채널 참가 및 유지 기능을 제공합니다:

```json
"voice_chat": {
  "enabled": true,
  "server_id": "1234567890123456789",
  "channel_id": "9876543210987654321",
  "user_id": "1111222233334444555"
}
```

**기능:**

* 음성 채널 자동 연결
* 연결 유지용 하트비트 메커니즘
* 끊김 시 자동 재연결(최대 5회, 지수 백오프)
* WebRTC 프로토콜 지원
* 깔끔한 연결 해제 처리

**요구사항:**

* 채널 참가 권한 필요
* 토큰이 해당 서버에 접근 가능해야 함
* `user_id`는 토큰의 사용자 ID와 일치해야 함

---

### ⚠️ 중요 사항

* ✅ 모든 토큰이 유효하며 필요한 권한을 가지고 있는지 확인
* 🌐 요율 제한이나 밴을 피하려면 프록시 사용(토큰당 1개 권장)
* ⏱️ 많은 계정을 운영할 때는 지연 설정을 신중히 조정
* 📊 로그를 모니터링하여 오류를 확인하고 `servers.json`을 조정
* 🔒 토큰과 API 키는 안전하게 보관
* 🚫 `tokens.txt` 파일을 다른 사람과 공유하지 말 것
* 💾 봇은 실패한 채널을 `error-channels.json`에 저장하여 재시도 방지
* 🔄 제출 전용 모드로 X/Twitter 제출 작업만 수행 가능
* 🎯 적절한 채널 쿨다운 설정으로 스팸 감지 방지
* 🤖 AI 제공자는 순차적으로 시도되며 성공 시 중단
* 📸 Freepik 실패 시 무료 대체 서비스 자동 사용
* ⚡ CLI 플래그는 모든 구성 설정을 재정의함

</details>

---

## 📞 연락 및 지원

* 🛒 **후원:** [Link 1](https://t.me/KeoAirDropFreeNe/312/27801) • [Link 2](https://github.com/MeoMunDep/MeoMunDep)
* 💬 **문의:** [@MeoMunDep](https://t.me/MeoMunDep)
* 👥 **그룹:** [그룹 참여](https://t.me/KeoAirDropFreeNe)
* 📢 **채널:** [채널 방문](https://t.me/KeoAirDropFreeNee)

---

⚠️ **면책 조항**

이 프로젝트는 **개인 학습 목적**으로 만들어졌습니다. 해당 리포지토리에 참조된 회사나 브랜드와 관련된 공식 제품이나 서비스가 아닙니다. 제작자는 그러한 회사/브랜드와 어떤 방식으로도 제휴, 승인, 소속되어 있지 않습니다.

코드는 **있는 그대로** 제공되며 보증이나 보장이 없습니다. 일부 소스는 학습 및 연구 목적으로 개인 구현 기법을 보호하려고 의도적으로 **난독화**되어 있습니다.

책임 있는 방식으로 사용하세요. 이 코드의 **재배포, 재판매, 상업적 이용**은 허용되지 않습니다.

---

<p align="center"><a href="#-discord-automation-bot-by-meomundep">⬆️ 위로 가기</a></p>

