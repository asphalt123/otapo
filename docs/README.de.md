<div align="center">

# Otapo — Lokale Tapo-Steuerung für Android & Wear OS

**Keine Cloud. Kein Tracking. Nur KLAP.**

[![Release](https://img.shields.io/github/v/release/asphalt123/otapo?style=for-the-badge&color=6366f1)](https://github.com/asphalt123/otapo/releases) · [![License](https://img.shields.io/badge/License-MIT-22c55e?style=for-the-badge)](../LICENSE)

[🇺🇸 English](../README.md) · [🇫🇷 Français](./README.fr.md) · [🇩🇪 Deutsch](./README.de.md)

</div>

---

<div align="center">

### Telefon + Uhr = ❤️

```
┌─────────────────────┐         ┌─────────────────────┐
│  📱 Otapo Mobil     │  ←───→  │  ⌚ Otapo Wear OS   │
│                     │  Data   │                     │
│  🔌 Wohnzimmer   ON │  Layer  │  ┌───────────────┐  │
│  🛏️  Schlafzim. OFF│  ═══►  │  │ 🔌 Wohnzimmer  │  │
│  🍳 Küche        ON │         │  │    ● ON       │  │
│  💡 Büro        45% │         │  └───────────────┘  │
└─────────────────────┘         └─────────────────────┘
```

</div>

## Was ist Otapo?

Otapo macht dein Android-Telefon und deine Wear OS-Uhr zur **lokalen Fernbedienung** für Tapo-Steckdosen und -Birnen. Kein Cloud-Account, keine Daten verlassen Ihr Haus, keine Abos. Nur KLAP-Protokoll direkt über Ihr WiFi.

Einmal am Telefon anmelden → Uhr synchronisiert automatisch. Fertig.

---

## Features

| | | |
|:--|:--|:--|
| 🔗 **Telefon ↔ Uhr Sync** | Anmeldedaten synchronisieren via Wear OS Data Layer | |
| 📡 **Lokaler Scan** | Findet Geräte via KLAP — kein Internet nötig | |
| 💡 **Lichtsteuerung** | Helligkeit + Farbrad für L510/L520/L610/L630 | |
| ⚡ **Energie-Monitor** | Watt + kWh für P110 | |
| ⏰ **Timer** | Countdown oder wiederkehrende Zeitpläne | |
| 📱 **Kachel & Widgets** | Schalten ohne App zu öffnen | |
| ⌚ **Komplikation** | Gerätezustand auf dem Ziffernblatt | |
| 🔔 **Offline-Alarm** | Benachrichtigung bei Verbindungsverlust | |
| 👥 **Gruppen** | Langes Drücken = ganze Gruppe schalten | |
| 📍 **Geofencing** | Automatisch an/aus per GPS | |
| 👤 **Multi-Account** | Häuser wechseln, KeyStore-verschlüsselt | |
| 🗣️ **Sprache** | "Hey Google, schalt die Steckdose an" | |
| 💾 **Backup** | Verschlüsselter Export/Import/Teilen | |
| 🎨 **Dunkles Material 3** | Modern, animiert, barrierefrei | |
| 🌐 **16 Sprachen** | Vollständiges i18n mit RTL | |

---

## Kompatibilität

| Gerät | Typ | Features |
|:--|:--|:--|
| **P100** | 🔌 Steckdose | An/Aus |
| **P110** | ⚡ Steckdose | An/Aus + Energie |
| **L510** | 💡 Birne | An/Aus + Helligkeit |
| **L520** | 🌡️ Birne | + Farbtemperatur |
| **L610** | 🎨 Birne | + Volle Farbe |
| **L630** | 🌈 Birne | + Volle Farbe |

---

## Schnellstart

```bash
git clone https://github.com/asphalt123/otapo.git
cd otapo/Otapo
export ANDROID_HOME=/path/to/sdk JAVA_HOME=/path/to/jdk17
./gradlew :app:assembleDebug :mobile:assembleDebug
adb install app/build/outputs/apk/debug/app-debug.apk
adb install mobile/build/outputs/apk/debug/mobile-debug.apk
```

---

## Lizenz

[MIT](../LICENSE) © 2026 Otapo
