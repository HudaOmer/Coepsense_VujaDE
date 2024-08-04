# corpsense_vujade

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# `Folder Structure`

```go
lib/
│
├── main.dart
├── models/
│   └── user.dart
├── providers/
│   ├── shared_preferences_provider.dart
│   └── user_provider.dart
├── screens/
│   ├── home_screen.dart
│   └── settings_screen.dart
├── services/
│   └── shared_preferences_service.dart
├── utils/
│   └── constants.dart
└── widgets/
    └── custom_widget.dart

```

## `Breakdown of Each Folder`
1. `main.dart`

The entry point of your Flutter application.

2. `models/`

Contains Dart classes that represent the data structure. For example, user.dart might define the User model.

3. `providers/`

Contains Riverpod providers. You might have:
shared_preferences_provider.dart: Provides an instance of SharedPreferences.
user_provider.dart: Manages the state of user data, possibly interacting with shared preferences.

4. `screens/` => pages

Contains the different screens (pages) of your application, such as home_screen.dart and settings_screen.dart.

5. `services/` => cache

Contains services that handle business logic, API calls, or data storage. shared_preferences_service.dart could encapsulate logic for interacting with shared preferences.

6. `utils/`

Contains utility functions and constants used throughout the app.

7. `widgets/` => components

Contains reusable widgets that you use in your screens.