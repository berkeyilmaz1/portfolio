import 'package:flutter/material.dart';
import 'package:portfolio/features/about/view/about_view.dart';
import 'package:portfolio/features/contact/view/contact_view.dart';
import 'package:portfolio/features/home/view/home_view.dart';
import 'package:portfolio/features/works/view/works_view.dart';

class BaseView extends StatefulWidget {
  const BaseView({super.key});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: const [
          HomeView(),
          AboutView(),
          ContactView(),
          WorksView(),
        ],
      ),
    );
  }
}
