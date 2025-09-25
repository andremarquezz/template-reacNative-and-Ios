#!/bin/bash

# Auto Configuration Script for React Native Template
# Automatically reads project name from package.json and configures everything

echo "🚀 Auto-configuring React Native project..."

# Check if package.json exists
if [ ! -f "package.json" ]; then
    echo "❌ package.json not found in current directory"
    echo "Please run this script from the root of your React Native project"
    exit 1
fi

# Check if Node.js is available
if ! command -v node &> /dev/null; then
    echo "❌ Node.js not found. Please install Node.js first"
    exit 1
fi

# Read project name from package.json
PROJECT_NAME=$(node -p "require('./package.json').name" 2>/dev/null)

if [ -z "$PROJECT_NAME" ]; then
    echo "❌ Project name not found in package.json"
    exit 1
fi

# Clean project name and create formats
CLEAN_NAME=$(echo "$PROJECT_NAME" | sed 's/[^a-zA-Z0-9]//g')
PASCAL_CASE=$(echo "$CLEAN_NAME" | sed 's/\b\w/\U&/g')
LOWER_CASE=$(echo "$CLEAN_NAME" | tr '[:upper:]' '[:lower:]')
PACKAGE_ID="com.yourcompany.$LOWER_CASE"

echo "📝 Found project name: $PROJECT_NAME"
echo "🔄 Configuring with:"
echo "  - Display name: $PASCAL_CASE"
echo "  - Package ID: $PACKAGE_ID"
echo ""

# Update app.json
echo "⚙️  Updating app.json..."
if [ -f "app.json" ]; then
    node -e "
    const fs = require('fs');
    const app = JSON.parse(fs.readFileSync('app.json', 'utf8'));
    app.expo.name = '$PASCAL_CASE';
    app.expo.slug = '$LOWER_CASE';
    app.expo.android.package = '$PACKAGE_ID';
    fs.writeFileSync('app.json', JSON.stringify(app, null, 2));
    " && echo "   ✅ app.json updated"
fi

# Update Android files
echo "⚙️  Updating Android configuration..."

# Android strings.xml
STRINGS_PATH="android/app/src/main/res/values/strings.xml"
if [ -f "$STRINGS_PATH" ]; then
    sed -i.bak "s/ReactNativeApp/$PASCAL_CASE/g" "$STRINGS_PATH" && rm "$STRINGS_PATH.bak"
    echo "   ✅ strings.xml updated"
fi

# Android build.gradle
BUILD_GRADLE_PATH="android/app/build.gradle"
if [ -f "$BUILD_GRADLE_PATH" ]; then
    sed -i.bak "s/namespace 'com\.yourcompany\.reactnativeapp'/namespace '$PACKAGE_ID'/g" "$BUILD_GRADLE_PATH"
    sed -i.bak "s/applicationId 'com\.yourcompany\.reactnativeapp'/applicationId '$PACKAGE_ID'/g" "$BUILD_GRADLE_PATH"
    rm "$BUILD_GRADLE_PATH.bak" 2>/dev/null
    echo "   ✅ build.gradle updated"
fi

# Android settings.gradle
SETTINGS_GRADLE_PATH="android/settings.gradle"
if [ -f "$SETTINGS_GRADLE_PATH" ]; then
    sed -i.bak "s/rootProject\.name = 'ReactNativeApp'/rootProject.name = '$PASCAL_CASE'/g" "$SETTINGS_GRADLE_PATH"
    rm "$SETTINGS_GRADLE_PATH.bak" 2>/dev/null
    echo "   ✅ settings.gradle updated"
fi

# Update Android package structure
OLD_PACKAGE_PATH="android/app/src/main/java/com/yourcompany/reactnativeapp"
if [ -d "$OLD_PACKAGE_PATH" ]; then
    NEW_PACKAGE_PATH="android/app/src/main/java/com/yourcompany/$LOWER_CASE"

    # Create new directory
    mkdir -p "$NEW_PACKAGE_PATH"

    # Move and update files
    for file in "$OLD_PACKAGE_PATH"/*.kt; do
        if [ -f "$file" ]; then
            filename=$(basename "$file")
            sed "s/package com\.yourcompany\.reactnativeapp/package com.yourcompany.$LOWER_CASE/g" "$file" > "$NEW_PACKAGE_PATH/$filename"
        fi
    done

    # Remove old directory
    rm -rf "$OLD_PACKAGE_PATH"
    echo "   ✅ Android package structure updated"
fi

# Update iOS configuration
echo "⚙️  Updating iOS configuration..."

# Rename iOS app folder
OLD_IOS_PATH="ios/ReactNativeApp"
NEW_IOS_PATH="ios/$PASCAL_CASE"
if [ -d "$OLD_IOS_PATH" ]; then
    mv "$OLD_IOS_PATH" "$NEW_IOS_PATH"
    echo "   ✅ iOS app folder renamed"
fi

# Rename Xcode project
OLD_XCODE_PATH="ios/ReactNativeApp.xcodeproj"
NEW_XCODE_PATH="ios/$PASCAL_CASE.xcodeproj"
if [ -d "$OLD_XCODE_PATH" ]; then
    mv "$OLD_XCODE_PATH" "$NEW_XCODE_PATH"
    echo "   ✅ Xcode project renamed"
fi

# Update iOS files
IOS_FILES=(
    "$NEW_IOS_PATH/Info.plist"
    "$NEW_IOS_PATH/LaunchScreen.storyboard"
    "$NEW_IOS_PATH/AppDelegate.swift"
)

for file in "${IOS_FILES[@]}"; do
    if [ -f "$file" ]; then
        sed -i.bak "s/ReactNativeApp/$PASCAL_CASE/g" "$file"
        rm "$file.bak" 2>/dev/null
        filename=$(basename "$file")
        echo "   ✅ $filename updated"
    fi
done

# Update Podfile
if [ -f "ios/Podfile" ]; then
    sed -i.bak "s/target 'ReactNativeApp'/target '$PASCAL_CASE'/g" "ios/Podfile"
    rm "ios/Podfile.bak" 2>/dev/null
    echo "   ✅ Podfile updated"
fi

echo ""
echo "🎉 Auto-configuration completed!"
echo ""
echo "📋 Configuration summary:"
echo "   • Project name: $PROJECT_NAME"
echo "   • Display name: $PASCAL_CASE"
echo "   • Package ID: $PACKAGE_ID"
echo ""
echo "🚀 Next steps:"
echo "   1. npm install"
echo "   2. cd ios && bundle exec pod install"
echo "   3. npm start"
echo ""
echo "💡 Tip: Clean your build folders if you encounter issues"
