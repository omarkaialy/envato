import 'package:envato/auth/sign_in_screen.dart';
import 'package:envato/onboard/component/slide.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                GestureDetector(onTap: () {}, child: Image.asset(slides[index].image)),
                const Padding(padding: EdgeInsets.only(bottom: 50)),
                Text(
                  slides[index].text,
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: index == 0 ? Colors.black : Colors.grey),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(shape: BoxShape.circle, color: index == 1 ? Colors.black : Colors.grey),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: index == 2 ? Colors.black : Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: index == (slides.length - 1)
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () async {
                      final SharedPreferences prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('firstTime', true);

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignInScreen();
                          },
                        ),
                      );
                    },
                    child: const Text('+Get Started'),
                  )
                : TextButton(
                    onPressed: () {
                      setState(() {
                        index++;
                      });
                    },
                    child: const Text('Next')),
          )
        ],
      ),
    );
  }
}
