import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextButton extends StatelessWidget {
   MyTextButton({
    super.key,
    required this.buttonText,
    required this.onPress,
    });
  String buttonText;
  Function() onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
                onPressed: onPress,
                child:  Text(
                  buttonText,
                  style: const TextStyle(
                      color: Color(0xffA6BCD0),
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700),
                ));
  }
}