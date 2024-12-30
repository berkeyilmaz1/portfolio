part of '../view/about_view.dart';

final class AboutMessage extends StatelessWidget {
  const AboutMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Motion(
      child: Container(
        padding: const PagePadding.all(),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: const BorderRadiusGeneral.all(),
        ),
        child: const Text(
          LocaleKeys.about_message,
          style: TextStyle(
            fontSize: WidgetSizes.spacingM,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ).tr(),
      ),
    );
  }
}