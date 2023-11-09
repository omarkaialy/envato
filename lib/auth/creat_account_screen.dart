import 'package:flutter/material.dart';

import '../constants/widgets/main_text_field.dart';

class CreateAcountScreen extends StatelessWidget {
  CreateAcountScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController passwordnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.85,
                width: screenWidth,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.051),
                          blurRadius: 30,
                          spreadRadius: 0,
                          offset: const Offset(0, 5))
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.79),
                          child: GestureDetector(
                            child: const Icon(
                              Icons.close,
                              size: 30,
                              color: Color(0xffA6BCD0),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.1,
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
                          controller: fullnameController,
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
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
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
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        MainTextField(
                          controller: passwordnameController,
                          height: screenHeight * 0.07,
                          fillColor: const Color(0xffF0F4F8),
                          borderColor: Colors.transparent,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset(
                              "assets/images/icon-padlock.png",
                            ),
                          ),
                          hint: "Password",
                          hintColor: const Color(0xffA6BCD0),
                        ),
                        SizedBox(
                          height: screenHeight * .12,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff7BED8D),
                                padding: const EdgeInsets.all(10),
                                elevation: 0,
                                fixedSize:
                                    Size(screenWidth, screenHeight * .07),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40))),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.arrow_forward, size: 18),
                                Text(
                                  "  CREAT ACCOUNT",
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * .03,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "SING IN",
                    style: TextStyle(
                        color: Color(0xffA6BCD0),
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
