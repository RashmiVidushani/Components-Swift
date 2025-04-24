# 📱 SwiftUI Components Explorer

A SwiftUI-based iOS application that showcases various built-in SwiftUI components, organized into categories such as **Text Input/Output**, **Controls**, **Container Views**, and **List Styles**. Each component includes an interactive example and a link to the official Apple Developer documentation.

---
DEMO 



https://github.com/user-attachments/assets/dbbfbfc6-434d-4b8e-bda6-1d746fef2d12


## 🚀 Features

- ✅ Organized component showcase with system icons and categories  
- 🔍 Real-time search for finding components easily  
- 🧪 Interactive previews of each SwiftUI component  
- 📚 Direct access to Apple’s official documentation for each component  
- 🌗 Clean UI using `NavigationView`, `List`, `Section`, and `ScrollView`  

---

## 📸 Screenshots
<img width="400" alt="Screenshot 2025-04-24 at 1 14 25 PM" src="https://github.com/user-attachments/assets/b783aa01-28ab-45e5-b96e-b18c73dac4d3" />

<img width="400" alt="Screenshot 2025-04-24 at 1 14 31 PM" src="https://github.com/user-attachments/assets/5c9feef0-081f-4f5c-af31-8adce6fe8701" />

<img width="400" alt="Screenshot 2025-04-24 at 1 14 39 PM" src="https://github.com/user-attachments/assets/6524126f-ab0c-4bec-ae89-e4a5da6c673a" />

<img width="400" alt="Screenshot 2025-04-24 at 1 14 47 PM" src="https://github.com/user-attachments/assets/6b974949-f584-4ec0-badc-ed2c567e6900" />

<img width="400" alt="Screenshot 2025-04-24 at 1 14 54 PM" src="https://github.com/user-attachments/assets/bcfa9469-423d-404b-bd1c-71f0605b7932" />

<img width="400" alt="Screenshot 2025-04-24 at 1 15 07 PM" src="https://github.com/user-attachments/assets/26173dd6-858a-43eb-a3f2-ea27f1d4a29a" />

<img width="400" alt="Screenshot 2025-04-24 at 1 15 13 PM" src="https://github.com/user-attachments/assets/74a8f79a-752e-47ad-a389-28258184198e" />

---

## 🧱 Components Covered

### 📄 Text Input/Output
- `Text`, `Label`, `TextField`, `SecureField`, `TextEditor`, `Image`

### 🎛 Controls
- `Button`, `Menu`, `Link`, `Slider`, `Stepper`, `Toggle`, `Picker`, `DatePicker`, `ColorPicker`, `ProgressView`

### 📦 Container Views
- `HStack`, `VStack`, `ZStack`, `Form`, `NavigationView`, `Alert`, `Sheet`

### 📋 List Styles
- `PlainListStyle`, `InsetListStyle`, `GroupedListStyle`, `InsetGroupedListStyle`, `SidebarListStyle`

---

## 🛠 Architecture

- **MVVM Pattern**: `ComponentViewModel` manages search and data filtering.
- **Reusable Model**: `Component` model with enums for different `ComponentType`.
- **Dynamic View Rendering**: Renders views using `switch` based on `component.type`.

---

## 🧰 Tech Stack

- `SwiftUI`
- `SFSafariViewController` (UIKit integration for external documentation)
- `MVVM` architecture
- `SF Symbols` for icons

---

## 🔎 Search Functionality

Use the search bar in the navigation bar to find components by name. Search is case-insensitive and results update dynamically.

---

## 📚 How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/swiftui-components-explorer.git
   cd swiftui-components-explorer
   ```

2. Open in Xcode:
   - Open `SwiftUIComponentsExplorer.xcodeproj`
   - Build and run on an iOS Simulator or physical device.

3. Browse components:
   - Tap on a component to explore its functionality and details.

---

## 🌐 Documentation Access

Each component detail page includes a toolbar button that opens its corresponding documentation on [developer.apple.com](https://developer.apple.com/documentation/swiftui).

---

## ✨ Future Improvements

- Add dark mode support
- Save favorite components
- Add custom styling examples

---

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).

---

Let me know if you’d like me to generate a `LICENSE` file or help you upload screenshots for the `README`!
