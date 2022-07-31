import 'package:flutter/material.dart';

import '../main.dart';

class Utils {
  static showSnackBar(String? text) {
    if (text == null) return;
    final snackBar = SnackBar(
        content: Text('$text'),
        backgroundColor: Color.fromRGBO(255, 182, 0, 1.0));
    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
