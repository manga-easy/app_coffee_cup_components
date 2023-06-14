import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class FieldComponents extends StatefulWidget {
  const FieldComponents({super.key});

  @override
  State<FieldComponents> createState() => _FieldComponentsState();
}

class _FieldComponentsState extends State<FieldComponents> {
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
              text: 'Field Components',
              typography: CoffeeTypography.title,
            ),
            const SizedBox(
              height: 20,
            ),
            CoffeeField(
              initText: 'Initial text',
            ),
            const SizedBox(
              height: 10,
            ),
            CoffeeSearchField(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
