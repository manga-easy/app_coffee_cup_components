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
              text: 'Images',
              typography: CoffeeTypography.title,
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                CoffeeText(
                  text: 'Cats',
                  typography: CoffeeTypography.title,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CoffeeImage.cats(AssetsCats.beingKnockedDown),
                      CoffeeImage.cats(AssetsCats.hugging),
                      CoffeeImage.cats(AssetsCats.runningAfterHeart),
                      CoffeeImage.cats(AssetsCats.runningCircle),
                      CoffeeImage.cats(AssetsCats.smart),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                CoffeeText(
                  text: 'Horns',
                  typography: CoffeeTypography.title,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CoffeeImage.horn(AssetsHorn.hornAzul),
                      CoffeeImage.horn(AssetsHorn.hornCinza),
                      CoffeeImage.horn(AssetsHorn.hornDourado),
                      CoffeeImage.horn(AssetsHorn.hornRoxo),
                      CoffeeImage.horn(AssetsHorn.hornVerde),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                CoffeeText(
                  text: 'Unicorns',
                  typography: CoffeeTypography.title,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CoffeeImage.unicorn(AssetsUnicorn.alegre),
                      CoffeeImage.unicorn(AssetsUnicorn.coffee),
                      CoffeeImage.unicorn(AssetsUnicorn.fire),
                      CoffeeImage.unicorn(AssetsUnicorn.lendo),
                      CoffeeImage.unicorn(AssetsUnicorn.manutencao),
                      CoffeeImage.unicorn(AssetsUnicorn.sad),
                    ],
                  ),
                ),
              ],
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
