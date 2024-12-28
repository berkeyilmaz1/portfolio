import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:portfolio/features/home/view/mixin/home_view_mixin.dart';
import 'package:portfolio/product/initialize/localization/locale_keys.g.dart';
import 'package:portfolio/product/utils/border_radius_general.dart';
import 'package:portfolio/product/widgets/animated_icon_button.dart';
import 'package:portfolio/product/widgets/page/page_padding.dart';

part '../widgets/animated_text_view.dart';

final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with HomeViewMixin, SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    animation = Tween<double>(begin: 0, end: 1).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const PagePadding.horizontal16Symmetric(),
              child: PortalTarget(
                visible: isMenuOpen,
                anchor: const Aligned(
                  follower: Alignment.topRight,
                  target: Alignment.topLeft,
                ),
                portalFollower: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 4,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadiusGeneral.all(),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text(
                          LocaleKeys.about_title,
                          style: TextStyle(color: Colors.white),
                        ).tr(),
                        onTap: menuAnimation,
                      ),
                      ListTile(
                        title: const Text(
                          LocaleKeys.projects_title,
                          style: TextStyle(color: Colors.white),
                        ).tr(),
                        onTap: menuAnimation,
                      ),
                      ListTile(
                        title: const Text(
                          LocaleKeys.contact_title,
                          style: TextStyle(color: Colors.white),
                        ).tr(),
                        onTap: menuAnimation,
                      ),
                    ],
                  ),
                ),
                child: IconButton(
                  onPressed: () {
                    menuAnimation();
                    setState(() {
                      isMenuOpen = !isMenuOpen;
                    });
                  },
                  icon: AnimatedIcon(
                    icon: AnimatedIcons.menu_close,
                    progress: animation,
                  ),
                ),
              ),
            ),
          ],
          elevation: 0,
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.grey,
                      Colors.transparent,
                    ],
                    stops: [0.7, 1.0],
                  ).createShader(rect);
                },
                blendMode: BlendMode.dstIn,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    10,
                    (index) => const VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                      width: 0,
                    ),
                  ),
                ),
              ),
            ),
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
      ),
    );
  }
}
 // if (controller.status == AnimationStatus.completed ||
                          //     controller.status == AnimationStatus.dismissed) {
                          //   setState(() {
                          //     isMenuOpen = !isMenuOpen;
                          //   });
                          // }