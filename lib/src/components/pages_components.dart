import 'dart:async';

import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class PagesComponents extends StatefulWidget {
  const PagesComponents({super.key});

  @override
  State<PagesComponents> createState() => _PagesComponentsState();
}

class _PagesComponentsState extends State<PagesComponents> {
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
              text: 'Pages Components',
              typography: CoffeeTypography.title,
            ),
            const SizedBox(
              height: 20,
            ),
            CoffeeText(
              text: 'Unicorn Page',
            ),
            SizedBox(
              height: 700,
              width: 300,
              child: UnicornPage(
                unicorn: AssetsUnicorn.manutencao,
                body: 'body',
                title: 'title',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CoffeeText(
              text: 'Loading Page',
            ),
            SizedBox(
              height: 400,
              child: LoadingPage(animationValue: loadingValue),
            ),
            CoffeeButton(label: 'Reset loading', onPress: () => resetLoading()),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
