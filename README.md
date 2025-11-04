# Drawer_exo

Exercice pédagogique Flutter — démonstration d'un Drawer (menu latéral) et organisation du projet selon l'architecture MVC (Model — View — Controller).

## Aperçu

Ce projet est un petit exercice pour apprendre à utiliser le Drawer dans Flutter tout en structurant l'application avec une séparation claire des responsabilités (MVC). L'application contient un menu latéral permettant de naviguer entre des vues simples; la logique d'état est placée dans un controller séparé.

## Fonctionnalités

- Un Drawer (menu latéral) fonctionnel
- Architecture MVC simple et explicite
- Exemples de vues: `home_view.dart`, `real_view.dart`

## Architecture (MVC)

Le projet suit une architecture MVC simplifiée :

- Model : objets de données et modèles simples (ex. `lib/models/menu_item.dart`).
- View  : widgets UI réutilisables et vues (`lib/view/` — contient le Drawer, les vues, etc.).
- Controller : logique d'application, gestion de l'état et navigation (`lib/controller/app_controller.dart`).

Cette séparation facilite la lecture, le test et l'évolution du code pour des applications plus grandes.

## Arborescence (principale)

Voici les fichiers/dossiers importants dans `lib/` :

- `main.dart` — point d'entrée de l'application.
- `controller/app_controller.dart` — controller central (logique et état du Drawer / sélection de menu).
- `models/menu_item.dart` — définition des éléments de menu.
- `view/drawer.dart` — widget Drawer principal (liste des éléments, interaction).
- `view/drawer_hider_view.dart` — vue utilitaire pour masquer/afficher le Drawer si nécessaire.
- `view/home_view.dart` — vue d'accueil.
- `view/real_view.dart` — autre vue démonstrative.

## Prérequis

- Flutter SDK installé (version stable recommandée).
- Un appareil ou un émulateur configuré (`flutter devices` pour vérifier).

## Installation et exécution

1. Récupérer les dépendances :

```bash
flutter pub get
```

2. Lancer l'application sur un appareil ou un émulateur :

```bash
flutter run -d <device_id>
```

3. Lancer les tests (le cas échéant) :

```bash
flutter test
```

## Notes pédagogiques

- Regardez `app_controller.dart` pour voir comment l'état de la sélection du menu et l'ouverture/fermeture du Drawer sont gérés.
- Les vues sous `lib/view/` doivent rester centrées sur l'UI et déléguer la logique au controller.
- Le modèle `menu_item.dart` montre comment définir les éléments du menu de façon réutilisable.

## Contribuer

Les contributions sont bienvenues (issues, améliorations pédagogiques, commentaires sur l'architecture). Pour une PR :

1. Forkez le dépôt.
2. Créez une branche décrivant la modification.
3. Ouvrez une Pull Request en expliquant les changements.
