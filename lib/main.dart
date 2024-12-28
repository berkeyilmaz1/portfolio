import 'package:flutter/material.dart';
import 'package:portfolio/product/initialize/application_start/application_start.dart';
import 'package:portfolio/product/initialize/main_app/main_app.dart';

void main() async {
  await ApplicationStart.init();

  runApp(
    // MainLocalization(child: const MainApp()),
    MainApp(),
  );
}
