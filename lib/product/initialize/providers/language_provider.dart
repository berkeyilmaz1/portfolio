import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/product/initialize/localization/enums/locale_enums.dart';

final class LanguageProvider extends ChangeNotifier {
  LanguageProvider() {
    _selectedLang = turkish;
  }
  final String turkish = 'Türkçe';
  final String english = 'English';

  late String _selectedLang;
  String get selectedLang => _selectedLang;

  void changeLanguage(String newLang, BuildContext context) {
    _selectedLang = newLang;
    if (newLang == turkish) {
      EasyLocalization.of(context)?.setLocale(Locales.tr.locale);
    }
    EasyLocalization.of(context)?.setLocale(Locales.en.locale);

    notifyListeners();
  }
}
