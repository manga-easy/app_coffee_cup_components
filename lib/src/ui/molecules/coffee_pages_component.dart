import 'dart:async';

import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class CoffeePagesComponent extends StatefulWidget {
  const CoffeePagesComponent({super.key});

  @override
  State<CoffeePagesComponent> createState() => _CoffeePagesComponentState();
}

class _CoffeePagesComponentState extends State<CoffeePagesComponent> {
  double loadingValue = 0.0;
  Stream<double> loading() async* {
    final int seconds = 3;
    final double increment = 1.0 / seconds;

    for (var i = 0; i < seconds; i++) {
      await Future.delayed(Duration(seconds: 1));
      loadingValue += increment;
      yield loadingValue;
    }
  }

  Future<void> startLoading() async {
    await for (var value in loading()) {
      setState(() {
        loadingValue = value;
      });
    }
  }

  void resetLoading() {
    setState(() {
      loadingValue = 0.0;
      startLoading();
    });
  }

  @override
  void initState() {
    super.initState();
    startLoading();
  }

  @override
  Widget build(BuildContext context) {
    print(loadingValue);

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
              text: 'Pages Components',
              typography: CoffeeTypography.title,
            ),
            const SizedBox(
              height: 20,
            ),
            CoffeeText(
              text: 'Unicorn Page',
            ),
            const SizedBox(
              height: 10,
            ),
            CoffeeContainer(
              child: SizedBox(
                height: 600,
                width: 300,
                child: UnicornPage(
                  unicorn: AssetsUnicorn.manutencao,
                  title: 'Title message',
                  body: 'Body message',
                  actionButton: () => print('action'),
                  titleButton: 'action',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CoffeeText(
              text: 'Loading Page',
            ),
            const SizedBox(
              height: 10,
            ),
            CoffeeContainer(
              child: SizedBox(
                height: 600,
                child: LoadingPage(animationValue: loadingValue),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CoffeeIconButton(
              icon: Icons.restart_alt_outlined,
              onTap: () => resetLoading(),
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
