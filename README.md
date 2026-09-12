<div align="center">

```
    ██████╗ ████████╗ █████╗ ██████╗  ██████╗ 
   ██╔═══██╗╚══██╔══╝██╔══██╗██╔══██╗██╔═══██╗
   ██║   ██║   ██║   ███████║██████╔╝██║   ██║
   ██║   ██║   ██║   ██╔══██║██╔═══╝ ██║   ██║
   ╚██████╔╝   ██║   ██║  ██║██║     ╚██████╔╝
    ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚═╝      ╚═════╝ 
```

### Control your Tapo devices locally. No cloud. No tracking.

[![Release](https://img.shields.io/github/v/release/asphalt123/otapo?style=for-the-badge&color=6366f1)](https://github.com/asphalt123/otapo/releases)
[![License](https://img.shields.io/badge/License-MIT-22c55e?style=for-the-badge)](LICENSE)
[![Languages](https://img.shields.io/badge/Languages-16-06b6d4?style=for-the-badge)](./)
[![Build](https://img.shields.io/github/actions/workflow/status/asphalt123/otapo/build.yml?style=for-the-badge&label=Build)](https://github.com/asphalt123/otapo/actions)

[🇺🇸 English](./README.md) · [🇫🇷 Français](./docs/README.fr.md) · [🇩🇪 Deutsch](./docs/README.de.md) · [🇪🇸 Español](./docs/README.es.md) · [🇯🇵 日本語](./docs/README.ja.md) · [🇨🇳 中文](./docs/README.zh.md) · [🇸🇦 العربية](./docs/README.ar.md) · [🇵🇹 Português](./docs/README.pt.md)

---

</div>

<div align="center">

### Phone + Watch = ❤️

```
┌─────────────────────┐         ┌─────────────────────┐
│  📱 Otapo Mobile    │  ←───→  │  ⌚ Otapo Wear OS   │
│                     │  Data   │                     │
│  🔌 Living Room  ON │  Layer  │  ┌───────────────┐  │
│  🛏️  Bedroom   OFF │  ═══►  │  │ 🔌 Living Room │  │
│  🍳 Kitchen    ON  │         │  │    ● ON       │  │
│  💡 Office    45%  │         │  └───────────────┘  │
│                     │         │                     │
│  ⚡ 24.5 W          │         │  Tap to toggle      │
└─────────────────────┘         └─────────────────────┘
```

</div>

## What is Otapo?

Otapo turns your Android phone and Wear OS watch into a **local remote control** for Tapo smart plugs and bulbs. No cloud accounts, no data leaving your home, no subscriptions. Just direct KLAP protocol over your WiFi network.

Login once on your phone → your watch syncs automatically. Done.

---

## Features

| | | |
|:--|:--|:--|
| 🔗 **Phone ↔ Watch Sync** | Credentials sync instantly via Wear OS Data Layer | |
| 📡 **Local Scan** | Finds devices via KLAP — no internet needed | |
| 💡 **Light Control** | Brightness + color wheel for L510/L520/L610/L630 | |
| ⚡ **Energy Monitor** | Real-time watts + kWh for P110 | |
| ⏰ **Timers** | Countdown or recurring schedules | |
| 📱 **Tile & Widgets** | Toggle without opening the app | |
| ⌚ **Complication** | Device state on your watch face | |
| 🔔 **Offline Alerts** | Get notified when a device disappears | |
| 👥 **Groups** | Long-press = toggle whole group | |
| 📍 **Geofencing** | Auto on/off based on GPS | |
| 👤 **Multi-Account** | Switch homes, KeyStore encrypted | |
| 🗣️ **Voice** | "Hey Google, turn on the plug" | |
| 💾 **Backup** | Encrypted export/import/share | |
| 🎨 **Dark Material 3** | Modern, animated, accessible | |
| 🌐 **16 Languages** | Full i18n with RTL support | |

---

## Compatibility

| Device | Type | Features |
|:--|:--|:--|
| **P100** | 🔌 Plug | On/Off |
| **P110** | ⚡ Plug | On/Off + Energy |
| **L510** | 💡 Bulb | On/Off + Brightness |
| **L520** | 🌡️ Bulb | + Color temperature |
| **L610** | 🎨 Bulb | + Full color |
| **L630** | 🌈 Bulb | + Full color |

---

## Quick Start

```bash
# Clone
git clone https://github.com/asphalt123/otapo.git
cd otapo/Otapo

# Build (JDK 17 + Android SDK 34)
export ANDROID_HOME=/path/to/sdk JAVA_HOME=/path/to/jdk17
./gradlew :app:assembleDebug :mobile:assembleDebug

# Install
adb install app/build/outputs/apk/debug/app-debug.apk          # Phone
adb install mobile/build/outputs/apk/debug/mobile-debug.apk   # Watch
```

Then open on your phone, login with your Tapo credentials, and your watch syncs automatically.

---

## Architecture

```
┌─────────────────────────┐     Wear OS      ┌─────────────────────────┐
│      📱 PHONE APP       │ ◄──Data Layer──► │      ⌚ WATCH APP       │
│                         │                  │                         │
│  ┌───────────────────┐  │                  │  ┌───────────────────┐  │
│  │   Compose UI      │  │                  │  │   Views (XML)     │  │
│  ├───────────────────┤  │                  │  ├───────────────────┤  │
│  │  DeviceControl    │  │                  │  │  DeviceList       │  │
│  │  TimerManager     │  │                  │  │  Complication     │  │
│  │  GeofenceManager  │  │                  │  │                   │  │
│  │  BackupManager    │  │                  │  │                   │  │
│  ├───────────────────┤  │                  │  ├───────────────────┤  │
│  │  TapoClient/KLAP  │  │                  │  │  DataLayerService │  │
│  └───────────────────┘  │                  │  └───────────────────┘  │
│           │             │                  │           │             │
└───────────┼─────────────┘                  └───────────┼─────────────┘
            │                                            │
            └──────────── Local WiFi (KLAP) ─────────────┘
```

---

## Requirements

- Android Studio Hedgehog (2023.1.1) or newer
- JDK 17 (Temurin recommended)
- Android SDK 34
- Gradle 8.0+
- Tapo account (free, from the official Tapo app)

---

## Contribute

PRs welcome! See [CONTRIBUTING.md](CONTRIBUTING.md).

```bash
# Fork → branch → code → PR
git checkout -b feat/your-feature
./gradlew :app:assembleDebug :mobile:assembleDebug  # build must pass
git push origin feat/your-feature
```

---

## License

[MIT](LICENSE) © 2026 Otapo

---

> **Disclaimer**: Otapo is independent open-source software. Not affiliated with TP-Link or Tapo. Tapo™ is a trademark of TP-Link Corporation.
>
> Made with ❤️ by [asphalt123](https://github.com/asphalt123)
