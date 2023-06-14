import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class CoffeeTextComponent extends StatefulWidget {
  const CoffeeTextComponent({super.key});

  @override
  State<CoffeeTextComponent> createState() => _CoffeeTextComponentState();
}

class _CoffeeTextComponentState extends State<CoffeeTextComponent> {
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
              text: 'Text Components',
              typography: CoffeeTypography.title,
            ),
            const SizedBox(
              height: 20,
            ),
            CoffeeText(
              text: 'CoffeeText title',
              typography: CoffeeTypography.title,
            ),
            const SizedBox(
              height: 10,
            ),
            CoffeeText(
              text: 'CoffeeText button',
              typography: CoffeeTypography.button,
            ),
            const SizedBox(
              height: 10,
            ),
            CoffeeText(
              text: 'CoffeeText body',
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
