import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight * .87,
            width: screenWidth,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.051),
                      blurRadius: 30,
                      spreadRadius: 0,
                      offset: const Offset(0, 5))
                ]),
          ),
          TextButton(onPressed: () {}, child: const Text("CREATE ACOUNT"))
        ],
      ),
    );
  }
}
