import 'package:flutter/material.dart';

ThemeData basicTheme() => ThemeData(
      hintColor: Colors.white,
      buttonTheme: const ButtonThemeData(
        buttonColor: Color.fromARGB(255, 64, 0, 148),
        textTheme: ButtonTextTheme.accent,
      ),
    );
