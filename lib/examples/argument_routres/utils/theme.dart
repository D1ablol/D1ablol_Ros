import 'package:flutter/material.dart';

ThemeData basicTheme() => ThemeData(
      hintColor: Colors.white,
      buttonTheme: const ButtonThemeData(
        buttonColor: Color.fromARGB(255, 25, 219, 210),
        textTheme: ButtonTextTheme.accent,
      ),
    );
