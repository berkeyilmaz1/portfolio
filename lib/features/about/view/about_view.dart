import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:motion/motion.dart';
import 'package:portfolio/product/initialize/localization/locale_keys.g.dart';
import 'package:portfolio/product/utils/border_radius_general.dart';
import 'package:portfolio/product/widgets/animation_column.dart';
import 'package:portfolio/product/widgets/page/page_padding.dart';
import 'package:portfolio/product/widgets/widget_sizes.dart';

part '../widgets/about_message.dart';
part '../widgets/about_picture.dart';

final class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  final profilePicture = 'assets/images/berke-yilmaz.jpeg';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:
              const Text(LocaleKeys.about_title, style: TextStyle(fontSize: 24))
                  .tr(),
        ),
        body: Center(
          child: AnimationLimiter(
            child: AnimationColumn(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AboutPicture(profilePicture: profilePicture),
                    ///todo: overflow
                    const AboutMessage(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
