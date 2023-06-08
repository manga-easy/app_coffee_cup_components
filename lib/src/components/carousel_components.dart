import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class CarouselComponents extends StatefulWidget {
  const CarouselComponents({super.key});

  @override
  State<CarouselComponents> createState() => _CarouselComponentsState();
}

class _CarouselComponentsState extends State<CarouselComponents> {
  bool v = false;
  @override
  Widget build(BuildContext context) {
    return Card(
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
