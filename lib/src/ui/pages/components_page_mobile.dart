import 'package:flutter/material.dart';
import 'package:manga_easy_components/src/ui/molecules/button_components.dart';
import 'package:manga_easy_components/src/ui/molecules/carousel_components.dart';
import 'package:manga_easy_components/src/ui/molecules/dialog_components.dart';
import 'package:manga_easy_components/src/ui/molecules/field_components.dart';
import 'package:manga_easy_components/src/ui/molecules/image_components.dart';
import 'package:manga_easy_components/src/ui/molecules/pages_components.dart';
import 'package:manga_easy_components/src/ui/molecules/random_components.dart';
import 'package:manga_easy_components/src/ui/molecules/text_components.dart';

class ComponentsPageMobile extends StatefulWidget {
  const ComponentsPageMobile({super.key});

  @override
  State<ComponentsPageMobile> createState() => _ComponentsPageMobileState();
}

class _ComponentsPageMobileState extends State<ComponentsPageMobile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextComponents(),
          const SizedBox(
            height: 20,
          ),
          ButtonComponents(),
          const SizedBox(
            height: 20,
          ),
          CarouselComponents(),
          const SizedBox(
            height: 20,
          ),
          FieldComponents(),
          const SizedBox(
            height: 20,
          ),
          DialogComponents(),
          const SizedBox(
            height: 20,
          ),
          PagesComponents(),
          const SizedBox(
            height: 20,
          ),
          RandomComponents(),
          const SizedBox(
            height: 20,
          ),
          ImageComponents(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
