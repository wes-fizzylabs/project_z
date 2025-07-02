# lib/models/ Directory

Contains data models, entities, and DTOs (Data Transfer Objects).

## Purpose

This directory holds:
- Data classes representing app entities
- JSON serialization/deserialization models
- Database entity models
- API request/response models

## Structure

- `user.dart` - User entity model
- `product.dart` - Product data model
- `api_response.dart` - Generic API response wrapper
- `database_models/` - Local database entities

## Best Practices

- Use immutable classes with const constructors
- Implement `toJson()` and `fromJson()` methods
- Use code generation tools like `json_annotation`
- Include proper validation
- Override `toString()`, `hashCode`, and `==` operators
- Use `copyWith()` methods for immutable updates