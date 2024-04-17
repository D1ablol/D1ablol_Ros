import 'package:flutter/material.dart';

import './constants.dart';

ThemeData basicTheme() => ThemeData(
      brightness: Brightness.dark,
      primaryColor: kPrimaryColor,

      textTheme: TextTheme(
        titleLarge: const TextStyle(
          fontFamily: FontNameTitle,
          fontSize: MediumTextSize,
          color: Colors.purple,
        ),
        headlineMedium: TextStyle(
          fontFamily: FontNameDefault,
          fontSize: MediumTextSize,
          fontWeight: FontWeight.w800,
          color: kSecondaryColor,
        ),
        bodyLarge: const TextStyle(
          fontFamily: FontNameDefault,
          fontSize: BodyTextSize,
          color: Colors.green,
        ),
      ),

      iconTheme: const IconThemeData(
        size: 25.0,
        color: Colors.blue,
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.red,
        foregroundColor: Colors.purple,
      ),

      buttonTheme: const ButtonThemeData(
        height: 80,
        buttonColor: Colors.deepPurple,
        textTheme: ButtonTextTheme.accent,
      ),

    );
