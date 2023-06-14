import 'dart:convert';
import 'package:manga_easy_components/src/services/theme_service.dart';
import 'package:share_plus/share_plus.dart';

class ShareThemeService {
  ShareThemeService();

  void shareTheme(String nome) {
    final themeJson = json.encode({
      'tema': nome,
      'primaryColor': MockThemeService.primaryColor.toString(),
      'backgroundColor': MockThemeService.backgroundColor.toString(),
      'backgroundText': MockThemeService.backgroundText.toString(),
      'primaryText': MockThemeService.primaryText.toString(),
      'backgroundIcon': MockThemeService.backgroundIcon.toString(),
    });
    Share.share(themeJson, subject: 'Compartilhar tema');
  }
}
