import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class ButtonComponents extends StatefulWidget {
  const ButtonComponents({super.key});

  @override
  State<ButtonComponents> createState() => _ButtonComponentsState();
}

class _ButtonComponentsState extends State<ButtonComponents> {
  bool v = false;
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
              text: 'Button Components',
              typography: CoffeeTypography.title,
            ),
            const SizedBox(
              height: 20,
            ),
            CoffeeButton(
              label: 'CoffeButton',
              onPress: () => print('CoffeButton'),
            ),
            const SizedBox(
              height: 10,
            ),
            CoffeeButtonText(
              text: 'CoffeeButtonText',
              onPressed: () => print('CoffeeButtonText'),
            ),
            CoffeeSwitchButton(
              value: v,
              onChanged: (value) {
                print('CoffeSwitchButton: ${value ? 'on' : 'off'}');
                setState(() {
                  v = value;
                });
              },
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
