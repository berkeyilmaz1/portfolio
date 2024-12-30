import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:portfolio/product/widgets/widget_sizes.dart';

final class AnimationColumn extends StatelessWidget {
  const AnimationColumn({
    required this.children,
    super.key,
  });

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: AnimationConfiguration.toStaggeredList(
        duration: const Duration(seconds: WidgetSizes.one),
        childAnimationBuilder: (widget) => SlideAnimation(
          horizontalOffset: 50,
          child: FadeInAnimation(
            child: widget,
          ),
        ),
        children: children,
      ),
    );
  }
}
