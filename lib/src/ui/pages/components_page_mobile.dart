import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_components/src/ui/molecules/advanced_search_field.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_button_component.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_carousel_component.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_dialog_component.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_field_component.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_image_component.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_pages_component.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_random_component.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_text_component.dart';

class ComponentsPageMobile extends StatefulWidget {
  const ComponentsPageMobile({super.key});

  @override
  State<ComponentsPageMobile> createState() => _ComponentsPageMobileState();
}

class _ComponentsPageMobileState extends State<ComponentsPageMobile> {
  final advancedEC = TextEditingController();
  List<String> resultSearch = [
    'One 1',
    'One 2',
    'One 3',
    'One 4',
    'One 5',
    'One 6',
    'One 7',
    'One 8',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CoffeeTextComponent(),
          const SizedBox(
            height: 20,
          ),
          CoffeeButtonComponent(),
          const SizedBox(
            height: 20,
          ),
          CoffeeCarouselComponent(),
          const SizedBox(
            height: 20,
          ),
          CoffeeFieldComponent(),
          const SizedBox(
            height: 20,
          ),
          CoffeeDialogComponent(),
          const SizedBox(
            height: 20,
          ),
          CoffeePagesComponent(),
          const SizedBox(
            height: 20,
          ),
          CoffeeRandomComponent(),
          const SizedBox(
            height: 20,
          ),
          CoffeeContainer(
            child: Column(
              children: [
                CoffeeText(
                  text: 'Advanced Search',
                  typography: CoffeeTypography.title,
                ),
                const SizedBox(
                  height: 10,
                ),
                AdvancedSearchField(controller: advancedEC, list: resultSearch),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CoffeeImageComponent(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
