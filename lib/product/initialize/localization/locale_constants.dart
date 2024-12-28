import 'package:flutter/material.dart';
import 'package:portfolio/product/initialize/localization/enums/locale_enums.dart';

@immutable
final class LocaleConstants {
  const LocaleConstants._();

  static List<Locale> supportedLocales =
      Locales.values.map((e) => e.locale).toList();
}
