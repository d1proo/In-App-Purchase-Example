📱 **In-App Purchase Example**
Простое демонстрационное приложение для iOS, показывающее реализацию выбора подписки с использованием SwiftUI и архитектурных паттернов.

🎯 **Функциональность**
Экран онбординга - приветствие пользователя

Экран выбора подписки - выбор между месячной и годовой подпиской

Главный экран - отображение выбранной подписки

Сохранение состояния - запоминание выбора между запусками приложения

🛠 **Технологии**
SwiftUI - декларативный UI фреймворк

@StateObject/@EnvironmentObject - управление состоянием

@AppStorage - сохранение данных в UserDefaults

NavigationStack - навигация между экранами


📁 **Структура проекта**

📁 In-App-Purchase-Example/
├── 📁 Models/
│   ├── Subscription.swift
│   └── SubscriptionController.swift
│
├── 📁 Views/
│   ├── 📁 Screens/
│   │   ├── ContentView.swift
│   │   ├── OnbordingScreen.swift
│   │   ├── SubscriptionScreen.swift
│   │   └── MainScreen.swift
│   │
│   └── 📁 Components/
│       └── SubscriptionComponent.swift
│
├── 📁 Assets/
│   └── 📁 Assets.xcassets/
│
└── 📄 In_App_Purchase_ExampleApp.swift

🏗 **Архитектура**
Проект использует MVC-подобную архитектуру с акцентом на реактивность:

View (SwiftUI) → Controller (ObservableObject) → Model (Structs)



