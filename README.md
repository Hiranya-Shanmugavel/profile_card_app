# Profile Card App 📱

> **Submission for InternCircle & College Project Evaluation**  
> A clean, responsive, single-screen profile card application built with Flutter & Dart following modern Material 3 design principles.

---

## 📌 Project Overview
The **Profile Card App** is a modern mobile interface designed to present a student/developer profile elegantly. It showcases fundamental Flutter layout concepts using core widgets (`Column`, `Row`, `Container`, and `Text`) without relying on heavy third-party UI dependencies.

---

## ✨ Features & Design Highlights
- **Modern Color Scheme**: Fresh Teal and White theme (`Colors.teal` with `0xFFE0F2F1` background tint and white card surface).
- **Circular Initials Avatar**: Prominent circular avatar with the initials **"HR"**, accented by a double-ring teal border.
- **Student Profile Identity**:
  - Name: **"Your Name"** in bold deep-teal typography (`0xFF004D40`).
  - Academic Role: **"Computer Science Engineering Student"** styled in a custom pill-shaped badge container.
- **Three Styled Contact Rows**:
  - ✉️ **Email**: `your.name@college.edu`
  - 📞 **Phone**: `+91 98765 43210`
  - 📍 **Location**: `Bangalore, Karnataka, India`
- **Responsive & Overflow-Free Layout**:
  - Wrapped inside [`SingleChildScrollView`](lib/main.dart) to prevent vertical overflow on smaller mobile screens and landscape orientations.
  - Constrained with `BoxConstraints(maxWidth: 420)` to maintain an optimal card width on tablets and desktop browsers.
  - Contact rows wrap text inside `Expanded` with truncation/ellipsis support to guarantee zero horizontal pixel overflow.
- **Card Aesthetics**: $24\text{ px}$ rounded border radius with subtle teal drop shadow and border highlights.

---

## 🧱 Widgets Used & Layout Structure

This project strictly follows the assignment guidelines by using Flutter's core widgets:

| Widget | Purpose in Project |
| :--- | :--- |
| **`Column`** | Structures the vertical hierarchy of the card: Avatar &rarr; Name &rarr; Role Badge &rarr; Divider &rarr; Contact List. |
| **`Row`** | Organizes each contact card horizontally: circular icon container on the left, label and value text on the right. |
| **`Container`** | Used for the main card container, avatar outer ring, role badge pill, and contact item cards with borders and shadows. |
| **`Text`** | Renders initials, headings, badges, and contact details with customized fonts, sizes, and colors. |
| **`CircleAvatar`** | Renders the primary profile badge with custom background color and initials. |
| **`SingleChildScrollView`** | Prevents layout overflow errors by enabling smooth vertical scrolling on small screens. |
| **`ConstrainedBox` & `Expanded`** | Enforces maximum card width and responsive text fitting across various screen sizes. |

---

## 📁 Repository Structure

```text
profile_card_app/
├── lib/
│   └── main.dart             # Complete Flutter application code
├── test/
│   └── widget_test.dart      # Automated UI widget tests
├── web/
│   ├── index.html            # Web platform runner configuration
│   └── manifest.json         # Web PWA manifest
├── preview.html              # Standalone browser visual preview
├── analysis_options.yaml     # Flutter recommended linter rules
├── pubspec.yaml              # Project metadata & Flutter SDK dependencies
├── .gitignore                # Complete Flutter & Dart gitignore
└── README.md                 # Submission documentation
```

---

## ⚙️ How to Run the App (For Reviewers)

### Prerequisites
- Flutter SDK (v3.0.0 or higher) installed and added to `PATH`.
- Any supported platform: Google Chrome, Android Emulator/Device, or Windows Desktop.

### Commands to Run

1. **Clone the repository:**
   ```bash
   git clone https://github.com/<your-username>/profile_card_app.git
   cd profile_card_app
   ```

2. **Generate platform files (if needed) & fetch packages:**
   ```bash
   flutter create .
   flutter pub get
   ```

3. **Run on Chrome (Web):**
   ```bash
   flutter run -d chrome
   ```

4. **Run on Android:**
   ```bash
   flutter run -d android
   ```

5. **Run Automated Widget Tests:**
   ```bash
   flutter test
   ```

---

## ⚠️ Author Note on Local Environment
> **Note for Evaluators:**  
> This project repository was developed and structured according to standard Flutter 3 architecture and Dart null-safety specifications. However, the app has **not been executed or runtime-tested on the author's local laptop** because the Flutter SDK was not installed on the local system at the time of authoring. Reviewers with Flutter installed can run the project directly using `flutter run`.

---

## 👤 Author Information
- **Project:** Profile Card App
- **Submission To:** InternCircle / College Project
- **Role:** Computer Science Engineering Student
