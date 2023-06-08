import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class RandomComponents extends StatefulWidget {
  const RandomComponents({super.key});

  @override
  State<RandomComponents> createState() => _RandomComponentsState();
}

class _RandomComponentsState extends State<RandomComponents> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            CoffeeText(
              text: 'Random Components',
              typography: CoffeeTypography.title,
            ),
            const SizedBox(
              height: 20,
            ),
            CoffeeText(
              text: 'Coffee Rating',
            ),
            const SizedBox(
              height: 10,
            ),
            CoffeeRating(onRatingUpdate: (_) {}),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
