import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class CoffeeButtonComponent extends StatefulWidget {
  const CoffeeButtonComponent({super.key});

  @override
  State<CoffeeButtonComponent> createState() => _CoffeeButtonComponentState();
}

class _CoffeeButtonComponentState extends State<CoffeeButtonComponent> {
  bool v = false;
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
              text: 'Button Components',
              typography: CoffeeTypography.title,
            ),
            const SizedBox(
              height: 20,
            ),
            CoffeeButton(
              label: 'CoffeeButton',
              onPressed: () => print('CoffeeButton'),
            ),
            const SizedBox(
              height: 10,
            ),
            CoffeeButtonText(
              text: 'CoffeeButtonText',
              onPressed: () => print('CoffeeButtonText'),
            ),
            const SizedBox(
              height: 10,
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
              height: 10,
            ),
            CoffeeIconButton(
              onTap: () => print('CoffeeIconButton'),
              icon: Icons.check_circle,
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
