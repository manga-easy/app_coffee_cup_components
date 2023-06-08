import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_components/src/atoms/change_theme.dart';
import 'package:manga_easy_components/src/atoms/create_theme_drawer.dart';
import 'package:manga_easy_components/src/page/components_page_desktop.dart';
import 'package:manga_easy_components/src/page/components_page_mobile.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class ComponentsPage extends StatefulWidget {
  const ComponentsPage({super.key});

  @override
  State<ComponentsPage> createState() => _ComponentsPageState();
}

class _ComponentsPageState extends State<ComponentsPage> {
  @override
  void initState() {
    ThemeService().addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: ThemeService.of.primaryColor,
              title: CoffeeText(
                text: 'Mangá Easy Components',
                typography: CoffeeTypography.button,
              ),
            ),
            drawer: CreateThemeDrawer(),
            body: constraints.maxWidth > 600
                ? SizedBox(
                    height: constraints.maxHeight,
                    child: ComponentsPageDesktop(),
                  )
                : ComponentsPageMobile(),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {},
              label: Row(
                children: [
                  CoffeeText(
                    text: 'Tema: ',
                  ),
                  SizedBox(
                    width: 100,
                    child: ChangeTheme(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
