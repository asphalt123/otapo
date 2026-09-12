<div align="center">

# Otapo — Android 与 Wear OS 本地 Tapo 控制

**无云。无追踪。只用 KLAP。**

[![Release](https://img.shields.io/github/v/release/asphalt123/otapo?style=for-the-badge&color=6366f1)](https://github.com/asphalt123/otapo/releases) · [![License](https://img.shields.io/badge/协议-MIT-22c55e?style=for-the-badge)](../LICENSE)

[🇺🇸 English](../README.md) · [🇨🇳 中文](./README.zh.md) · [🇯🇵 日本語](./README.ja.md)

</div>

---

<div align="center">

### 手机 + 手表 = ❤️

```
┌─────────────────────┐         ┌─────────────────────┐
│  📱 Otapo 手机      │  ←───→  │  ⌚ Otapo Wear OS   │
│                     │  Data   │                     │
│  🔌 客厅        ON  │  Layer  │  ┌───────────────┐  │
│  🛏️ 卧室       OFF  │  ═══►  │  │ 🔌 客厅        │  │
│  🍳 厨房        ON  │         │  │    ● ON       │  │
│  💡 书房       45%  │         │  └───────────────┘  │
└─────────────────────┘         └─────────────────────┘
```

</div>

## Otapo 是什么？

Otapo 将您的 Android 手机和 Wear OS 手表变成 Tapo 智能插座和灯泡的**本地遥控器**。无云账户，无数据离开您的家，无订阅。仅通过 WiFi 进行 KLAP 协议。

手机登录一次 → 手表自动同步。搞定。

---

## 功能特性

| | | |
|:--|:--|:--|
| 🔗 **手机 ↔ 手表同步** | 通过 Wear OS Data Layer 同步凭据 | |
| 📡 **局域网扫描** | 通过 KLAP 发现设备 — 无需互联网 | |
| 💡 **灯光控制** | L510/L520/L610/L630 亮度 + 色轮 | |
| ⚡ **能耗监测** | P110 实时功率 + 日/月 kWh | |
| ⏰ **定时器** | 倒计时或重复计划 | |
| 📱 **快捷设置 + 小组件** | 不打开应用即可切换 | |
| ⌚ **表盘复杂功能** | 在表盘上查看设备状态 | |
| 🔔 **离线警报** | 设备断开连接时通知 | |
| 👥 **分组** | 长按 = 切换整个组 | |
| 📍 **地理围栏** | 基于 GPS 自动开/关 | |
| 👤 **多账户** | 切换家庭/办公室，KeyStore 加密 | |
| 🗣️ **语音** | "嘿 Google，打开插座" | |
| 💾 **备份** | 加密导出/导入/共享 | |
| 🎨 **深色 Material 3** | 现代、动画、无障碍 | |
| 🌐 **16 种语言** | 完整国际化 + RTL 支持 | |

---

## 兼容设备

| 设备 | 类型 | 功能 |
|:--|:--|:--|
| **P100** | 🔌 插座 | 开/关 |
| **P110** | ⚡ 插座 | + 能耗 |
| **L510** | 💡 灯泡 | + 亮度 |
| **L520** | 🌡️ 灯泡 | + 色温 |
| **L610** | 🎨 灯泡 | + 全彩 |
| **L630** | 🌈 灯泡 | + 全彩 |

---

## 快速开始

```bash
git clone https://github.com/asphalt123/otapo.git
cd otapo/Otapo
export ANDROID_HOME=/path/to/sdk JAVA_HOME=/path/to/jdk17
./gradlew :app:assembleDebug :mobile:assembleDebug
adb install app/build/outputs/apk/debug/app-debug.apk
adb install mobile/build/outputs/apk/debug/mobile-debug.apk
```

---

## 许可证

[MIT](../LICENSE) © 2026 Otapo
