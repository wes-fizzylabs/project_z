# lib/services/ Directory

Contains business logic, API communication, and external service integrations.

## Purpose

This directory holds services that handle:
- REST API calls
- Authentication
- Database operations
- Third-party integrations
- Background tasks

## Common Services

- `api_service.dart` - HTTP client and API endpoints
- `auth_service.dart` - Authentication logic
- `database_service.dart` - Local database operations
- `notification_service.dart` - Push notifications
- `storage_service.dart` - Local storage operations

## Best Practices

- Use dependency injection
- Implement proper error handling
- Make services testable with interfaces
- Handle network connectivity
- Use singleton pattern where appropriate