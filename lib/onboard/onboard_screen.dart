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
    // TODO: implement initState
    super.initState();
  }

  final List<Widget> _pages = [
    Image.asset('assets/images/on_board2.png'),
    Image.asset('assets/images/on_board1.png'),
    Image.asset('assets/images/on_board1.png'),
  ];
  final List<String> text = [
    'Quickly search about type healthy foods to yongest',
    'with one click you can add every ingredient for a recipe to your',
    'Tailor your recipes feed exactly how you like it',
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
                GestureDetector(
                    onTap: () {
                      if (index < _pages.length) {
                        setState(() {
                          index += 1;
                        });
                      }
                    },
                    child: _pages[index]),
                const Padding(padding: EdgeInsets.only(bottom: 50)),
                Text(
                  text[index],
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
