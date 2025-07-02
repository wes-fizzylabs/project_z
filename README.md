# Project Zero

A Flutter application with a well-organized project structure following Flutter best practices.

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK
- IDE (VS Code, Android Studio, or IntelliJ)

### Installation

1. Clone the repository
2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the application:
   ```bash
   flutter run
   ```

## Project Structure

This project follows a feature-based architecture with clear separation of concerns:

- `lib/screens/` - UI screens and pages
- `lib/widgets/` - Reusable UI components
- `lib/services/` - Business logic and API calls
- `lib/models/` - Data models and entities
- `lib/providers/` - State management
- `lib/themes/` - App theming and styling
- `lib/utils/` - Utility functions and helpers
- `lib/constants/` - App constants and configuration

## Features

- Clean architecture with separation of concerns
- State management with Provider
- Theme switching (Light/Dark mode)
- Authentication flow
- Responsive design
- Comprehensive testing structure

## Commands

- `flutter run` - Run the app in debug mode
- `flutter test` - Run all tests
- `flutter build` - Build for production
- `flutter analyze` - Analyze code for issues
- `flutter clean` - Clean build cache

## Contributing

1. Follow the existing code style and architecture
2. Add tests for new features
3. Update documentation as needed
4. Use meaningful commit messages