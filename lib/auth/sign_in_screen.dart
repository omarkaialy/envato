import 'package:envato/auth/components/my_button.dart';
import 'package:envato/auth/components/my_text_button.dart';
import 'package:envato/auth/creat_account_screen.dart';
import 'package:envato/constants/widgets/main_text_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * .08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: screenHeight * .18,
                    ),
                    const Text(
                      "Sign In",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff7BED8D),
                          fontFamily: "Inter",
                          fontSize: 24,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: screenHeight * .14,
                    ),
                    MainTextField(
                      controller: emailController,
                      height: screenHeight * .07,
                      fillColor: const Color(0xffF0F4F8),
                      borderColor: Colors.transparent,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Image.asset(
                          "assets/images/icon-mail.png",
                        ),
                      ),
                      hint: "Email",
                      hintColor: const Color(0xffA6BCD0),
                    ),
                    SizedBox(
                      height: screenHeight * .02,
                    ),
                    MainTextField(
                      controller: emailController,
                      height: screenHeight * .07,
                      fillColor: const Color(0xffF0F4F8),
                      borderColor: Colors.transparent,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          "assets/images/icon-padlock.png",
                        ),
                      ),
                      hint: "Password",
                      hintColor: const Color(0xffA6BCD0),
                    ),
                    SizedBox(
                      height: screenHeight * .015,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Color(0xffA6BCD0),
                              fontFamily: "Inter",
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        )),
                    SizedBox(
                      height: screenHeight * .16,
                    ),
                    MyButton(
                        width: screenWidth,
                        height: screenHeight,
                        buttonText: "SIGN IN",
                        onPress: () {})
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * .03,
            ),
           MyTextButton(
            buttonText: "CREATE ACOUNT", 
            onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateAcountScreen()));
                },)
          ],
        ),
      ),
    );
  }
}
