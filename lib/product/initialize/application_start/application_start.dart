import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:motion/motion.dart';

///This class is responsible for initializing the application
final class ApplicationStart {
  const ApplicationStart._();
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    await Motion.instance.initialize();
  }
}
