import 'package:flutter/material.dart';
import 'package:manga_easy_components/src/components/button_components.dart';
import 'package:manga_easy_components/src/components/carousel_components.dart';
import 'package:manga_easy_components/src/components/dialog_components.dart';
import 'package:manga_easy_components/src/components/field_components.dart';
import 'package:manga_easy_components/src/components/pages_components.dart';
import 'package:manga_easy_components/src/components/random_components.dart';
import 'package:manga_easy_components/src/components/text_components.dart';

class ComponentsPageDesktop extends StatefulWidget {
  const ComponentsPageDesktop({super.key});

  @override
  State<ComponentsPageDesktop> createState() => _ComponentsPageDesktopState();
}

class _ComponentsPageDesktopState extends State<ComponentsPageDesktop> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SingleChildScrollView(
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextComponents(),
                  ButtonComponents(),
                  FieldComponents()
                ],
              ),
            ),
          ),
          SizedBox(width: 300, child: CarouselComponents()),
          // Divider(),
          SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RandomComponents(),
                DialogComponents(),
              ],
            ),
          ),
          // Divider(),
          SizedBox(
            width: 400,
            child: SingleChildScrollView(child: PagesComponents()),
          ),
        ],
      ),
    );
  }
}
