import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class DialogComponents extends StatefulWidget {
  const DialogComponents({super.key});

  @override
  State<DialogComponents> createState() => _DialogComponentsState();
}

class _DialogComponentsState extends State<DialogComponents> {
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
              text: 'Dialog Components',
              typography: CoffeeTypography.title,
            ),
            const SizedBox(
              height: 20,
            ),
            CoffeeButton(
              label: 'show()',
              onPressed: () =>
                  CoffeeDialogUnicorn(title: 'DialogUnicorn show').show(
                context,
                AssetsUnicorn.alegre,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CoffeeButton(
              label: 'success()',
              onPressed: () =>
                  CoffeeDialogUnicorn(title: 'DialogUnicorn sucess')
                      .sucess(context),
            ),
            const SizedBox(
              height: 10,
            ),
            CoffeeButton(
              label: 'error()',
              onPressed: () => CoffeeDialogUnicorn(
                title: 'DialogUnicorn error',
                description: 'Erro',
              ).error(context),
            ),
            const SizedBox(
              height: 10,
            ),
            CoffeeButton(
              label: 'warning()',
              onPressed: () =>
                  CoffeeDialogUnicorn(title: 'DialogUnicorn warning')
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
