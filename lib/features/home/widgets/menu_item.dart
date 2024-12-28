part of '../view/home_view.dart';

final class MenuItem extends StatelessWidget {
  const MenuItem({
    required this.onTap,
    required this.title,
    super.key,
  });
  final GestureTapCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const PagePadding.allNormal(),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ).tr(),
          ),
        ],
      ),
    );
  }
}
