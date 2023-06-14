import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class CoffeeRandomComponent extends StatefulWidget {
  const CoffeeRandomComponent({super.key});

  @override
  State<CoffeeRandomComponent> createState() => _CoffeeRandomComponentState();
}

class _CoffeeRandomComponentState extends State<CoffeeRandomComponent> {
  @override
  Widget build(BuildContext context) {
    return CoffeeContainer(
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
