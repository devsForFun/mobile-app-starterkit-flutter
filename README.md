# Flutter Template

This is a Flutter template with a pre-configured splash screen This is part of a comprehensive template that will include common features like onboarding, authentication, and more.

## 1. Splash Screen Implementation

This template includes a fully configured splash screen with:
- Native splash screen using `flutter_native_splash` package
- Dark mode support
- Android 12+ compatibility
- Cross-platform support

## 📁 Asset Setup

### Single Logo Setup
If you have one logo for both light and dark themes:
1. Place your logo in `assets/logos/` folder
2. Name it `app_logo.png`
3. The splash screen will use this logo for both themes

### Dual Logo Setup
If you have different logos for light and dark themes:
1. Place your logos in `assets/logos/` folder
2. Name them:
   - `app_logo_white.png` (for light theme)
   - `app_logo_dark.png` (for dark theme)
3. Update the `splash.yaml` configuration:

```yaml
flutter_native_splash:
  color: '#FFFFFF'
  color_dark: '#000000'
  image: assets/logos/app_logo_white.png
  image_dark: assets/logos/app_logo_dark.png

  android_12:
    color: '#FFFFFF'
    color_dark: '#000000'
    image: assets/logos/app_logo_white.png
    image_dark: assets/logos/app_logo_dark.png

  web: false
```
## 🛠️ Usage

### Generate Splash Screen Assets

After setting up your logo(s) and configuration, run:

```bash
flutter pub run flutter_native_splash:create --path=splash.yaml
```

This command will:
- Generate splash screen assets for all platforms
- Create Android drawable resources
- Generate iOS launch screen assets
- Update platform-specific configurations
