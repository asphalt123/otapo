<div align="center">

# Otapo — Controle Local de Tapo para Android e Wear OS

**Sem nuvem. Sem rastreamento. Apenas KLAP.**

[![Release](https://img.shields.io/github/v/release/asphalt123/otapo?style=for-the-badge&color=6366f1)](https://github.com/asphalt123/otapo/releases) · [![License](https://img.shields.io/badge/Licen%C3%A7a-MIT-22c55e?style=for-the-badge)](../LICENSE)

[🇺🇸 English](../README.md) · [🇵🇹 Português](./README.pt.md) · [🇪🇸 Español](./README.es.md)

</div>

---

<div align="center">

### Telefone + Relógio = ❤️

```
┌─────────────────────┐         ┌─────────────────────┐
│  📱 Otapo Telemóvel │  ←───→  │  ⌚ Otapo Wear OS   │
│                     │  Data   │                     │
│  🔌 Sala         ON │  Layer  │  ┌───────────────┐  │
│  🛏️  Quarto      OFF│  ═══►  │  │ 🔌 Sala        │  │
│  🍳 Cozinha      ON │         │  │    ● ON       │  │
│  💡 Escritório  45% │         │  └───────────────┘  │
└─────────────────────┘         └─────────────────────┘
```

</div>

## O que é o Otapo?

O Otapo transforma seu telefone Android e seu relógio Wear OS em um **controle local** para tomadas e lâmpadas Tapo. Sem contas na nuvem, sem dados saindo de sua casa, sem assinaturas. Apenas o protocolo KLAP pela sua WiFi.

Faça login uma vez no telefone → o relógio sincroniza automaticamente. Pronto.

---

## Funcionalidades

| | | |
|:--|:--|:--|
| 🔗 **Sincronização** | Credenciais via Wear OS Data Layer | |
| 📡 **Scan Local** | Encontra dispositivos via KLAP | |
| 💡 **Luz** | Brilho + roda de cores para lâmpadas | |
| ⚡ **Energia** | Watts + kWh para P110 | |
| ⏰ **Temporizadores** | Contagem regressiva ou recorrentes | |
| 📱 **Tile & Widgets** | Alternar sem abrir o app | |
| ⌚ **Complicação** | Estado no mostrador do relógio | |
| 🔔 **Alertas Offline** | Notificação quando desconecta | |
| 👥 **Grupos** | Toque longo = alternar grupo | |
| 📍 **Geofencing** | Liga/desliga automático por GPS | |
| 👤 **Multi-conta** | Casas, escritórios, KeyStore | |
| 🗣️ **Voz** | "Hey Google, liga a tomada" | |
| 💾 **Backup** | Exportação/importação encriptada | |
| 🎨 **Material 3 Escuro** | Moderno, animado, acessível | |
| 🌐 **16 Idiomas** | i18n completo com RTL | |

---

## Dispositivos Compatíveis

| Dispositivo | Tipo | Funções |
|:--|:--|:--|
| **P100** | 🔌 Tomada | Liga/Desliga |
| **P110** | ⚡ Tomada | + Energia |
| **L510** | 💡 Lâmpada | + Brilho |
| **L520** | 🌡️ Lâmpada | + Temperatura |
| **L610** | 🎨 Lâmpada | + Cor completa |
| **L630** | 🌈 Lâmpada | + Cor completa |

---

## Início Rápido

```bash
git clone https://github.com/asphalt123/otapo.git
cd otapo/Otapo
export ANDROID_HOME=/path/to/sdk JAVA_HOME=/path/to/jdk17
./gradlew :app:assembleDebug :mobile:assembleDebug
adb install app/build/outputs/apk/debug/app-debug.apk
adb install mobile/build/outputs/apk/debug/mobile-debug.apk
```

---

## Licença

[MIT](../LICENSE) © 2026 Otapo
