## 🎬 Vídeo de Demostración / Demo Video

<video src="https://raw.githubusercontent.com/bmoraa16/elvoratec_assessment/1a651a5dc0169a915e30955ba0532df6fa8f8614/assets/demo.mp4"
       controls muted playsinline width="700"></video>


---

# 📱 Ejecución de la App Flutter (ES)

Este proyecto está construido con **Flutter 3.24.0**. Asegúrate de tener instalada la versión correcta para evitar problemas de compatibilidad.

---

## ✅ Requisitos

- **Flutter SDK**: `3.24.0`  
- **Dart SDK**: Incluido con Flutter  
- **IDE**: VS Code, Android Studio o cualquier editor compatible con Flutter  
- **Dispositivo/Emulador**: Android o iOS

---

## 🚀 Inicio Rápido

1. **Clona el repositorio**:
```bash
git clone git@github.com:bmoraa16/elvoratec_assessment.git your_folder_name
cd your_folder_name
```

2. **Instala dependencias**:
```bash
flutter pub get
```

3. **Genera código (si aplica)**:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. **Ejecuta la app**:
```bash
flutter run
```

---

## 🛠️ Versión de Flutter

Verifica tu instalación con:

```bash
flutter --version
```

Salida esperada:
```
Flutter 3.24.0 • channel stable • ...
```

Si usas `fvm`, establece la versión con:
```bash
fvm use 3.24.0
fvm flutter pub get
fvm flutter run
```

---

> Construido con Flutter 3.24.0

---

## 🧠 Proceso de desarrollo y decisiones técnicas (ES)

### Proceso de desarrollo
1. Delimitación de alcance y dependencias (integración de API, routing, DI).  
2. Modelado de datos: **DTOs → Entidades de dominio** con *mappers* (`toDomain`) y validaciones.  
3. Construcción de la capa de datos (**repositorio**) con manejo de errores tipo `Result/Either`.  
4. Implementación de **BLoC** (lista, detalle y búsqueda) con eventos/estados predecibles, paginación segura y *debounce* en búsquedas.  
5. Diseño de UI con textos a prueba de desbordes y **color filters** dinámicos cuando aplica (p. ej., tematizado por tipo).  
6. Optimizaciones: caché en memoria, *fallbacks* de imágenes y conversiones de unidades.  

### Decisiones técnicas clave
- **Clean Architecture + DI (GetIt/injectable)** para desacoplar UI/datos y facilitar pruebas.  
- **BLoC** por su trazabilidad y control explícito de estados.  
- **Mapeos/normalización explícita** (listas, tipos, stats) para simplificar widgets.  
- **Fallbacks y null-safety** en red/decodificación para evitar crasheos.  
- **Transformaciones de dominio** (temas por tipo, conversiones consistentes) para una UX coherente.


---

# 🧭 Running the Flutter App (EN)

This project is built with **Flutter 3.24.0**. Please ensure you have the correct version installed to avoid compatibility issues.

---

## ✅ Requirements

- **Flutter SDK**: `3.24.0`  
- **Dart SDK**: Comes with Flutter  
- **IDE**: VS Code, Android Studio, or any Flutter-supported editor  
- **Device/Emulator**: Android or iOS

---

## 🚀 Getting Started

1. **Clone the repository**:
```bash
git clone git@github.com:bmoraa16/elvoratec_assessment.git your_folder_name
cd your_folder_name
```

2. **Install dependencies**:
```bash
flutter pub get
```

3. **Run code generation (if applicable)**:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. **Run the app**:
```bash
flutter run
```

---

## 🛠️ Flutter Version Info

You can verify your Flutter setup with:

```bash
flutter --version
```

Expected output:
```
Flutter 3.24.0 • channel stable • ...
```

If you're using `fvm`, you can set the version with:
```bash
fvm use 3.24.0
fvm flutter pub get
fvm flutter run
```

---

> Built using Flutter 3.24.0

---

## 🧠 Development Process & Technical Decisions (EN)

### Development Process
1. Scoped the app and dependencies (API integration, routing, DI).  
2. Modeled data: **DTOs → Domain entities** with explicit mappers (`toDomain`) and validations.  
3. Built the data layer (**repository**) with `Result/Either`-style error handling.  
4. Implemented **BLoC** (list, detail and search) with predictable events/states, safe pagination, and debounced search.  
5. Designed UI components with overflow-safe text and dynamic **color filters** when needed (e.g., type-based theming).  
6. Added optimizations: in-memory caching, image fallbacks, and unit conversions.

### Key Technical Decisions
- **Clean Architecture + DI (GetIt/injectable)** to decouple UI and data and enable testing.  
- **BLoC** for traceable, explicit state transitions.  
- **Explicit mapping/normalization** (lists, types, stats) to keep widgets simple.  
- **Fallbacks & null-safety** across decoding/network to prevent crashes.  
- **Domain-centric transformations** (type theming, consistent unit conversions) for coherent UX.
