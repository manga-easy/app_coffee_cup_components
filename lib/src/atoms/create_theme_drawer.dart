import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class CreateThemeDrawer extends StatefulWidget {
  const CreateThemeDrawer({super.key});

  @override
  State<CreateThemeDrawer> createState() => _CreateThemeDrawerState();
}

class _CreateThemeDrawerState extends State<CreateThemeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 8),
        child: Column(
          children: [
            CoffeeText(
              text: 'Manga Easy Theme Builder',
              typography: CoffeeTypography.title,
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(),
            const SizedBox(
              height: 20,
            ),
            Card(
              child: SizedBox(
                width: double.infinity,
                height: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
