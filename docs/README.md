## Overview

The `common_constants` package is a collection of reusable widgets, functions, and constants that can be used in any Flutter project. This package is designed to make it easy to create consistent and reusable UI elements and functionality across your app.

## Installation

To use the `common_constants` package, add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  common_constants: ^latest_version
```

Then, run `flutter pub get` to install the package.

## Usage

Once you have installed the `common_constants` package, you can import it into your Dart code using the following statement:

```dart
import 'package:common_constants/common_constants.dart';
```

You can then use the widgets, functions, and constants defined in the package in your app.

## Widgets

The `common_constants` package includes a number of reusable widgets, such as:

* `SizedBox`: A widget that provides a fixed amount of space in the layout.
* `Divider`: A widget that draws a horizontal or vertical line in the layout.
* `ElevatedButton`: A widget that creates a raised button.
* `Snackbar`: A widget that displays a brief message at the bottom of the screen.

## Functions

The `common_constants` package also includes a number of useful functions, such as:

* `nextScreen()`: A function that navigates to a new screen.
* `screenReplacement()`: A function that replaces the current screen with a new screen.
* `showSnackbar()`: A function that displays a snackbar.
* `showCircularProgress()`: A function that displays a customized circular progress indicator.

## Constants

The `common_constants` package includes a number of useful constants, such as:

* `whiteColor`: The color white.
* `blackColor`: The color black.
* `tileColor`: A light blue color.
* `greyColor`: The color grey.
* `redColor`: The color red.

## Example

The following is an example of how to use the `common_constants` package in a Flutter app:

```dart
import 'package:flutter/material.dart';
import 'package:common_constants/common_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Common Constants Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('common_constants Example'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello from common_constants!',
                style: TextStyle(
                  color: Constants.redColor,
                  fontSize: 20,
                ),
              ),
              Constants.divider,
              Constants.height20,
              ElevatedButton(
                onPressed: () {
                  Constants.showSnackbar(context, 'This is a snackbar example');
                },
                child: const Text('Show Snackbar'),
              ),
              Constants.height20,
              ElevatedButton(
                onPressed: () {
                  Constants.nextScreen(context, const SecondScreen());
                },
                child: const Text('Navigate to Second Screen'),
              ),
              Constants.showCircularProgress(),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Second Screen!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
```

This example creates a simple Flutter app that displays a message and a button. When the button is pressed, a snackbar is displayed and the user is navigated to a new screen.

## Contributing

Contributions are welcome! Please read the [contributing guidelines](https://github.com/your-username/common_constants/wiki/Contributing-to-common_constants) before submitting a pull request.

## Support

If you have any questions or need help using this package, please feel free to create an issue on the [GitHub repository](https://github.com/your-username/common_constants/issues).

## License

This project is licensed under the MIT License.