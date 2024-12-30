part of '../view/about_view.dart';
final class AboutPicture extends StatelessWidget {
  const AboutPicture({
    required this.profilePicture,
    super.key,
  });

  final String profilePicture;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        profilePicture,
        width: WidgetSizes.spacingXXXHundred,
        height: WidgetSizes.spacingXXXHundred,
        fit: BoxFit.cover,
      ),
    );
  }
}
