import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class ImageComponents extends StatefulWidget {
  const ImageComponents({super.key});

  @override
  State<ImageComponents> createState() => _ImageComponentsState();
}

class _ImageComponentsState extends State<ImageComponents> {
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
              text: 'Dialog Components',
              typography: CoffeeTypography.title,
            ),
            const SizedBox(
              height: 20,
            ),
            CoffeeButton(
              label: 'show()',
              onPress: () => CoffeeDialogUnicorn(title: 'DialogUnicorn show')
                  .show(context),
            ),
            const SizedBox(
              height: 10,
            ),
            CoffeeButton(
              label: 'success()',
              onPress: () => CoffeeDialogUnicorn(title: 'DialogUnicorn sucess')
                  .sucess(context),
            ),
            const SizedBox(
              height: 10,
            ),
            CoffeeButton(
              label: 'error()',
              onPress: () => CoffeeDialogUnicorn(
                title: 'DialogUnicorn error',
                middleText: 'Erro',
              ).error(context),
            ),
            const SizedBox(
              height: 10,
            ),
            CoffeeButton(
              label: 'warning()',
              onPress: () => CoffeeDialogUnicorn(title: 'DialogUnicorn warning')
                  .warning(context),
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
