import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_button_component.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_carousel_component.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_dialog_component.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_field_component.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_image_component.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_pages_component.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_random_component.dart';
import 'package:manga_easy_components/src/ui/molecules/coffee_text_component.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class ComponentsPageMobile extends StatefulWidget {
  const ComponentsPageMobile({super.key});

  @override
  State<ComponentsPageMobile> createState() => _ComponentsPageMobileState();
}

class _ComponentsPageMobileState extends State<ComponentsPageMobile> {
  final advancedEC = TextEditingController();
  String advancedHintText = 'Pesquise seus mangás favoritos';
  List<String> resultSearch = [
    'One Piece',
    'One Punch Man',
    'One',
    'One 2',
    'One 3'
  ];
  bool tappad = false;
  bool history = false;

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
                AnimatedContainer(
                  duration: Duration(milliseconds: 150),
                  decoration: BoxDecoration(
                    color: ThemeService.of.selectColor,
                    borderRadius: ThemeService.of.borderRadius,
                  ),
                  alignment: Alignment.topCenter,
                  height: tappad ? (resultSearch.length * 68) : 48,
                  child: Column(
                    children: [
                      NewCoffeeSearchField(
                        hintText: advancedHintText,
                        onTap: () {
                          setState(() {
                            advancedHintText = '';
                            tappad = true;
                          });
                        },
                        onTapOutside: (_) {
                          advancedHintText = 'Pesquise seus mangás favoritos';
                          setState(() {
                            tappad = false;
                          });
                        },
                        controller: advancedEC,
                      ),
                      tappad
                          ? Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: SizedBox(
                                height: resultSearch.length * 40,
                                child: ListView.builder(
                                  itemCount: resultSearch.length,
                                  itemBuilder: (context, index) => Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          CoffeeIconButton(
                                            onTap: () {},
                                            size: 24,
                                            icon: Icons.refresh,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          CoffeeText(
                                            text: resultSearch[index],
                                          ),
                                        ],
                                      ),
                                      CoffeeIconButton(
                                        onTap: () {},
                                        size: 24,
                                        icon: Icons.delete,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : SizedBox.shrink(),
                    ],
                  ),
                ),
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
