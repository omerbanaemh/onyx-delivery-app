# onyx_delivery

A new Flutter project.

## Overview

This project is a Flutter application that follows the **MVC (Model-View-Controller)** architecture pattern using **GetX** for state management and dependency injection. The application is structured to provide a clear separation of concerns and to facilitate scalability and maintainability.

## Design Pattern

The app follows the **MVC (Model-View-Controller)** design pattern combined with **GetX** for state management and dependency injection. This pattern separates the business logic (Model), the user interface (View), and the controllers that manage the interactions between the two.

### MVC Architecture:

- **Model**: Represents the data and business logic of the application. In this project, the Model is located in the `data` folder, with subfolders for:
  - **model**: Defines the data models.
  - **remote**: Handles API requests.
  - **repository**: Acts as a data access layer, abstracting data from remote and local sources.
  
- **View**: Represents the user interface of the app, responsible for displaying data to the user. The View components are stored in the `modules/views` folder, such as `home_view.dart` for the home screen.

- **Controller**: Manages the interaction between the Model and the View, holding the business logic. In this project, the controllers are located in the `modules/controllers` folder and are responsible for updating the View when the Model changes.

### GetX for State Management

**GetX** is used for managing the state across the app. It simplifies state management, dependency injection, and route management. The controller files contain the state logic, and GetX efficiently binds the data to the View.

## Libraries Used

The following libraries are used in the project:

- **get**: For state management, dependency injection, and navigation. ([get package](https://pub.dev/packages/get))
- **flutter_screenutil**: For responsive UI design. ([flutter_screenutil package](https://pub.dev/packages/flutter_screenutil))
- **flutter_svg**: For rendering SVG images. ([flutter_svg package](https://pub.dev/packages/flutter_svg))
- **dio**: For network requests and API handling. ([dio package](https://pub.dev/packages/dio))
- **sqflite**: For local storage using SQLite database. ([sqflite package](https://pub.dev/packages/sqflite))
- **path_provider**: For accessing device file system paths. ([path_provider package](https://pub.dev/packages/path_provider))
- **rename**: For renaming the app's package name. ([rename package](https://pub.dev/packages/rename))
- **flutter_launcher_icons**: For generating app launcher icons. ([flutter_launcher_icons package](https://pub.dev/packages/flutter_launcher_icons))

## Version

This project uses Flutter version `^3.5.0` and follows the versioning scheme:

- **Version**: 1.0.0+1

## Getting Started

For help getting started with Flutter development, view the [online documentation](https://docs.flutter.dev/), which offers tutorials, samples, guidance on mobile development, and a full API reference.
