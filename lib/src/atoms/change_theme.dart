import 'package:coffee_cup/features/text/coffee_text.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({super.key});

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<Themes>(
      value: ThemeService().index,
      isExpanded: true,
      focusColor: Colors.transparent,
      items: Themes.values.map<DropdownMenuItem<Themes>>(
        (Themes e) {
          return DropdownMenuItem<Themes>(
            child: CoffeeText(text: e.title),
            value: e,
          );
        },
      ).toList(),
      onChanged: (value) {
        if (value != null) {
          setState(() {
            ThemeService().changeTheme(value.index);
          });
        }
      },
    );
  }
}
