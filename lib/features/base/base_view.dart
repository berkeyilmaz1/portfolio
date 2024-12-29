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
        child: const Column(
          children: [
            HomeView(),
            Text('Bu Regular bir yazıdır.',
                style: TextStyle(fontWeight: FontWeight.w400)),
            Text('Bu Light bir yazıdır.',
                style: TextStyle(fontWeight: FontWeight.w300)),
            Text('Bu Bold bir yazıdır.',
                style: TextStyle(fontWeight: FontWeight.w700)),
            Text('Bu Thin bir yazıdır.',
                style: TextStyle(fontWeight: FontWeight.w100)),
            Text('Bu Medium bir yazıdır.',
                style: TextStyle(fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
