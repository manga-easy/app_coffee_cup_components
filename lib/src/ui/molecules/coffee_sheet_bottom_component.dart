import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class CoffeeSheetBottomComponent extends StatelessWidget {
  const CoffeeSheetBottomComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return CoffeeContainer(
      child: Column(
        children: [
          CoffeeText(
            text: 'Sheet Bottom',
            typography: CoffeeTypography.title,
          ),
          SizedBox(height: 20),
          CoffeeButton(
            label: 'Clique aqui para abrir o Sheet',
            onPressed: () => CoffeeSheetBottom(
              title: CoffeeText(
                text: 'Titulo',
                typography: CoffeeTypography.title,
              ),
              body: CoffeeText(text: 'Corpo do sheet'),
              button: CoffeeButton(
                label: 'Voltar',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ).show(context)
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
