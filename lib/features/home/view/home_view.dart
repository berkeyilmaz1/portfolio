import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/product/initialize/localization/locale_keys.g.dart';
import 'package:portfolio/product/widgets/animated_icon_button.dart';

final class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height, // Tam ekran yüksekliği
      child: Stack(
        children: [
          // Dikey çizgiler için ShaderMask yalnızca arka plana uygulanacak
          Positioned.fill(
            child: ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.grey, // Üstteki çizgiler tam görünür
                    Colors.transparent, // Altta tamamen görünmez
                  ],
                  stops: [0.3,0.7, 1.0], // Geçiş noktaları
                ).createShader(rect);
              },
              blendMode: BlendMode.dstIn,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  10, // Çizgi sayısını burada ayarlayabilirsiniz
                  (index) => const VerticalDivider(
                    thickness: 1,
                    color: Colors.grey, // Çizgi rengi
                    width: 0, // Çizgiler arasında boşluk bırakmak istemezseniz
                  ),
                ),
              ),
            ),
          ),
          // Metin içeriği - Bu kısım ShaderMask'tan etkilenmeyecek
          const Center(
            child: AnimatedTextView(),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: AnimatedIconButton(),
            ),
          ),
        ],
      ),
    );
  }
}

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
