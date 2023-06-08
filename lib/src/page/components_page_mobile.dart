import 'package:flutter/material.dart';
import 'package:manga_easy_components/src/components/button_components.dart';
import 'package:manga_easy_components/src/components/carousel_components.dart';
import 'package:manga_easy_components/src/components/dialog_components.dart';
import 'package:manga_easy_components/src/components/field_components.dart';
import 'package:manga_easy_components/src/components/pages_components.dart';
import 'package:manga_easy_components/src/components/random_components.dart';
import 'package:manga_easy_components/src/components/text_components.dart';

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
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextComponents(),
          Divider(),
          ButtonComponents(),
          Divider(),
          CarouselComponents(),
          Divider(),
          FieldComponents(),
          Divider(),
          DialogComponents(),
          Divider(),
          PagesComponents(),
          Divider(),
          RandomComponents()
        ],
      ),
    );
  }
}
