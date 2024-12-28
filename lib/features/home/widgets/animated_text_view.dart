part of '../view/home_view.dart';

final class AnimatedTextView extends StatefulWidget {
  const AnimatedTextView({super.key});

  @override
  _AnimatedTextViewState createState() => _AnimatedTextViewState();
}

class _AnimatedTextViewState extends State<AnimatedTextView>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _offsetAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding:
          const EdgeInsets.only(top: 32, bottom: 32, left: 100, right: 100),
      child: ClipRect(
        child: SlideTransition(
          position: _offsetAnimation,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SlideTransition(
                position: _offsetAnimation,
                child: Column(
                  children: [
                    const Text(
                      LocaleKeys.home_berke,
                      style: TextStyle(
                        fontSize: 96,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ).tr(),
                    const Text(
                      LocaleKeys.home_yilmaz,
                      style: TextStyle(
                        fontSize: 96,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ).tr(),
                  ],
                ),
              ),
              SlideTransition(
                position: _offsetAnimation,
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    const Text(
                      LocaleKeys.home_subtitle,
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ).tr(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
