# 🧼 Mini Anmi – Flutter App with Clean Architecture

A well-structured Flutter application built using **Clean Architecture** principles to ensure scalability, maintainability, and testability.

---

## 🧱 Project Structure

The project follows a layered architecture under the `lib/src/` directory:
lib/ └── src/ ├── domain/          ← Entities and Use Cases ├── data/            ← Models, Repositories, and Data Sources └── presentation/    ← UI Screens, Widgets, and State Management

### 1. `domain/`
- Contains core business entities (e.g., `User`, `Product`)
- Includes use cases that define app-specific logic (e.g., `LoginUser`, `GetProfile`)

### 2. `data/`
- Holds data models and API implementations (`UserModel`, `ProductModel`)
- Implements repositories (`UserRepositoryImpl`)
- Connects to external sources (REST APIs, local storage)

### 3`presentation/`
- Contains UI screens (`HomeScreen`, `LoginScreen`)
- Reusable widgets (`CustomButton`, `AppBarWidget`)
- State management using `Bloc` or `Cubit`


https://github.com/user-attachments/assets/a103d0d2-adad-4492-b73e-4cd001059f5e



---

## 🚀 Getting Started

```bash
flutter pub get
flutter run





