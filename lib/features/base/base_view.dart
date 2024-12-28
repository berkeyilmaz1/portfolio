import 'package:flutter/material.dart';
import 'package:portfolio/features/home/view/home_view.dart';

class BaseView extends StatefulWidget {
  const BaseView({super.key});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  late final ScrollController _scrollController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              HomeView(),
              Placeholder(),
            ],
          )),
    );
  }
}
