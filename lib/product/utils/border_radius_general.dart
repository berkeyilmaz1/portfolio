import 'package:flutter/material.dart';
import 'package:portfolio/product/widgets/widget_sizes.dart';

final class BorderRadiusGeneral extends BorderRadius {
  /// Radius is 12 [Radius.circular]
  const BorderRadiusGeneral.all()
      : super.all(const Radius.circular(WidgetSizes.spacingS));
}
