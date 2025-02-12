# 🛒Mini E-commerce Application

## 📋Table of Contents

1. [Overview](#overview)
2. [Features](#features)
3. [Project Structure](#project-structure)
4. [Getting Started](#getting-started)
   - [Prerequisites](#prerequisites)
   - [Installation](#installation)
5. [Configuration](#configuration)
6. [Development & Contribution](#development--contribution)
   - [Branching Strategy](#branching-strategy)
   - [Code Style](#code-style)
   - [Testing](#testing)
7. [Issues](#issues)
8. [Acknowledgment](#acknowledgment)

## 📖Overview

This is a cross-platform e-commerce application built using Flutter. It supports multiple platforms, including **Android**, **iOS**, **Web**, **Linux**, **macOS**, and **Windows**.

## ✨Features

- 🔐 User authentication and registration
- 🛍️ Product listing with details
- 🛒 Shopping cart functionality
- 📦 Order management system
- 🔥 Firebase integration (optional)
- 📱 Responsive UI for different screen sizes

##  📁Project Structure

```
mini_ecommerce_appln/
├── lib/                        # Main application code
│   ├── main.dart               # Entry point of the app
│   ├── pages/                  # Application pages
│   │   └── intro_page.dart
├── assets/                     # Static assets like images
├── android/                    # Android-specific files
├── ios/                        # iOS-specific files
├── web/                        # Web-specific files
├── linux/                      # Linux-specific files
├── macos/                      # macOS-specific files
├── windows/                    # Windows-specific files
├── pubspec.yaml                # Project dependencies
├── pubspec.lock                # Dependency lock file
├── README.md                   # Project documentation
└── analysis_options.yaml       # Linting rules
```

## 🚀Getting Started

### ✅Prerequisites

Ensure you have the following installed:
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart SDK](https://dart.dev/get-dart)
- [Android Studio](https://developer.android.com/studio) / [Xcode](https://developer.apple.com/xcode/) (for mobile development)
- VS Code or any other preferred IDE

### 📦Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/mugabiBenjamin/mini_ecommerce_appln.git
    cd mini_ecommerce_appln
    ```

2. Install dependencies:
    ```bash
    flutter pub get
    ```

3. Run the application:
    ```bash
    flutter run
    ```

For Web:
    ```bash
    flutter run -d chrome
    ``` 

## 🔧Configuration

### 🔥Firebase Setup (Optional)

If you want to use Firebase features, configure Firebase:
1. Create a Firebase project in the [Firebase Console](https://console.firebase.google.com/)
2. Download `google-services.json` (for Android) and `GoogleService-Info.plist` (for iOS) and place them in `android/app/` and `ios/Runner/` respectively.
3. Enable Firebase services in `pubspec.yaml` by uncommenting dependencies:

    ```yaml
    dependencies:
      firebase_core: ^latest_version
      cloud_firestore: ^latest_version
    ```

## 🤝Development & Contribution

### 🌿Branching Strategy
- `main:` Stable production-ready code
- `dev:` Active development
- `feature/<feature-name>:` Feature branches

### 📝Code Style
Follow the Flutter best practices:
- Use camelCase for variable and function names
- Follow the Dart style guide
- Run `flutter analyze` before committing

Run widget tests:
```bash
flutter test
```

### 🧪Testing

1. Fork the repository:
2. Clone your forked repository:
    ```bash
    git clone https://github.com/<your-username>/mini_ecommerce_appln.git
    cd mini_ecommerce_appln
    ```
3. Create a new branch for your feature or bugfix:
    ```bash
    git checkout -b feature/<feature-name>
    ```
4. Make your changes and commit them:
    ```bash
    git add .
    git commit -m "Add detailed description of your changes"
    ```
5. Push your changes to your forked repository:
    ```bash
    git push origin feature/<feature-name>
    ```
6. Create a pull request:

## 🐛Issues  

If you encounter any issues while using this project, create an issue [here](https://github.com/mugabiBenjamin/mini_ecommerce_appln/issues)

## 🙏Acknowledgment

- [Flutter](https://flutter.dev/): UI toolkit for building natively compiled applications.  
- [Dart](https://dart.dev/): Programming language used for Flutter development.  
- [Firebase](https://firebase.google.com/): Backend services for authentication, database, and hosting.  
- [Android Studio](https://developer.android.com/studio)/[Xcode](https://developer.apple.com/xcode/): Development environments for mobile applications.

[🔝Back to Top](#mini-e-commerce-application)