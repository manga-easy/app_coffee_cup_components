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

class ComponentsPageDesktop extends StatefulWidget {
  const ComponentsPageDesktop({super.key});

  @override
  State<ComponentsPageDesktop> createState() => _ComponentsPageDesktopState();
}

class _ComponentsPageDesktopState extends State<ComponentsPageDesktop> {
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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CoffeeTextComponent(),
                    const SizedBox(
                      height: 20,
                    ),
                    CoffeeButtonComponent(),
                    const SizedBox(
                      height: 20,
                    ),
                    CoffeeFieldComponent()
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            SingleChildScrollView(
              child: SizedBox(width: 300, child: CoffeeCarouselComponent()),
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 300,
              child: SingleChildScrollView(
                child: CoffeeContainer(
                  child: Column(
                    children: [
                      CoffeeText(
                        text: 'Advanced Search',
                        typography: CoffeeTypography.title,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AdvancedSearchField(
                        controller: advancedEC,
                        list: resultSearch,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CoffeeRandomComponent(),
                    const SizedBox(
                      height: 20,
                    ),
                    CoffeeDialogComponent()
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 400,
              child: SingleChildScrollView(child: CoffeeImageComponent()),
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 400,
              child: SingleChildScrollView(child: CoffeePagesComponent()),
            ),
          ],
        ),
      ),
    );
  }
}
