# weatherrr

A cross-platform weather forecast app built with Flutter and Dart.

## Features

- Current weather conditions — temperature, humidity, wind speed, and description
- Weather icons and visual indicators for different conditions
- Cross-platform — runs on Android, iOS, Linux, macOS, Windows, and Web
- Clean, responsive UI

## Tech Stack

| Technology | Purpose |
|---|---|
| Flutter | Cross-platform UI framework |
| Dart | Programming language |
| Android / iOS | Primary mobile targets |
| Linux / macOS / Windows | Desktop targets |
| Web | Browser target |

## Getting Started

```bash
# Install dependencies
flutter pub get

# Run on connected device or emulator
flutter run
```

### Build for Android

```bash
flutter build apk --release
```

### Build for iOS

```bash
flutter build ios --release
```

## Project Structure

```
lib/
  main.dart               # App entry point
  weather_container.dart  # Main weather UI widget
android/                  # Android config
ios/                      # iOS config
web/                      # Web config
linux/ macos/ windows/    # Desktop configs
```
