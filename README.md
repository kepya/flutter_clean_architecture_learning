# Flutter Clean Architecture Demo

Une application Flutter conçue pour **explorer et maîtriser la Clean Architecture** dans un contexte Flutter.  
Ce projet est destiné à servir de base solide pour développer des applications maintenables, testables et évolutives avec Flutter.

---

## Objectif

Ce projet a pour but d'aider les développeurs à :

- Comprendre les **principes de la Clean Architecture**
- Séparer clairement les responsabilités (UI, logique métier, accès aux données)
- Utiliser des techniques modernes de **state management** (comme Provider ou Bloc)
- Mettre en œuvre des pratiques de **test unitaire** et **test d’intégration**

---

## Architecture du projet

Le projet suit une structure en couches inspirée de la Clean Architecture :

```
lib/
├── core/                # Classes utilitaires communes (erreurs, usecase, etc.)
├── data/                # Accès aux données (API, local DB) + implémentation des repositories
│   └── repositories/
├── domain/              # Logique métier : entités, use cases, abstractions
│   ├── entities/
│   ├── repositories/
│   └── usecases/
├── presentation/        # Couche UI : widgets, pages, state management
│   ├── pages/
│   ├── blocs/ 
│   └── widgets/
└── main.dart            # Point d'entrée de l'application
```

---

## Technologies utilisées

- **Flutter**
- **Dart**
- **State management** : Bloc
- **Architecture** : Clean Architecture
- **Tests** : flutter_test

---

## Démarrer le projet

### Prérequis

- Flutter SDK installé ([Guide d’installation](https://docs.flutter.dev/get-started/install))
- Un éditeur comme **VS Code** ou **Android Studio**

### Installation

```bash
git clone https://github.com/kepya/flutter_clean_architecture_learning.git
cd flutter_clean_architecture_learning
flutter pub get
flutter run
```

---

## Tests

Le projet inclut des **tests unitaires** pour les use cases et des **tests de widgets** pour la UI.

```bash
flutter test
```

---

## Explication des couches

### `domain/`
- Contient les entités et les usecases.
- Indépendant de toute technologie Flutter ou de bibliothèque externe.

### `data/`
- Importe les données via des API ou sources locales.
- Implémente les interfaces définies dans le domaine.

### `presentation/`
- Dépend de Flutter.
- Contient les pages, les widgets et la gestion d’état.

### `core/`
- Contient des outils communs (gestion des erreurs, constantes, helpers).

---

## Ressources recommandées

- [Bloc Architecture](https://bloclibrary.dev/#/)

---

## Auteur

**Kepya** – [kepya](https://github.com/kepya)

---

## Licence

Ce projet est sous licence MIT – libre d’usage, modification et redistribution.
