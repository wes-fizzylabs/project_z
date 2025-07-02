# lib/providers/ Directory

Contains state management providers (Provider, Riverpod, Bloc, etc.).

## Purpose

This directory holds:
- Application state providers
- Notifiers and state classes
- State management logic

## Common Providers

- `auth_provider.dart` - Authentication state
- `theme_provider.dart` - App theme state
- `user_provider.dart` - User data state
- `cart_provider.dart` - Shopping cart state

## State Management Options

- **Provider** - Simple state management
- **Riverpod** - Enhanced Provider with better testing
- **Bloc** - Business Logic Components pattern
- **GetX** - Reactive state management

## Best Practices

- Keep state minimal and focused
- Use immutable state objects
- Implement proper error handling
- Write tests for state logic
- Use dependency injection