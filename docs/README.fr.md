<div align="center">

```
    ██████╗ ████████╗ █████╗ ██████╗  ██████╗ 
   ██╔═══██╗╚══██╔══╝██╔══██╗██╔══██╗██╔═══██╗
   ██║   ██║   ██║   ███████║██████╔╝██║   ██║
   ██║   ██║   ██║   ██╔══██║██╔═══╝ ██║   ██║
   ╚██████╔╝   ██║   ██║  ██║██║     ╚██████╔╝
    ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚═╝      ╚═════╝ 
```

### Contrôlez vos appareils Tapo en local. Sans cloud. Sans traçage.

[![Release](https://img.shields.io/github/v/release/asphalt123/otapo?style=for-the-badge&color=6366f1)](https://github.com/asphalt123/otapo/releases)
[![License](https://img.shields.io/badge/License-MIT-22c55e?style=for-the-badge)](../LICENSE)
[![Langues](https://img.shields.io/badge/Langues-16-06b6d4?style=for-the-badge)](./)
[![Build](https://img.shields.io/github/actions/workflow/status/asphalt123/otapo/build.yml?style=for-the-badge&label=Build)](https://github.com/asphalt123/otapo/actions)

[🇺🇸 English](../README.md) · [🇫🇷 Français](./README.fr.md) · [🇩🇪 Deutsch](./README.de.md) · [🇪🇸 Español](./README.es.md) · [🇯🇵 日本語](./README.ja.md) · [🇨🇳 中文](./README.zh.md) · [🇸🇦 العربية](./README.ar.md) · [🇵🇹 Português](./README.pt.md)

---

</div>

<div align="center">

### Téléphone + Montre = ❤️

```
┌─────────────────────┐         ┌─────────────────────┐
│  📱 Otapo Mobile    │  ←───→  │  ⌚ Otapo Wear OS   │
│                     │  Data   │                     │
│  🔌 Salon       ON  │  Layer  │  ┌───────────────┐  │
│  🛏️  Chambre   OFF │  ═══►  │  │ 🔌 Salon       │  │
│  🍳 Cuisine     ON  │         │  │    ● ON       │  │
│  💡 Bureau     45%  │         │  └───────────────┘  │
│                     │         │                     │
│  ⚡ 24,5 W          │         │  Toucher pour toggle│
└─────────────────────┘         └─────────────────────┘
```

</div>

## Qu'est-ce qu'Otapo ?

Otapo transforme votre téléphone Android et votre montre Wear OS en **télécommande locale** pour vos prises et ampoules Tapo. Pas de compte cloud, pas de données qui quittent votre maison, pas d'abonnement. Juste le protocole KLAP en direct sur votre WiFi.

Connectez-vous une fois sur votre téléphone → votre montre se synchronise automatiquement. C'est tout.

---

## Fonctionnalités

| | | |
|:--|:--|:--|
| 🔗 **Sync Téléphone ↔ Montre** | Les identifiants se synchronisent via le Data Layer | |
| 📡 **Scan Local** | Trouve les appareils via KLAP — pas d'internet requis | |
| 💡 **Contrôle Lumière** | Luminosité + roue chromatique pour L510/L520/L610/L630 | |
| ⚡ **Suivi Énergie** | Watts temps réel + kWh pour P110 | |
| ⏰ **Minuteries** | Compte à rebours ou horaires récurrents | |
| 📱 **Tuile & Widgets** | Toggle sans ouvrir l'application | |
| ⌚ **Complication** | État de l'appareil sur le cadran | |
| 🔔 **Alertes Offline** | Notification en cas de déconnexion | |
| 👥 **Groupes** | Appui long = toggle tout le groupe | |
| 📍 **Géofencing** | Allumage/Extinction automatique par GPS | |
| 👤 **Multi-compte** | Plusieurs maisons, chiffré KeyStore | |
| 🗣️ **Voix** : "Ok Google, allume la prise du salon" | |
| 💾 **Sauvegarde** | Export/import/partage chiffré | |
| 🎨 **Material 3 Sombre** | Moderne, animé, accessible | |
| 🌐 **16 Langues** | i18n complet avec support RTL | |

---

## Appareils Compatibles

| Appareil | Type | Fonctionnalités |
|:--|:--|:--|
| **P100** | 🔌 Prise | On/Off |
| **P110** | ⚡ Prise | On/Off + Énergie |
| **L510** | 💡 Ampoule | On/Off + Luminosité |
| **L520** | 🌡️ Ampoule | + Température de couleur |
| **L610** | 🎨 Ampoule | + Couleur complète |
| **L630** | 🌈 Ampoule | + Couleur complète |

---

## Démarrage Rapide

```bash
# Cloner
git clone https://github.com/asphalt123/otapo.git
cd otapo/Otapo

# Compiler (JDK 17 + Android SDK 34)
export ANDROID_HOME=/path/to/sdk JAVA_HOME=/path/to/jdk17
./gradlew :app:assembleDebug :mobile:assembleDebug

# Installer
adb install app/build/outputs/apk/debug/app-debug.apk          # Téléphone
adb install mobile/build/outputs/apk/debug/mobile-debug.apk   # Montre
```

Puis ouvrez sur votre téléphone, connectez-vous avec vos identifiants Tapo, et votre montre se synchronise automatiquement.

---

## Configuration Requise

- Android Studio Hedgehog (2023.1.1) ou plus récent
- JDK 17 (Temurin recommandé)
- Android SDK 34
- Gradle 8.0+
- Compte Tapo (gratuit, via l'application officielle Tapo)

---

## Contribuer

Les PRs sont les bienvenues ! Voir [CONTRIBUTING.md](../CONTRIBUTING.md).

```bash
# Fork → branche → code → PR
git checkout -b feat/ma-fonctionnalite
./gradlew :app:assembleDebug :mobile:assembleDebug  # build doit passer
git push origin feat/ma-fonctionnalite
```

---

## Licence

[MIT](../LICENSE) © 2026 Otapo

---

> **Avertissement** : Otapo est un logiciel open-source indépendant. Non affilié à TP-Link ou Tapo. Tapo™ est une marque de TP-Link Corporation.
>
> Fait avec ❤️ par [asphalt123](https://github.com/asphalt123)
