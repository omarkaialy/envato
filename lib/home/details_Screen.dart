import 'package:flutter/material.dart';

class detais extends StatelessWidget {
  detais({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 600;
    final ismobile = MediaQuery.of(context).size.width <= 600;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                'Broccoli',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            isDesktop
                ? Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/prokly.jpg',
                      width: 500,
                      height: 500,
                    ),
                  )
                : Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/prokly.jpg',
                      width: 200,
                      height: 200,
                    )),
            Container(
              margin: EdgeInsets.only(top: 40),
              width: MediaQuery.of(context).size.width * 0.7,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Brokoly'),
                    Text(
                      '2 heads',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text('0.80'),
                    Icon(Icons.more_sharp),
                  ]),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Color.fromARGB(255, 56, 240, 62)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_shopping_cart_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'ADD TO CART',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.only(left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                        color: Color.fromARGB(255, 56, 240, 62), fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Brocoli is a not lovely green crucitous vegetable. its healthy.not delicious',
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Storage',
                    style: TextStyle(color: Color.fromARGB(255, 56, 240, 62)),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'For maximum freshness keep fresh',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Origin',
                      style:
                          TextStyle(color: Color.fromARGB(255, 56, 240, 62))),
                  SizedBox(height: 20),
                  Text(
                    'Produce of united kingdom,repunlic of irland germany italy, nethrland',
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Preparation & Usage',
                      style:
                          TextStyle(color: Color.fromARGB(255, 56, 240, 62))),
                  SizedBox(height: 20),
                  Text('wash before use'),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Nurtrional Information',
                      style:
                          TextStyle(color: Color.fromARGB(255, 56, 240, 62))),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text('serving'),
                      SizedBox(
                        width: 280,
                      ),
                      Text(
                        '250g',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text('calories'),
                      SizedBox(
                        width: 280,
                      ),
                      Text('250g')
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text('calories'),
                      SizedBox(
                        width: 280,
                      ),
                      Text('250g')
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
