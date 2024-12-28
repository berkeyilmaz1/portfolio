import 'package:flutter/material.dart';

enum Locales {
  en(Locale('en')),
  tr(Locale('tr'));

  final Locale locale;
  const Locales(this.locale);
}
