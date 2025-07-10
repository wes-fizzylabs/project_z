#!/bin/bash

# Flutter iOS Simulator Launch Script
# Starts iPhone 15 simulator and runs the Flutter app

set -e

echo "🚀 Starting iOS Simulator (iPhone 15) and running Flutter app..."

# Check if Flutter is installed
if ! command -v flutter &> /dev/null; then
    echo "❌ Error: Flutter is not installed or not in PATH"
    exit 1
fi

# Check if we're in a Flutter project
if [ ! -f "pubspec.yaml" ]; then
    echo "❌ Error: Not in a Flutter project directory"
    exit 1
fi

echo "📱 Opening iPhone 15 simulator..."
xcrun simctl boot "iPhone 15" 2>/dev/null || echo "iPhone 15 simulator already booted"
open -a Simulator

echo "⏳ Waiting for simulator to be ready..."
# Wait for simulator to be fully booted (up to 60 seconds)
TIMEOUT=60
COUNTER=0
while [ $COUNTER -lt $TIMEOUT ]; do
    if xcrun simctl list devices | grep "iPhone 15" | grep -q "Booted"; then
        echo "✅ Simulator is ready!"
        break
    fi
    echo "Still waiting for simulator... ($COUNTER/$TIMEOUT seconds)"
    sleep 2
    COUNTER=$((COUNTER + 2))
done

if [ $COUNTER -ge $TIMEOUT ]; then
    echo "❌ Timeout: Simulator failed to boot within $TIMEOUT seconds"
    exit 1
fi

# Additional wait for UI to be responsive
echo "⏳ Waiting for simulator UI to be responsive..."
sleep 5

echo "🔧 Getting Flutter dependencies..."
flutter pub get

echo "🏃 Running Flutter app on iPhone 15..."
flutter run -d "iPhone 15"