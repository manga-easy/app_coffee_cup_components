import 'package:flutter/material.dart';
import 'package:manga_easy_components/src/page/components_page.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: ThemeService(),
      builder: (context, child) => MaterialApp(
        theme: ThemeService().returnThemeData().copyWith(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: const ComponentsPage(),
      ),
    );
  }
}
