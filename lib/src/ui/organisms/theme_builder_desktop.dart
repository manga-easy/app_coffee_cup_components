import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class ThemeBuilderDesktop extends StatefulWidget {
  const ThemeBuilderDesktop({
    super.key,
  });

  @override
  State<ThemeBuilderDesktop> createState() => _ThemeBuilderDesktopState();
}

class _ThemeBuilderDesktopState extends State<ThemeBuilderDesktop> {
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 350,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 28),
          child: Column(
            children: [
              CoffeeText(
                text: 'Manga Easy Theme Builder',
                typography: CoffeeTypography.title,
              ),
              const SizedBox(
                height: 20,
              ),
              CoffeeText(
                text: 'Tap parameters below to change your current theme:',
              ),
              const SizedBox(
                height: 5,
              ),
              CoffeeContainer(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 160,
                  width: 250,
                  child: Column(
                    children: [
                      CoffeeButton(
                        label: 'backgroundColor',
                     
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CoffeeButton(
                        label: 'backgroundIcon',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CoffeeButton(
                        label: 'backgroundText',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CoffeeButton(
                        label: 'primaryText',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CoffeeButton(
                        label: 'primaryColor',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CoffeeButton(
                        label: 'selectColor',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CoffeeButton(
                        label: 'selectText',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
