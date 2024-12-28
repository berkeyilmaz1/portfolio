import 'package:flutter/material.dart';
import 'package:portfolio/features/base/base_view.dart';

final class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // localizationsDelegates: context.localizationDelegates,
        // supportedLocales: context.supportedLocales,
        // locale: context.locale,
        debugShowCheckedModeBanner: false,
        title: 'BerkeYilmazPortfolio',
        home: BaseView());
  }
}
