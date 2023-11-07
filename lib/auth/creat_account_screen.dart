import 'package:flutter/material.dart';

import '../constants/widgets/main_text_field.dart';

class CreateAcountScreen extends StatelessWidget {
  CreateAcountScreen({super.key});
  
  TextEditingController emailController = TextEditingController();
TextEditingController fullnameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
       body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.87,
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
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.18,
                    ),
                    const Text(
                      "Create Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff7BED8D),
                          fontFamily: "Inter",
                          fontSize: 24,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: screenHeight * 0.14,
                    ),
                    MainTextField(
                       controller:fullnameController ,
                      height: screenHeight * 0.07,
                      fillColor: const Color(0xffF0F4F8),
                      borderColor: Colors.transparent,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Image.asset(
                          "assets/images/path.png",
                        ),
                      ),
                      hint: "Full Name",
                      hintColor: const Color(0xffA6BCD0),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    MainTextField(
                       controller:  emailController,
                      height: screenHeight * 0.07,
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
                   
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}