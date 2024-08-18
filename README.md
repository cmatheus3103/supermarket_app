# Project SuperMarket: A Flutter App

Welcome to the SuperMarket_app project! This project was developed for Bento's Flutter challenge. Here you will find a mobile application that simulates a supermarket application, with two main screens: the Home Screen, which contains several sections of the application, and the product details page, which contains details of a product.

![Initial Chalenge](https://github.com/user-attachments/assets/fcb9a193-5f60-4480-a538-3ab0acc543f3)

Amostra do App rodando em um android Poco F3 
https://github.com/user-attachments/assets/7fe419d7-3d0b-42a3-a45a-5cf322b1c23e



[Apk Link] () 
## Initial Challenges

### Working with Image-Based Design Instead of Figma

Working just with images is an interesting challenge. That's why I initially chose to set up all the variables such as colors, font settings, and images. I used some tools to select and discover the color by clicking with the mouse.
Based on these choices, I created my app theme. I added the font manually because using the font directly from GoogleFonts did not yield the expected result. My choice for the font was `Nunito` because it is very similar to the one used in the design. [Nunito Google Font](https://fonts.google.com/specimen/Nunito)

## Working Without API Data

Working without API data is common in agile application development. Based on the information that I visually detected as needed, I set up entities for each section of the application and a home entity that would encompass them all.
From these entities, I built the entire architecture until I reached the final level, where I simulate a JSON that I would receive from the API but in this case, it is saved locally. I read the JSON file to extract all the data I need.

## Working Without URL Images

Working without URL images is also a common challenge in application development. That's why I chose to use copyright-free images to simulate the images that would be displayed in the application.
To better simulate reality, I also preferred to use most images as URLs within the JSON file instead of local assets.

## Simulating the Reality of the Application

To simulate the reality of the application, I used the Lottie package to simulate the animations that would be displayed in the application. I used the package to simulate the loading screen animations during the initial loading of the application when reading a JSON file. I added a 5-second delay to simulate the loading of the initial data.

## Loading Images from the Internet

With my approach of creating a simulation similar to reality, real problems that we normally encounter when building an application also arose. One of the problems I encountered was loading images from the internet. I used the package `cached_network_image` to load the images from the internet and create a cache to load them faster on subsequent uses.

# Technologies and Project Structure

This project is a hybrid mobile application developed with Flutter, utilizing a variation of Clean Architecture with SOLID principles and Dart language conventions.



## Technologies 

https://github.com/user-attachments/assets/25e2b6e3-5b3f-482b-9be4-f48698191f45

Used

- **Flutter 3.24.0**: Used to develop the cross-platform user interface, allowing the creation of high-performance and aesthetically pleasing applications for Android and iOS from a single codebase.

## Project Structure

- **Core**: Contains the main configurations of the application, such as the theme  and constants.

The project adheres to the principles of clean architecture, separating business logic into distinct layers to promote scalability and ease of maintenance. The main layers are divided into feature modules, including:

- **Data**: Implements repositories, data sources, and models, handling data access and storage. This layer supports the Domain layer by implementing its interfaces and adapting external data to comply with domain contracts.
At this layer, we typically implement repository or service interfaces that may depend on external data sources such as APIs or hardware access like Bluetooth.

To enable the repository to process and adapt external data, we create contracts for these services, delegating the implementation responsibility to the lowest layer of our architecture.

- **Domain**: Contains Controllers,Blocs, entities, repositories, and states, defining the core behavior and logic of the application.
The Domain layer encompasses the application's business rules and states. Its core responsibility involves managing and implementing state through a chosen state management approach.

For example, in the case of a repository, this layer will only define the interface contract (abstractions). The responsibility for implementing this repository will be delegated to a lower layer.

- **UI**: Includes UI widgets and Pages.

References: [Very Good Architecture](https://verygood.ventures/blog/very-good-flutter-architecture)

References: [Clean Dart 2.0](https://github.com/Flutterando/Clean-Dart/tree/2.0)

## State Management

`ValueNotifier` is a simple class that extends `ChangeNotifier` and provides a way to store a single value that can be listened to and updated reactively. It is ideal for simple state management needs and can be used with widgets that need to be rebuilt when the state changes. By using ValueNotifier, you can easily manage and react to state changes in your Flutter application, ensuring efficient and effective updates to the user interface.

## Packages Philosophy

I believe in simplicity when it comes to using packages. I only incorporate packages that are essential to the project and offer clear benefits. I avoid unnecessary packages that could bloat the project and slow down the application.

Since I used ValueNotifier to manage the application's state, there was no need for additional state management packages like Bloc or MobX. ValueNotifier provides a simple and efficient way to handle state in a Flutter application, delivering the necessary functionality without the need for extra packages.

When considering the addition of packages, it's important to have a clear understanding of the benefits they offer and to verify whether they are recent and actively maintained by the community. By using only essential packages, I ensure that the project remains lightweight and efficient, with minimal dependencies and optimal performance.

## Packages Used

### [Get_IT](https://pub.dev/packages/get_it) 7.7.0

Get_it is a service locator for Dart and Flutter, allowing for simple and efficient dependency injection.

**Key Features:**

- Simplifies dependency injection.
- Easy management of object instances.
- Support for singleton and factory patterns.
- Integration with state managers.

### [Lottie](https://pub.dev/packages/lottie) 3.1.2

Lottie is a package for Flutter that enables the rendering of Adobe After Effects animations natively on mobile and web.

**Key Features:**

- Renders Adobe After Effects animations.
- Supports vector graphics for high-quality animations.
- Smooth animations with minimal performance impact.
- Wide range of animation customization options.

### [Cached_network_image](https://pub.dev/packages/cached_network_image) 3.4.1

Cached_network_image is a Flutter package that allows for efficient loading and caching of images from the internet, improving application performance.

**Key Features:**

- Load images from the internet with caching.
- Support for placeholders and error images.
- Integration with progress indicators.
- Efficient loading with cache for repeated use.

# Installation

To set up the project, follow the steps below:

1. Ensure Flutter 3.24.0 is installed. [Flutter installation guide](https://flutter.dev/docs/get-started/install).
2. Clone this repository:

   ```bash
   git clone https://github.com/cmatheus3103/supermarket_app.git
   ```

3. Install dependencies:

   ```bash
   cd supermarket_app
   flutter pub get
   ```

4. Run the application:

   ```bash
   flutter run
   ```
