# JHomes Contact

A clean, responsive contact page built with Flutter. The app presents JHomes contact information, a world-map illustration, social contact options, and a validated contact form in a reusable, responsive layout.

## Features

- Responsive layout for narrow and wide screens
- Hero section with JHomes branding and contact message
- Office address and phone number section
- World-map visual asset
- WhatsApp, Twitter, and Instagram contact tiles
- Contact form with:
  - Name validation
  - Basic email validation
  - Optional phone number and message fields
  - Success feedback using a `SnackBar`
- Material 3 theme with Urbanist typography
- Organized feature-first folder structure

## Tech Stack

- **Flutter**
- **Dart** (`^3.12.2`)
- **Material 3**
- [`google_fonts`](https://pub.dev/packages/google_fonts) for typography
- [`cupertino_icons`](https://pub.dev/packages/cupertino_icons)

## Screenshots

The main screen is a responsive contact page. On wider screens, the contact information and form appear side by side; on smaller screens, they stack vertically for easier use.

## Getting Started

### Prerequisites

Install the following before running the project:

- Flutter SDK
- Dart SDK compatible with the Flutter SDK
- Android Studio or Xcode for mobile development
- A connected device or emulator

Verify your Flutter installation:

```bash
flutter doctor
```

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/ahemon369/Jhomes-Contact.git
   ```

2. Open the project directory:

   ```bash
   cd Jhomes-Contact
   ```

3. Install Flutter dependencies:

   ```bash
   flutter pub get
   ```

4. Run the application:

   ```bash
   flutter run
   ```

## Useful Commands

Run static analysis:

```bash
flutter analyze
```

Run tests:

```bash
flutter test
```

Format Dart files:

```bash
dart format .
```

Build an Android APK:

```bash
flutter build apk
```

Build a web release:

```bash
flutter build web
```

## Project Structure

```text
lib/
├── app.dart
├── main.dart
├── core/
│   ├── constants/
│   │   ├── app_assets.dart
│   │   ├── app_colors.dart
│   │   └── app_strings.dart
│   └── theme/
│       └── app_theme.dart
└── features/
    └── contact/
        └── presentation/
            ├── screens/
            │   └── contact_screen.dart
            └── widgets/
                ├── app_text_field.dart
                ├── contact_form_card.dart
                ├── contact_hero.dart
                ├── contact_info_card.dart
                ├── section_card.dart
                └── social_link_tile.dart
```

Static image assets are stored in `assets/images/` and registered in `pubspec.yaml`.

## Customization

Update the following files to customize the app:

- `lib/core/constants/app_strings.dart` — app name, contact details, labels, and validation messages
- `lib/core/constants/app_colors.dart` — brand colors and text colors
- `lib/core/theme/app_theme.dart` — global Material 3 theme and typography
- `assets/images/` — hero, navigation, and world-map image assets

## Current Limitations

- The submit action currently shows a success message locally; it does not send data to a backend.
- Social link buttons currently show a placeholder message; real URLs can be connected with a package such as `url_launcher`.
- The form uses basic client-side validation only.

## Roadmap

- Connect the form to an email service or backend API
- Add real WhatsApp, Twitter, and Instagram links
- Add stronger phone and email validation
- Add automated widget tests for form validation and submission feedback

## License

This project is currently intended for learning and portfolio use. Add a project-specific license before distributing it publicly.
