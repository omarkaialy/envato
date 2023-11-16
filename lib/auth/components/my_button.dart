import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  MyButton(
      {super.key,
      required this.width,
      required this.height,
      required this.buttonText,
      required this.onPress,
    });
  double width;
  double height;
  String buttonText;
  Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff7BED8D),
            padding: const EdgeInsets.all(10),
            elevation: 0,
            fixedSize: Size(width, height * .07),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.arrow_forward, size: 18),
            const SizedBox(width: 5,),
            Text(
              buttonText,
              style:
                  const TextStyle(fontFamily: "Inter", fontWeight: FontWeight.w700),
            )
          ],
        ));
  }
}
