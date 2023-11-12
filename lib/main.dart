import 'package:envato/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:envato/recipe/recipe_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
