import 'package:flutter/material.dart';

class RecipeWidget extends StatelessWidget {
  const RecipeWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);
  final String title;

  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        height: 275,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blueGrey),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 20),
              child: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, bottom: 20),
              child: Text(
                description,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
