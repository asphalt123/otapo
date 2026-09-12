<div align="center">

# Otapo — Control Local de Tapo para Android y Wear OS

**Sin nube. Sin rastreo. Solo KLAP.**

[![Release](https://img.shields.io/github/v/release/asphalt123/otapo?style=for-the-badge&color=6366f1)](https://github.com/asphalt123/otapo/releases) · [![License](https://img.shields.io/badge/Licencia-MIT-22c55e?style=for-the-badge)](../LICENSE)

[🇺🇸 English](../README.md) · [🇪🇸 Español](./README.es.md) · [🇫🇷 Français](./README.fr.md)

</div>

<div align="center">

### Teléfono + Reloj = ❤️

```
┌─────────────────────┐         ┌─────────────────────┐
│  📱 Otapo Móvil     │  ←───→  │  ⌚ Otapo Wear OS   │
│                     │  Data   │                     │
│  🔌 Salón        ON │  Layer  │  ┌───────────────┐  │
│  🛏️  Dormitorio OFF│  ═══►  │  │ 🔌 Salón       │  │
│  🍳 Cocina       ON │         │  │    ● ON       │  │
│  💡 Oficina     45% │         │  └───────────────┘  │
└─────────────────────┘         └─────────────────────┘
```

</div>

## ¿Qué es Otapo?

Otapo convierte tu teléfono Android y tu reloj Wear OS en un **control local** para enchufes y bombillas Tapo. Sin cuentas en la nube, sin datos saliendo de tu casa, sin suscripciones. Solo protocolo KLAP sobre tu WiFi.

Inicia sesión una vez en el teléfono → el reloj se sincroniza automático. Listo.

---

## Características

| | | |
|:--|:--|:--|
| 🔗 **Sincronización** | Credenciales via Wear OS Data Layer | |
| 📡 **Escaneo Local** | Encuentra dispositivos via KLAP | |
| 💡 **Luz** | Brillo + rueda de color para bombillas | |
| ⚡ **Energía** | Vatios + kWh para P110 | |
| ⏰ **Temporizadores** | Cuenta atrás o recurrentes | |
| 📱 **Tile y Widgets** | Toggle sin abrir la app | |
| ⌚ **Complicación** | Estado en la esfera del reloj | |
| 🔔 **Alertas Offline** | Notificación si un dispositivo se desconecta | |
| 👥 **Grupos** | Pulsación larga = toggle grupo | |
| 📍 **Geofencing** | Auto encendido/apagado por GPS | |
| 👤 **Multi-cuenta** | Cambiar casas, cifrado KeyStore | |
| 🗣️ **Voz** | "Hey Google, enciende el enchufe" | |
| 💾 **Backup** | Exportación/importación cifrada | |
| 🎨 **Material 3 Oscuro** | Moderno, animado, accesible | |
| 🌐 **16 Idiomas** | i18n completo con RTL | |

---

## Dispositivos Compatibles

| Dispositivo | Tipo | Funciones |
|:--|:--|:--|
| **P100** | 🔌 Enchufe | On/Off |
| **P110** | ⚡ Enchufe | + Energía |
| **L510** | 💡 Bombilla | + Brillo |
| **L520** | 🌡️ Bombilla | + Temperatura color |
| **L610** | 🎨 Bombilla | + Color completo |
| **L630** | 🌈 Bombilla | + Color completo |

---

## Inicio Rápido

```bash
git clone https://github.com/asphalt123/otapo.git
cd otapo/Otapo
export ANDROID_HOME=/path/to/sdk JAVA_HOME=/path/to/jdk17
./gradlew :app:assembleDebug :mobile:assembleDebug
adb install app/build/outputs/apk/debug/app-debug.apk
adb install mobile/build/outputs/apk/debug/mobile-debug.apk
```

---

## Licencia

[MIT](../LICENSE) © 2026 Otapo
