import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:portfolio/features/contact/view/contact_view.dart';
import 'package:portfolio/product/initialize/providers/language_provider.dart';
import 'package:provider/provider.dart';

/// MainApp is the main class of the application.
final class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Portal(
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        title: 'Berke Yılmaz',
        theme: ThemeData(
          fontFamily: 'Nohemi',
          appBarTheme: const AppBarTheme(
            color: Colors.transparent,
          ),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(fontWeight: FontWeight.w400), // Regular
            bodyMedium: TextStyle(fontWeight: FontWeight.w300), // Light
            bodySmall: TextStyle(fontWeight: FontWeight.w100), // Thin
            headlineMedium: TextStyle(fontWeight: FontWeight.w700), // Bold
            titleLarge: TextStyle(fontWeight: FontWeight.w500), //Medium
          ),
          scaffoldBackgroundColor: Colors.white,
        ),
        home: ChangeNotifierProvider(
          create: (_) => LanguageProvider(),
          child: const ContactView(),
        ),
      ),
    );
  }
}
