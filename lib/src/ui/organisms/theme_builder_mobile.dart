import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class ThemeBuilderMobile extends StatefulWidget {
  const ThemeBuilderMobile({super.key});

  @override
  State<ThemeBuilderMobile> createState() => _ThemeBuilderMobileState();
}

class _ThemeBuilderMobileState extends State<ThemeBuilderMobile> {
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * .8,
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
            const SizedBox(
              height: 10,
            ),
            CoffeeButton(
              label: 'backgroundColor',
              onPressed: () {},
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
