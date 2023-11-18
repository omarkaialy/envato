import 'package:envato/recipe/model/recipe.dart';
import 'package:flutter/material.dart';

import 'components/recipe_widget.dart';

void main() {
  runApp(const RecipeScreen());
}

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({super.key});

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  final List<Recipe> list = [
    Recipe(image: 'assets/images/logo.png', title: 'Shawarma', desciption: 'desciption'),
    Recipe(image: 'assets/images/on_board2.png', title: 'Shawarma', desciption: 'desciption'),
    Recipe(image: 'assets/images/on_board1.png', title: 'Shawarma', desciption: 'desciption'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ListView.builder(
            itemCount: list.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => RecipeWidget(
              title: list[index].title,
              image: list[index].image,
              description: list[index].desciption,
            ),
          ),
        ));
  }
}
