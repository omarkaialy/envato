import 'package:envato/auth/components/my_button.dart';
import 'package:envato/auth/components/my_text_button.dart';
import 'package:envato/auth/creat_account_screen.dart';
import 'package:envato/constants/widgets/main_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                height: screenHeight * .87,
                width: screenWidth,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(bottom: Radius.circular(25)),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(.051), blurRadius: 30, spreadRadius: 0, offset: const Offset(0, 5))]),
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
                        style: TextStyle(color: Color(0xff7BED8D), fontFamily: "Inter", fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: screenHeight * .14,
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
                        controller: passwordController,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return "Enter a vaild password";
                          } else if (p0.length != 6) {
                            return "Your password is too short";
                          }
                          return null;
                        },
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
                        maxlength: 6,
                        counterText: '',
                        isPassword: false,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        height: screenHeight * .015,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(color: Color(0xffA6BCD0), fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w400),
                          )),
                      SizedBox(
                        height: screenHeight * .16,
                      ),
                      MyButton(
                          width: screenWidth,
                          height: screenHeight,
                          buttonText: "SIGN IN",
                          onPress: () async {
                            if (formKey.currentState!.validate()) {
                              try {
                                setState(() {
                                  isLoading = true;
                                });
                                final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text,
                                );

                                final SharedPreferences prefs = await SharedPreferences.getInstance();
                                await prefs.setString('user', user.toString());
                                setState(() {
                                  isLoading = false;
                                });

// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return HomeScreen();}));
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
              SizedBox(
                height: screenHeight * .03,
              ),
              MyTextButton(
                buttonText: "CREATE ACOUNT",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAcountScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
