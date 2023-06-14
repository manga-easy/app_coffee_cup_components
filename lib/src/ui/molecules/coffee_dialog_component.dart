import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class CoffeeDialogComponent extends StatefulWidget {
  const CoffeeDialogComponent({super.key});

  @override
  State<CoffeeDialogComponent> createState() => _CoffeeDialogComponentState();
}

class _CoffeeDialogComponentState extends State<CoffeeDialogComponent> {
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
