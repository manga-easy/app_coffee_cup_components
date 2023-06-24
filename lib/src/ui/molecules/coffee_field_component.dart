import 'package:coffee_cup/coffe_cup.dart';
import 'package:coffee_cup/features/fields/new_coffe_search_field.dart';
import 'package:flutter/material.dart';

class CoffeeFieldComponent extends StatefulWidget {
  const CoffeeFieldComponent({super.key});

  @override
  State<CoffeeFieldComponent> createState() => _CoffeeFieldComponentState();
}

class _CoffeeFieldComponentState extends State<CoffeeFieldComponent> {
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
              height: 10,
            ),
            NewCoffeeSearchField(hintText: 'Pesquise seus mangás favoritos'),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}