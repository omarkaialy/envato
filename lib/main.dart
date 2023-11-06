import 'package:envato/auth/sign_in_screen.dart';
//import 'package:envato/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignInScreen(),
      //SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
