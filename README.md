# 🧱 crewmeister_core

`crewmeister_core` is a foundational Flutter package that powers all Crewmeister feature modules. It offers reusable utilities, consistent theming, standardized error handling, and a robust networking layer to keep your apps clean, testable, and scalable.


## 📦 Features

- 🎨 **Styling**
  - Light & Dark themes with Google Fonts (`Poppins`)
  - Unified spacing, radius, and system overlay styles
- 🌐 **Networking**
  - Configurable `ApiClient` with built-in support for interceptors
  - Custom exception mapping and structured error handling
- 🧩 **Components**
  - Reusable widgets for empty states, loading indicators, and error displays
- 🛠 **Utilities**
  - Date formatting helper
- 🧾 **Constants**
  - App-wide color palette and error message strings
- 🧪 **Testing**
  - Unit tests included for components, logging, and network modules


## 🧠 Built with Dependency Inversion Principle

The ApiClient inside crewmeister_core is abstracted from its underlying implementation (dio). This design follows the Dependency Inversion Principle — high-level code does not depend on low-level implementations.

This means:
You can swap Dio with another HTTP client (like http, Chopper, or custom solutions).
The rest of your app doesn't break because the interface and behavior remain consistent.
It becomes easy to mock for unit testing and easier to maintain over time.


## 💡 Philosophy

- Modular-first: Everything is split into logical, reusable pieces.

- Scalable architecture: Easy to plug-and-play in other packages or future features.

- Consistency: Shared styling and error messaging ensure unified UX across the app.

- Testability: Core utilities are fully testable and mockable.

- Clean project: Zero analysis issues


## 🗂 Folder Structure

```bash
lib/
├── crewmeister_core.dart        # Public exports
└── src/
    ├── components/              # UI widgets (empty/error/loading)
    ├── constants/               # Colors and error messages
    ├── log/                     # Logging abstraction
    ├── network/                 # API client, interceptors, exceptions
    ├── style/                   # Theme, spacing, radius, system UI overlay
    └── utility/                 # Helpers like date formatting
test/
├── components/                  # Component tests
├── network/                     # API client + interceptor tests
└── crewmeister_core_test.dart   # Entrypoint test
```


## 🔌 Installation & Usage

```yaml
dependencies:
  crewmeister_core:
    git:
      url: https://github.com/kartikeyaa-k/crewmeister_core.git
      ref: prod
```

```dart 
import 'package:crewmeister_core/crewmeister_core.dart';
return AppLoadingComponent();
```

## ✅ Running Tests
```bash
flutter test
```
