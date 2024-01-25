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
              Constants.height10,
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
