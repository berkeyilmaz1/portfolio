import 'package:flutter/material.dart';
import 'package:portfolio/features/home/view/home_view.dart';

mixin HomeViewMixin on State<HomeView> {
  late AnimationController controller;
  late Animation<double> animation;
  final OverlayPortalController overlayPortalController =
      OverlayPortalController();

  // ignore: prefer_final_fields
  bool _isMenuOpen = false;
  bool get isMenuOpen => _isMenuOpen;
  set isMenuOpen(bool value) {
    _isMenuOpen = value;
    setState(() {});
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void menuAnimation() {
    if (controller.status == AnimationStatus.completed) {
      controller.reverse();
      return;
    }

    if (controller.status == AnimationStatus.dismissed) {
      controller.forward();
      return;
    }

    controller
      ..reset()
      ..forward();
  }
}
