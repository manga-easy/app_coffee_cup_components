import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class CoffeeCarouselComponent extends StatefulWidget {
  const CoffeeCarouselComponent({super.key});

  @override
  State<CoffeeCarouselComponent> createState() => _CoffeeCarouselComponentState();
}

class _CoffeeCarouselComponentState extends State<CoffeeCarouselComponent> {
  bool v = false;
  @override
  Widget build(BuildContext context) {
    return CoffeeContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          CoffeeText(
            text: 'Carousel Components',
            typography: CoffeeTypography.title,
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              CoffeeText(text: 'CoffeBanner'),
              SizedBox(
                height: 160,
                width: 100,
                child: CoffeeBanner(
                  link:
                      'https://static.wikia.nocookie.net/onepiece/images/0/0e/Volume_1.png/revision/latest?cb=20140106204057&path-prefix=pt',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              CoffeeText(text: 'CoffeeCarousel'),
              SizedBox(
                height: 160,
                width: 100,
                child: CoffeeCarousel(
                  items: <CarouselDTO>[
                    CarouselDTO(
                      link: '',
                      image:
                          'https://static.wikia.nocookie.net/onepiece/images/0/0e/Volume_1.png/revision/latest?cb=20140106204057&path-prefix=pt',
                    ),
                    CarouselDTO(
                      link: '',
                      image:
                          'https://static.wikia.nocookie.net/onepiece/images/0/0e/Volume_1.png/revision/latest?cb=20140106204057&path-prefix=pt',
                    ),
                  ],
                  onTap: (CarouselDTO i) {},
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
