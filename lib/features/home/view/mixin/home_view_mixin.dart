import 'package:flutter/material.dart';
import 'package:portfolio/features/home/view/home_view.dart';
import 'package:portfolio/product/initialize/localization/locale_keys.g.dart';

mixin HomeViewMixin on State<HomeView> {
  late AnimationController controller;
  late AnimationController menuController;
  late Animation<double> animation;
  final OverlayPortalController overlayPortalController =
      OverlayPortalController();
  late Animation<double> menuAnimation;

  late final List<MenuItem> menuItems;

  // ignore: prefer_final_fields
  bool _isMenuOpen = false;
  bool get isMenuOpen => _isMenuOpen;
  set isMenuOpen(bool value) {
    _isMenuOpen = value;
    setState(() {});
  }

  void initializeMenuItems() {
    menuItems = [
      LocaleKeys.about_title,
      LocaleKeys.projects_title,
      LocaleKeys.contact_title,
    ]
        .map(
          (title) => MenuItem(
            onTap: menuLogic,
            title: title,
          ),
        )
        .toList();
  }

  ///TODO fix this method
  void menuLogic() {
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

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
