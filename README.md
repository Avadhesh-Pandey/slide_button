# Example to `slider_button_lite`

<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

`slider_button_lite` is a lightweight and easy-to-use library for Flutter that provides a
customizable slider button with built-in progress bar functionality. It simplifies the
implementation of interactive slider buttons with automatic progress tracking for asynchronous
operations and ensures null safety support.

## Features

Flutter library designed to enhance your app's UI with a sleek and functional slider button. This
package offers a variety of features to streamline your development process

<img src="https://github.com/user-attachments/assets/ea5fd97b-4203-47da-bd5c-9a75796ad922" width="400px">

* **Simple and Light**: Designed with minimalism in mind, slider_button is both lightweight and efficient,
ensuring it integrates seamlessly into your app without impacting performance.

* **Easy Implementation**: Set up and integrate the slider button effortlessly into your Flutter project
with straightforward implementation guidelines.

* **With Progress Bar**: The library includes a built-in progress bar that visually represents the
completion status of any asynchronous function, enhancing user feedback during operations.

* **Easy Customization**: Tailor the slider button's appearance and behavior to fit your app's design
requirements with flexible customization options.

* **Automatic Progress Tracking**: The progress bar automatically updates based on the status of async
functions, simplifying the handling of background tasks and providing a smooth user experience.

* **Null Safety Supported**: slider_button is built with null safety in mind, ensuring a robust and
error-free integration in modern Dart environments.

## Getting started

To use this plugin, add `slider_button_lite` as a dependency in your pubspec.yaml file.

## Usage

```
SliderButton(
        properties: SliderButtonProperties(
          disable: false,
          isLoading: false,
          disableButtonColor: const Color(0xFFCCCCDD),
          width: MediaQuery.of(context).size.width - (16 * 2),
          dismissThresholds: 0.90,
          backgroundColor: Colors.yellow,
          action: () async {
            debugPrint('Action completed');
            ///Any task
            /// Async task for progress bar
            await Future.delayed(const Duration(seconds: 3), () => debugPrint('Large Latte'));
            return false;
          },
          label: const Text('Slide to confirm',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              )),
          buttonSize: 60,
          alignLabel: Alignment.center,
          icon: const ClipOval(
            child: Material(
              color: Colors.black, // Button color
              child: SizedBox(
                  width: 60, height: 60, child: Icon(Icons.arrow_forward_ios_outlined, color: Colors.white)),
            ),
          ),
        )
```

## Additional information

Integrate `slider_button_lite` into your Flutter app to enjoy an elegant and functional slider button solution with minimal effort and maximum flexibility.

## Welcome contributions from the community!

Whether you have suggestions, bug fixes, or new features in mind, your input is invaluable. Feel free to contribute and help us make the library even better.
