# 🎯 Technical Test Submission: Wellness Planner App
This repository contains my completed solution for the Flutter technical assessment: a MoodTracker / Wellness Planner application.
The primary focus was achieving pixel-perfect UI fidelity, implementing custom calendar logic, and completing drag-and-drop behaviors exactly as shown in the provided Figma designs.

## ✨ Overview
This app is a multi-feature wellness planner that allows users to:
- Track mood using a fully interactive mood wheel
- View and reschedule workouts using drag-and-drop
- View hydration, insights, weekly progress, and daily highlights
- Select dates from a custom-built calendar UI
- View real-time temperature using Geolocator + Weather API
- Experience smooth, dynamic UI based on current time (Day/Night mode)
- All screens were implemented to match the Figma mockups with great precision.

## 🛠️ Dependencies Used

| Package                | Why It Was Used                                                                 |
| ---------------------- | ------------------------------------------------------------------------------- |
| **intl**               | For formatting dates, times, and generating readable date labels.               |
| **weather**            | To fetch weather/temperature data (simplified for the test).                    |
| **geolocator**         | For obtaining the device’s current location to retrieve weather data.           |
| **flutter_screenutil** | Ensures responsive, pixel-perfect scaling across all devices.                   |
| **flutter_svg**        | Allows using SVG assets across the UI.                                          |
| **go_router**          | Manages navigation cleanly across all app screens with a declarative structure. |


## 🗂️ Project Structure
```text
lib/
│
├── core/
│   ├── constants/
│   │   ├── app_colors.dart       
│   │   ├── app_images.dart     
│   │   ├── app_routes.dart       
│   │
│   ├── theme/
│   │   └── app_theme.dart        
│   │
│   ├── utils/
│   │   └── data_utils.dart       
│   │
│   └── widgets/
│       └── gradient_background.dart 
│
├── features/
│   │
│   ├── calendar/
│   │   └── presentation/
│   │       ├── views/
│   │       │   └── calendar_view.dart       
│   │       └── widgets/
│   │           ├── calendar_grid.dart        
│   │           └── month_selector.dart        
│   │
│   ├── dashboard/
│   │   └── presentation/
│   │       └── widgets/
│   │           └── wrapper.dart             
│   │
│   ├── home/
│   │   └── presentation/
│   │       ├── views/
│   │       │   └── home_view.dart           
│   │       └── widgets/
│   │           ├── header.dart
│   │           ├── hydration_level_graph.dart
│   │           ├── hydration_section.dart
│   │           ├── insights_section.dart
│   │           ├── week_calendar.dart
│   │           └── workout_section.dart
│   │
│   ├── mood/
│   │   ├── domain/
│   │   │   └── entities/
│   │   │       └── mood_data.dart           
│   │   │
│   │   └── presentation/
│   │       ├── views/
│   │       │   └── mood_view.dart          
│   │       └── widgets/
│   │           ├── mood_wheel.dart
│   │           └── mood_wheel_painter.dart
│   │
│   ├── training/
│   │   ├── domain/
│   │   │   └── workout_entity.dart          
│   │   │
│   │   └── presentation/
│   │       ├── views/
│   │       │   └── training_calendar.dart   
│   │       └── widgets/
│   │           ├── draggable_workout.dart
│   │           ├── week_header.dart
│   │           ├── week_view_widget.dart
│   │           └── workout_card.dart
│
└── main.dart                                 

```
## 📁 What Each Folder Contains
##### core/
Shared resources used across the entire app.
- constants/
  - app_colors.dart – Global color palette
  - app_images.dart – Asset paths
  - app_routes.dart – go_router route definitions
- theme/ – Dark theme, typography, text styles
- utils/
  - data_utils.dart – Week calculations, helper functions
- widgets/
  - gradient_background.dart – Reusable gradient background widget

##### features/
Each feature contains its own UI, domain, and widgets.

##### 📅 Calendar
- calendar_view.dart – Bottom sheet calendar with month navigation
- calendar_grid.dart – Builds the date grid and highlights selected day
- month_selector.dart – Month header with arrows for switching months

##### 🧭 Dashboard
- wrapper.dart – Bottom navigation bar with icons and active-tab highlighting

##### 🏠 Home
- home_view.dart – Main Home screen showing week, hydration, workouts
- header.dart – Displays notifications + week selector
- hydration_level_graph.dart – Vertical hydration dot graph
- hydration_section.dart – Hydration percentage + graph + summary
- insights_section.dart – Weight & calorie insight cards
- week_calendar.dart – Horizontal week date picker
- workout_section.dart – Displays workouts + live weather temperature

##### 😊 Mood
- mood_data.dart – Mood model with label, angle, color
- mood_view.dart – Mood selection screen with wheel + continue button
- mood_wheel.dart – Interactive draggable/tappable mood wheel
- mood_wheel_painter.dart – Custom gradient wheel painter

##### 💪 Training
- workout_entity.dart – Workout model with name, icon, duration
- training_calendar.dart – Weekly workout calendar with drag-and-drop logic
- draggable_workout.dart – Draggable workout card widget
- week_header.dart – Displays week title + date range
- week_view_widget.dart – Day-by-day workout targets
- workout_card.dart – Styled workout card with drag feedback

##### 🔰 main.dart
- App entry point
- Initializes ScreenUtil
- Sets up router, theme, portrait mode

### 📸 View App Screenshots
  👉 [View Screenshots](https://github.com/DevAnabKhan/evencir_task/tree/main/screenshots)

### 🎥 View App Demo Video
  👉 [Watch Demo Video](https://drive.google.com/file/d/1ZyiK7r2Bh2-PkImIqdL2KAfMzDrhHbe8/view?usp=drive_link)

### 📱 Download APK
  👉 [Download APK](https://github.com/DevAnabKhan/evencir_task/releases/download/v1.0.0/app-release.apk)

