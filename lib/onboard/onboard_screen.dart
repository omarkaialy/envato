import 'package:envato/onboard/component/slide.dart';
import 'package:envato/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  late int index;

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  final List<Slide> slides = [
    Slide(
      image: 'assets/images/on_board2.png',
      text: 'Quickly search about type healthy foods to yongest',
    ),
    Slide(
      image: 'assets/images/on_board1.png',
      text: 'with one click you can add every ingredient for a recipe to your',
    ),
    Slide(
      image: 'assets/images/on_board1.png',
      text: 'Tailor your recipes feed exactly how you like it',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * .8,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: .1 * MediaQuery.sizeOf(context).height,
                ),
                GestureDetector(
                    onTap: () {
                      if (index == (slides.length - 1)) {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return const SplashScreen();
                        }));
                      } else {
                        setState(() {
                          index++;
                        });
                      }
                    },
                    child: Image.asset(slides[index].image)),
                const Padding(padding: EdgeInsets.only(bottom: 50)),
                Text(
                  slides[index].text,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
