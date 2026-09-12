# Contributing to Otapo

Thank you for your interest in contributing! 🎉

## How to contribute

1. Fork the repo
2. Create a branch (`git checkout -b feat/amazing-thing`)
3. Code your changes
4. Run `./gradlew :app:assembleDebug :mobile:assembleDebug` — build must pass
5. Commit with a clear message
6. Push and open a Pull Request

## Guidelines

- **Code style**: Follow existing patterns (Kotlin idioms, no Compose — classic Views)
- **Commits**: Imperative mood ("Add timer" not "Added timer")
- **PRs**: One feature per PR, describe what and why
- **Issues**: Check for duplicates before opening

## Development setup

```bash
git clone https://github.com/asphalt123/otapo.git
cd otapo/Otapo
export ANDROID_HOME=/path/to/android-sdk JAVA_HOME=/path/to/jdk17
./gradlew :app:assembleDebug :mobile:assembleDebug
```

## Questions?

Open an issue or reach out via GitHub Discussions.

---

Made with ❤️ by the Otapo community
