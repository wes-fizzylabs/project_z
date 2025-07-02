# lib/screens/ Directory

Contains the main UI screens/pages of the Flutter application.

## Purpose

This directory holds the top-level screens that users navigate between. Each screen typically represents a full page or view in the application.

## Naming Convention

- Use descriptive names like `home_screen.dart`, `login_screen.dart`, `profile_screen.dart`
- Follow snake_case naming convention
- Include `_screen` suffix for clarity

## Example Structure

```
screens/
├── home_screen.dart
├── login_screen.dart
├── profile_screen.dart
└── settings_screen.dart
```

## Best Practices

- Keep screens focused on layout and navigation
- Move complex logic to services or providers
- Use StatefulWidget only when necessary
- Import widgets from the widgets/ directory