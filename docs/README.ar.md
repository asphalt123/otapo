<div align="center">

# Otapo — التحكم المحلي في Tapo لـ Android و Wear OS

**بدون سحاب. بدون تتبع. فقط KLAP.**

[![Release](https://img.shields.io/github/v/release/asphalt123/otapo?style=for-the-badge&color=6366f1)](https://github.com/asphalt123/otapo/releases) · [![License](https://img.shields.io/badge/License-MIT-22c55e?style=for-the-badge)](../LICENSE)

[🇺🇸 English](../README.md) · [🇸🇦 العربية](./README.ar.md) · [🇵🇹 Português](./README.pt.md)

</div>

---

<div align="center">

### هاتف + ساعة = ❤️

```
┌─────────────────────┐         ┌─────────────────────┐
│  📱 Otapo جوال      │  ←───→  │  ⌚ Otapo Wear OS   │
│                     │  Data   │                     │
│  🔌 غرفة المعيشة ON │  Layer  │  ┌───────────────┐  │
│  🛏️ غرفة النوم  OFF│  ═══►  │  │ 🔌 غرفة المعيشة│  │
│  🍳 المطبخ       ON │         │  │    ● ON       │  │
│  💡 المكتب      45% │         │  └───────────────┘  │
└─────────────────────┘         └─────────────────────┘
```

</div>

## ما هو Otapo؟

Otapo يحول هاتف Android وساعة Wear OS إلى **وحدة تحكم محلية** لمقابس ومصابيح Tapo. بدون حسابات سحابية، بدون بيانات تغادر منزلك، بدون اشتراكات. فقط بروتوكول KLAP عبر شبكة WiFi.

تسجيل دخول مرة واحدة على الهاتف → الساعة تتم مزامنتها تلقائياً. done.

---

## الميزات

| | | |
|:--|:--|:--|
| 🔗 **مزامنة هاتف ↔ ساعة** | مزامنة بيانات الاعتماد عبر Wear OS Data Layer | |
| 📡 **مسح محلي** | العثور على الأجهزة عبر KLAP — لا إنترنت مطلوب | |
| 💡 **التحكم بالضوء** | السطوع + عجلة الألوان لـ L510/L520/L610/L630 | |
| ⚡ **مراقبة الطاقة** | واط + kWh لـ P110 | |
| ⏰ **المؤقتات** | عد تنازلي أو جداول متكررة | |
| 📱 **البلاط والودجت** | التبديل دون فتح التطبيق | |
| ⌚ **المضاعفة** | حالة الجهاز على وجه الساعة | |
| 🔔 **تنبيهات غير متصل** | إشعار عند قطع الاتصال | |
| 👥 **المجموعات** | ضغط طويل = تبديل المجموعة بالكامل | |
| 📍 **السياج الجغرافي** | تشغيل/إيقاف تلقائي عبر GPS | |
| 👤 **متعدد الحسابات** | تبديل المنازل، مشفر KeyStore | |
| 🗣️ **الصوت** | "مرحبا Google، شغل المقبس" | |
| 💾 **النسخ الاحتياطي** | تصدير/استيراد/مشاركة مشفرة | |
| 🎨 **Material 3 الداكن** | حديث، متحرك، Accessible | |
| 🌐 **16 لغة** | i18n كامل مع دعم RTL | |

---

## الأجهزة المتوافقة

| الجهاز | النوع | الميزات |
|:--|:--|:--|
| **P100** | 🔌 مقبس | تشغيل/إيقاف |
| **P110** | ⚡ مقبس | + الطاقة |
| **L510** | 💡 مصباح | + السطوع |
| **L520** | 🌡️ مصباح | + حرارة اللون |
| **L610** | 🎨 مصباح | + لون كامل |
| **L630** | 🌈 مصباح | + لون كامل |

---

## البدء السريع

```bash
git clone https://github.com/asphalt123/otapo.git
cd otapo/Otapo
export ANDROID_HOME=/path/to/sdk JAVA_HOME=/path/to/jdk17
./gradlew :app:assembleDebug :mobile:assembleDebug
adb install app/build/outputs/apk/debug/app-debug.apk
adb install mobile/build/outputs/apk/debug/mobile-debug.apk
```

---

## الترخيص

[MIT](../LICENSE) © 2026 Otapo
