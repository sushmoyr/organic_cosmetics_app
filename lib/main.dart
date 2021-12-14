import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:organic_cosmetics_app/screens/splash_screen.dart';
import 'package:organic_cosmetics_app/utils/palatte.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Palette.lightGreen,
          textTheme: GoogleFonts.openSansTextTheme()),
      home: const SplashScreen(),
    );
  }
}
