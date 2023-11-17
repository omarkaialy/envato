import 'package:envato/auth/sign_in_screen.dart';
import 'package:envato/constants/assets.dart';
import 'package:envato/onboard/onboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    Future.delayed(const Duration(seconds: 4), () async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final isFirst = prefs.getBool('firstTime');
      if (isFirst != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignInScreen(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Onboard(),
          ),
        );
      }
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            Assets.assetsImagesLogo,
            width: .5 * MediaQuery.sizeOf(context).width,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
