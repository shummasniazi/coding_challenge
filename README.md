Overview
This project is an example of a Flutter application that follows best practices for clean code, state management, network requests, and code generation. It serves as a reference for building scalable and maintainable Flutter apps.

Features
Modular architecture for clean code.
Bloc pattern for state management.
Dio and Retrofit for making network requests and defining API interfaces.
Build Runner for generating .g files.
Dart SDK used: sdk: '>=2.18.4 <3.0.0'.
Getting Started
Follow these steps to set up and run the project on your local machine.

Prerequisites
Ensure that you have Flutter and Dart installed on your system.
Make sure you have a compatible IDE for Flutter development (e.g., Android Studio, VS Code).
Installation
Clone the repository to your local machine.
Install the project dependencies.

flutter pub get
Usage
You can use this project as a reference for your own Flutter applications. Here are some key points to keep in mind:

Modular Architecture: The project follows a modular architecture to promote clean code and separation of concerns. Each module contains its own business logic, UI components, and data layers.

State Management with Bloc: Bloc is used for state management. This pattern helps manage the application's state, handle UI updates, and separate the presentation layer from business logic.

Network Requests with Dio and Retrofit: The project uses Dio for making HTTP requests and Retrofit for defining API interfaces. Retrofit generates code for making network requests based on your API definitions.

Build Runner for .g Files: Build Runner is used to generate code files (e.g., .g.dart) for Retrofit-defined API interfaces. This helps streamline network request code generation and reduces boilerplate code.

Dart SDK Version: The project specifies the Dart SDK version as '>=2.18.4 <3.0.0'.

Contributing
Contributions are welcome! Feel free to open issues or pull requests to suggest improvements or report any problems.