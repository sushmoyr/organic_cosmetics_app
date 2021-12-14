import 'package:flutter/material.dart';

class Palette{
  static const MaterialColor lightGreen = MaterialColor(_lightGreenPrimaryValue, <int, Color>{
    50: Color(0xFFEBF3E7),
    100: Color(0xFFCDE0C3),
    200: Color(0xFFACCC9B),
    300: Color(0xFF8AB773),
    400: Color(0xFF71A755),
    500: Color(_lightGreenPrimaryValue),
    600: Color(0xFF509031),
    700: Color(0xFF47852A),
    800: Color(0xFF3D7B23),
    900: Color(0xFF2D6A16),
  });

  static const int _lightGreenPrimaryValue = 0xFF589837;

  static const MaterialColor lightgreenAccent = MaterialColor(_lightGreenAccentValue, <int, Color>{
    100: Color(0xFFB9FFA2),
    200: Color(_lightGreenAccentValue),
    400: Color(0xFF6BFF3C),
    700: Color(0xFF58FF23),
  });

  static const int _lightGreenAccentValue = 0xFF92FF6F;

  static const MaterialColor darkGreen = MaterialColor(_darkGreenPrimaryValue, <int, Color>{
    50: Color(0xFFE7ECE6),
    100: Color(0xFFC2D1C1),
    200: Color(0xFF9AB298),
    300: Color(0xFF72936F),
    400: Color(0xFF537B50),
    500: Color(_darkGreenPrimaryValue),
    600: Color(0xFF305C2C),
    700: Color(0xFF285225),
    800: Color(0xFF22481F),
    900: Color(0xFF163613),
  });

  static const int _darkGreenPrimaryValue = 0xFF356431;

  static const MaterialColor darkGreenAccent = MaterialColor(_darkGreenAccentValue, <int, Color>{
    100: Color(0xFF7EFF75),
    200: Color(_darkGreenAccentValue),
    400: Color(0xFF1FFF0F),
    700: Color(0xFF10F500),
  });
  static const int _darkGreenAccentValue = 0xFF4FFF42;
}

