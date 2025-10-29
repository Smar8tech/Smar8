# SMAR8 SOLUTIONS - Web Application

## 📁 Folder Structure

```
web/
├── index.html              # HTML entry point
├── manifest.json           # PWA manifest configuration
├── favicon.png             # Application icon
├── flutter.js              # Flutter web runtime (auto-generated)
├── manifest.json           # Web app manifest
└── lib/
    ├── main.dart          # Main application entry point with routing
    ├── components/
    │   ├── app_header.dart      # Navigation header component
    │   ├── app_footer.dart      # Footer component
    │   └── common_widgets.dart   # Reusable UI widgets
    └── pages/
        ├── home_page.dart       # Home/Landing page
        ├── about_page.dart      # About us page
        ├── solutions_page.dart  # Solutions & services page
        ├── insights_page.dart   # Market insights page
        ├── contact_page.dart    # Contact us page
        └── careers_page.dart    # Careers page
```

## 🎯 Features

- **6 Complete Pages**: Home, About, Solutions, Insights, Contact, Careers
- **Responsive Design**: Works on desktop, tablet, and mobile devices
- **Navigation System**: Fully functional header with page switching
- **Reusable Components**: Common widgets for buttons, cards, inputs, and more
- **Professional UI**: Modern design with SMAR8 SOLUTIONS branding

## 🚀 Running the Web App

### Development Mode
```bash
flutter run -d chrome
```

### Production Build
```bash
flutter build web
```

### Deploy
```bash
# Build for production
flutter build web

# Deploy to GitHub Pages
# Files will be in build/web/ directory
```

## 📝 Pages Overview

1. **Home Page**: Hero section, stats, features, services overview, recent updates, newsletter signup
2. **About Page**: Company mission, leadership team, company history, values
3. **Solutions Page**: Detailed services, comparison table, FAQs
4. **Insights Page**: Market summary, current insights, research reports, investment topics
5. **Contact Page**: Contact information, office locations, contact form, support center
6. **Careers Page**: Job openings, benefits, company culture, application process

## 🎨 Components

- **AppHeader**: Top navigation bar with responsive menu
- **AppFooter**: Footer with links and company information
- **CommonButton**: Reusable button with multiple styles
- **CommonCard**: Card container with consistent styling
- **CommonInput**: Form input fields
- **StatCard**: Statistics display cards
- **FeatureCard**: Feature showcase cards

## 🔧 Customization

All content can be customized by editing the respective page files in `lib/pages/`.

## 📱 PWA Support

The web app is configured as a Progressive Web App (PWA) with:
- Manifest file for app installation
- Responsive design for mobile devices
- Offline capabilities (when configured)
