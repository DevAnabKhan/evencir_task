# 🎯 Technical Test Submission: Wellness Planner App
## ✨ Overview
This repository contains the completed solution for the technical assessment, a MoodTracker / Wellness Planner App. The project focused on achieving pixel-perfect UI fidelity based on the provided Figma designs while implementing several complex, dynamic features.

The application integrates real-time device checks, advanced calendar logic for calculating week indices, and sophisticated gesture handling for both mood logging and rescheduling workout events.

## 🚀 Key Features Implemented
The application successfully implements the following core requirements, demonstrating proficiency in Flutter UI and logic development:

✨ Pixel-Perfect UI: All core screens (Home, Calendar, Mood-Variations) are visually implemented to precisely match the provided Figma mockups.

⏰ Dynamic Day/Night Icon: The main screen's icon changes dynamically based on the device's real-time clock: Moon 🌙 for nighttime and Sun ☀️ for daytime.

📅 Advanced Calendar Logic: Implements logic to display Week X/Y (e.g., Week 2/4), where 'X' is the current week index and 'Y' is the total weeks in that specific month.

🗓️ Date Selection Mapping: Selecting a date in the expanded Calendar View correctly maps and highlights the corresponding full week's dates in the lower date picker.

👟 Draggable Workout Events: On the calendar screen, pre-existing workout events are fully draggable, allowing users to easily reschedule them to a different date or time slot.

🧠 Drag-and-Drop Mood Logging: The primary mood component is draggable and can be dropped onto specific dates to log a mood entry.

🎨 Mood Variation Reflection: Dragging the component into different color-coded target areas instantly updates the UI to reflect the corresponding mood variation (e.g., Calm, Peace, Happy).

## 🛠️ Tech Stack and Implementation Notes

This project was built using the following technologies and architectural decisions:

| Category | Technology | Purpose |
| :--- | :--- | :--- |
| **Framework** | **Flutter** | Cross-platform mobile development. |
| **Language** | **Dart** | Core programming language. |
| **Routing** | **go_router** | Used for declarative navigation and deep linking. |
| **UI Utility** | **flutter_screenutil** | Ensures adaptive and **pixel-perfect** scaling across various screen sizes. |
| **Packages** | `geolocator`, `weather` | Included for potential future location/weather integration (logic is mocked/simplified for this UI task). |

## 🛠️ Key Implementation Decisions

*State Management: Simple Stateful Widgets were employed. Given the project's current scope (focused heavily on local UI state changes, animations, and gestures with no complex global data flow), this was the most efficient solution for localized state changes.

*Custom Date Calculations: Custom logic was implemented to accurately handle the week calculations, avoiding reliance on external libraries for this core requirement.

*iOS Permissions: The Info.plist was correctly configured with the necessary NSLocationWhenInUseUsageDescription for location services, ensuring the app is ready for deployment.

### Prerequisites
Flutter SDK (>=3.32.8)
