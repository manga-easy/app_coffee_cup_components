import 'package:flutter/material.dart';
import 'package:manga_easy_components/src/ui/molecules/button_components.dart';
import 'package:manga_easy_components/src/ui/molecules/carousel_components.dart';
import 'package:manga_easy_components/src/ui/molecules/dialog_components.dart';
import 'package:manga_easy_components/src/ui/molecules/field_components.dart';
import 'package:manga_easy_components/src/ui/molecules/image_components.dart';
import 'package:manga_easy_components/src/ui/molecules/pages_components.dart';
import 'package:manga_easy_components/src/ui/molecules/random_components.dart';
import 'package:manga_easy_components/src/ui/molecules/text_components.dart';

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
                    TextComponents(),
                    const SizedBox(
                      height: 20,
                    ),
                    ButtonComponents(),
                    const SizedBox(
                      height: 20,
                    ),
                    FieldComponents()
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            SingleChildScrollView(
              child: SizedBox(width: 300, child: CarouselComponents()),
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
                    RandomComponents(),
                    const SizedBox(
                      height: 20,
                    ),
                    DialogComponents()
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 400,
              child: SingleChildScrollView(child: ImageComponents()),
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 400,
              child: SingleChildScrollView(child: PagesComponents()),
            ),
          ],
        ),
      ),
    );
  }
}
