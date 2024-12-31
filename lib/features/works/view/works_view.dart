import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/product/initialize/localization/locale_keys.g.dart';

final class WorksView extends StatefulWidget {
  const WorksView({super.key});

  @override
  State<WorksView> createState() => _WorksViewState();
}

class _WorksViewState extends State<WorksView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            LocaleKeys.experience_title,
            style: TextStyle(fontSize: 24),
          ).tr(),
        ),
        body: const Center(),
      ),
    );
  }
}
