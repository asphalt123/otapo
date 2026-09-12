<div align="center">

# Otapo — Android と Wear OS 向けローカル Tapo 制御

**クラウドなし。追跡なし。KLAP だけ。**

[![Release](https://img.shields.io/github/v/release/asphalt123/otapo?style=for-the-badge&color=6366f1)](https://github.com/asphalt123/otapo/releases) · [![License](https://img.shields.io/badge/License-MIT-22c55e?style=for-the-badge)](../LICENSE)

[🇺🇸 English](../README.md) · [🇯🇵 日本語](./README.ja.md) · [🇨🇳 中文](./README.zh.md)

</div>

---

<div align="center">

### スマートフォン + ウォッチ = ❤️

```
┌─────────────────────┐         ┌─────────────────────┐
│  📱 Otapo モバイル   │  ←───→  │  ⌚ Otapo Wear OS   │
│                     │  Data   │                     │
│  🔌 リビング    ON  │  Layer  │  ┌───────────────┐  │
│  🛏️ 寝室       OFF │  ═══►  │  │ 🔌 リビング    │  │
│  🍳 キッチン    ON  │         │  │    ● ON       │  │
│  💡 書斎      45%  │         │  └───────────────┘  │
└─────────────────────┘         └─────────────────────┘
```

</div>

## Otapo とは？

Otapo は Android スマートフォンと Wear OS ウォッチを Tapo プラグと電球の**ローカルリモコン**に変えます。クラウドアカウント不要、データは家を出ない、サブスクリプション不要。WiFi 経由の KLAP プロトコルだけ。

スマートフォンで一度ログイン → ウォッチが自動同期。それだけ。

---

## 機能

| | | |
|:--|:--|:--|
| 🔗 **スマホ ↔ ウォッチ同期** | Wear OS Data Layer で認証情報を同期 | |
| 📡 **ローカルスキャン** | KLAP でデバイス検出 — インターネット不要 | |
| 💡 **照明制御** | L510/L520/L610/L630 の明るさ + カラーホイール | |
| ⚡ **エネルギー監視** | P110 のワット + kWh | |
| ⏰ **タイマー** | カウントダウンまたは繰り返しスケジュール | |
| 📱 **タイル & ウィジェット** | アプリを開けずに切り替え | |
| ⌚ **コンプリケーション** | ウォッチフェイスにデバイス状態を表示 | |
| 🔔 **オフライン通知** | デバイス切断時に通知 | |
| 👥 **グループ** | 長押し = グループ全体を切り替え | |
| 📍 **ジオフェンシング** | GPS による自動 ON/OFF | |
| 👤 **マルチアカウント** | 家の切り替え、KeyStore 暗号化 | |
| 🗣️ **音声** | "Hey Google、プラグをオンにして" | |
| 💾 **バックアップ** | 暗号化エクスポート/インポート/共有 | |
| 🎨 **ダーク Material 3** | モダン、アニメーション、アクセシブル | |
| 🌐 **16 言語** | 完全な i18n + RTL サポート | |

---

## 対応デバイス

| デバイス | 種類 | 機能 |
|:--|:--|:--|
| **P100** | 🔌 プラグ | On/Off |
| **P110** | ⚡ プラグ | + エネルギー |
| **L510** | 💡 電球 | + 明るさ |
| **L520** | 🌡️ 電球 | + 色温度 |
| **L610** | 🎨 電球 | + フルカラー |
| **L630** | 🌈 電球 | + フルカラー |

---

## クイックスタート

```bash
git clone https://github.com/asphalt123/otapo.git
cd otapo/Otapo
export ANDROID_HOME=/path/to/sdk JAVA_HOME=/path/to/jdk17
./gradlew :app:assembleDebug :mobile:assembleDebug
adb install app/build/outputs/apk/debug/app-debug.apk
adb install mobile/build/outputs/apk/debug/mobile-debug.apk
```

---

## ライセンス

[MIT](../LICENSE) © 2026 Otapo
