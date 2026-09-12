<div align="center">

# Otapa – Paikinis Tapo valdymas Android ir Wear OS

**Be debesų. Be sekimo. Tik KLAP.**

[![Release](https://img.shields.io/github/v/release/asphalt123/otapo?style=for-the-badge&color=6366f1)](https://github.com/asphalt123/otapo/releases) · [![License](https://img.shields.io/badge/License-MIT-22c55e?style=for-the-badge)](../LICENSE)

[Lietuvių](./README.lt.md) · [English](../README.md) · [Français](./README.fr.md) · [Deutsch](./README.de.md)

</div>

---

<div align="center">

### Telefonas + Laikrodis = ❤️

```
┌─────────────────────┐         ┌─────────────────────┐
│  📱 Otapa Mobilus   │  ←───→  │  ⌚ Otapa Wear OS   │
│                     │  Data   │                     │
│  🔌 Svetainė     ON │  Layer  │  ┌───────────────┐  │
│  🛏️  Miegamasis OFF│  ═══►  │  │ 🔌 Svetainė    │  │
│  🍳 Virtuvė      ON │         │  │    ● ON       │  │
│  💡 Biuris      45% │         │  └───────────────┘  │
└─────────────────────┘         └─────────────────────┘
```

</div>

## Kas yra Otapa?

Otapa paverčia jūsų Android telefoną ir Wear OS laikrodį **paikiniu pultu** Tapo išjungimo leidžiams ir lempoms. Nėra debesyų paskyrų, nėra duomenų paliekančių namus, nėra prenumeratų. Tik KLAP protokolas tiesiai per jūsų WiFi tinklą.

Prisijunkite kartą telefone → jūsų laikrodis sinchronizuojami automatiškai. Baigta.

---

## Funkcijos

| | | |
|:--|:--|:--|
| 🔗 **Telefonas ↔ Laikrodis** | Įrodymai sinchronizuojami per Wear OS Data Layer | |
| 📡 **Vietinis Paieška** | Randa įrenginius per KLAP – nėra interneto reikalingo | |
| 💡 **Šviesos Valdymas** | Ryškis + spalvas ratukas L510/L520/L610/L630 | |
| ⚡ **Energijos Stebėjimas** | realus Watt + kWh per dieną/mėnesį P110 | |
| ⏰ **Laikmatiai** | Atvirkštinis skaiči arba pasikartojantys tvarkaraščiai | |
| 📱 **Priedas ir Widgetai** | Perjungimas neatidaryant programos | |
| ⌚ **Komplikacija** | Įrenginio būklė ant laikrodžiaus skydo | |
| 🔔 **Pranešimai Offline** | Pranešimas, kai įrenginys išjungiamas | |
| 👠 **Grupės** | Ilgas paspaudimas = perjungti visą grupę | |
| 📍 **Geofencing** | Automatinis įjungimas/išjungimas pagal GPS | |
| 👤 **Kelios Paskyros** | Perjungti tarp namų/biurų, KeyStore šifruotas | |
| 🗣️ **Balsas** | "Hey Google, įjungti lėkštę išjungimo leidimą" | |
| 💾 **Atsarginė Kopija** | Šifruotas eksportas/importas/dalijimasis | |
| 🎨 **Tamsus Material 3** | Modernus, animuotas, prieinamas | |
| 🌐 **16 Kalbų** | Pilnas i18n su RTL palaikymu | |

---

## Suderinami Įrenginiai

| Įrenginys | Tipas | Funkcijos |
|:--|:--|:--|
| **P100** | 🔌 Lėkštė | Įjungti/Išjungti |
| **P110** | ⚡ Lėkštė | Įjungti/Išjungti + Energija |
| **L510** | 💡 Lemputė | Įjungti/Išjungti + Ryškis |
| **L520** | 🌡️ Lemputė | + Spalvos temperatūra |
| **L610** | 🎨 Lemputė | + Pilna spalva |
| **L630** | 🌈 Lemputė | + Pilna spalva |

---

## Greitas Pradžia

```bash
git clone https://github.com/asphalt123/otapo.git
cd otapo/Otapo
export ANDROID_HOME=/path/to/sdk JAVA_HOME=/path/to/jdk17
./gradlew :app:assembleDebug :mobile:assembleDebug
adb install app/build/outputs/apk/debug/app-debug.apk
adb install mobile/build/outputs/apk/debug/mobile-debug.apk
```

---

## Reikalavimai

- Android Studio Hedgehog (2023.1.1) arba naujesnis
- JDK 17
- Android SDK 34
- Gradle 8.0+
| **Tapo paskyra** (nemokama, iš oficialios Tapo programos)

---

## Prisidėti

PR sveikinti! Žiūrėkite [CONTRIBUTING.md](../CONTRIBUTING.md).

---

## Licencija

[MIT](../LICENSE) © 2026 Otapa

---

> **Atsakomybės apribojimas**: Otapa yra nepriklausoma atvirojo kodo programinė įranga. Nėra susijusi su TP-Link ar Tapo. Tapo™ yra TP-Link Corporation prekės ženklas.
