import 'package:envato/auth/components/my_button.dart';
import 'package:envato/auth/components/my_text_button.dart';
import 'package:envato/home/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/widgets/main_text_field.dart';

// ignore: must_be_immutable
class CreateAcountScreen extends StatefulWidget {
  const CreateAcountScreen({super.key});

  @override
  State<CreateAcountScreen> createState() => _CreateAcountScreenState();
}

class _CreateAcountScreenState extends State<CreateAcountScreen> {
  TextEditingController fullnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordnameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  height: screenHeight * 0.85,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(25)),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(.051), blurRadius: 30, spreadRadius: 0, offset: const Offset(0, 5))]),
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
                            style: TextStyle(color: Color(0xff7BED8D), fontFamily: "Inter", fontSize: 24, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: screenHeight * 0.14,
                          ),
                          MainTextField(
                            controller: fullnameController,
                            validator: (name) {
                              if (!(name != null && name.length >= 3)) {
                                return 'Enter your Name';
                              }
                              return null;
                            },
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
                            validator: (email) {
                              if (email != null &&
                                  RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                                    caseSensitive: false,
                                  ).hasMatch(email)) {
                                return null;
                              } else {
                                return "Add  valid email ";
                              }
                            },
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
                            validator: (p0) {
                              if (p0!.isEmpty) {
                                return "Enter a vaild password";
                              } else if (p0.length < 6) {
                                return "Your password is too short";
                              }
                              return null;
                            },
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
                            counterText: '',
                            isPassword: false,
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(
                            height: screenHeight * .12,
                          ),
                          MyButton(
                              width: screenWidth,
                              height: screenHeight,
                              buttonText: isLoading ? 'Loading...' : "CREAT ACCOUNT",
                              onPress: () async {
                                if (!isLoading && formKey.currentState!.validate()) {
                                  try {
                                    setState(() {
                                      isLoading = true;
                                    });
                                    final user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                      email: emailController.text,
                                      password: passwordnameController.text,
                                    );

                                    final SharedPreferences prefs = await SharedPreferences.getInstance();
                                    await prefs.setString('user', user.toString());
                                    setState(() {
                                      isLoading = false;
                                    });

                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                      return const HomeScreen();
                                    }));
                                  } on FirebaseAuthException catch (e) {
                                    setState(() {
                                      isLoading = false;
                                    });
                                    if (e.code == 'weak-password') {
                                      print('The password provided is too weak.');
                                    } else if (e.code == 'email-already-in-use') {
                                      print('The account already exists for that email.');
                                    }
                                  } catch (e) {
                                    setState(() {
                                      isLoading = false;
                                    });
                                    print(e);
                                  }
                                }
                              })
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * .03,
                ),
                MyTextButton(buttonText: "SING IN", onPress: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
