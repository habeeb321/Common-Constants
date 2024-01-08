library common_constants;

import 'package:flutter/material.dart';

class Constants {
  // sized box
  static const height5 = SizedBox(height: 5);
  static const height10 = SizedBox(height: 10);
  static const height15 = SizedBox(height: 15);
  static const height20 = SizedBox(height: 20);
  static const width5 = SizedBox(width: 5);
  static const width10 = SizedBox(width: 10);
  static const width15 = SizedBox(width: 15);
  static const width20 = SizedBox(width: 20);

  // colors
  static const whiteColor = Colors.white;
  static const blackColor = Colors.black;
  static const tileColor = Color.fromARGB(255, 166, 212, 250);
  static const greyColor = Colors.grey;
  static const redColor = Colors.red;

  // divider
  static const divider = Divider(thickness: 2);

  // Screen Navigation
  void nextScreen(context, page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  void screenReplacement(context, page) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  // snackbar
  void showSnackbar(context, String text) {
    final snackbar = SnackBar(
      content: Text(text),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
