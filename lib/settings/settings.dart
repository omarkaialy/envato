import 'package:flutter/material.dart';

class SETTINGS extends StatelessWidget {
  const SETTINGS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          elevation: 4,
          shadowColor: Colors.grey.shade50,
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          title: const Text(
            'Settings',
            style: TextStyle(color: Color(0xff748a9d), fontSize: 30, fontWeight: FontWeight.normal),
          ),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Container(
                height: 60,
                padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(color: const Color(0xfff0f4f8), borderRadius: BorderRadius.circular(8)),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/path.png',
                      height: 20,
                      color: const Color(0xff7bed8d),
                    ),
                    const SizedBox(width: 18),
                    const Text(
                      'Your Account',
                      style: TextStyle(color: Color(0xff748a9d), fontSize: 20),
                    ),
                    const SizedBox(width: 80),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff748a9d),
                      size: 15,
                    )
                  ],
                )),
            Container(
                height: 60,
                padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(color: const Color(0xfff0f4f8), borderRadius: BorderRadius.circular(8)),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/path.png',
                      height: 20,
                      color: const Color(0xff7bed8d),
                    ),
                    const SizedBox(width: 18),
                    const Text(
                      'Your Orders',
                      style: TextStyle(color: Color(0xff748a9d), fontSize: 20),
                    ),
                    const SizedBox(width: 95),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff748a9d),
                      size: 15,
                    )
                  ],
                )),
            Container(
                height: 60,
                padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(color: const Color(0xfff0f4f8), borderRadius: BorderRadius.circular(8)),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/path.png',
                      height: 20,
                      color: const Color(0xff7bed8d),
                    ),
                    const SizedBox(width: 18),
                    const Text(
                      'Live Chat',
                      style: TextStyle(color: Color(0xff748a9d), fontSize: 20),
                    ),
                    const SizedBox(width: 117),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff748a9d),
                      size: 15,
                    )
                  ],
                )),
            Container(
                height: 60,
                padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(color: const Color(0xfff0f4f8), borderRadius: BorderRadius.circular(8)),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/path.png',
                      height: 20,
                      color: const Color(0xff7bed8d),
                    ),
                    const SizedBox(width: 18),
                    const Text(
                      'Dark Mode',
                      style: TextStyle(color: Color(0xff748a9d), fontSize: 20),
                    ),
                    const SizedBox(width: 102),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff748a9d),
                      size: 15,
                    )
                  ],
                )),
            const SizedBox(height: 100),
            Container(
                height: 60,
                padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(color: const Color(0xfff0f4f8), borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/path.png',
                      height: 20,
                      color: const Color(0xff7bed8d),
                    ),
                    const SizedBox(width: 18),
                    const Text(
                      'Sign Out',
                      style: TextStyle(color: Color(0xff748a9d), fontSize: 20),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
