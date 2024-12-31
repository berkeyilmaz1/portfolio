import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/features/contact/view/mixin/contact_view_mixin.dart';
import 'package:portfolio/product/initialize/localization/locale_keys.g.dart';
import 'package:portfolio/product/utils/constants/portfolio_constants.dart';
import 'package:portfolio/product/widgets/page/page_padding.dart';
import 'package:portfolio/product/widgets/widget_sizes.dart';

final class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> with ContactViewMixin {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            LocaleKeys.contact_title,
            style: TextStyle(fontSize: 24),
          ).tr(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                LocaleKeys.contact_getInTouch,
                style: TextStyle(
                  fontSize: WidgetSizes.spacingHundred,
                  fontWeight: FontWeight.w700,
                ),
              ).tr(),
              Column(
                children: [
                  UpperDivider(
                    onLinkedInPressed: () =>
                        launchToUrl(PortfolioConstants.linkedInUrl),
                    onGitPressed: () =>
                        launchToUrl(PortfolioConstants.githubUrl),
                    onMediumPressed: () =>
                        launchToUrl(PortfolioConstants.mediumUrl),
                    onTwitterPressed: () =>
                        launchToUrl(PortfolioConstants.twitterUrl),
                  ),
                  const OrDivider(),
                  LowerDivider(
                    onMailPressed: sendMail,
                  ),
                  Padding(
                    padding: const PagePadding.vertical18Symmetric(),
                    child: const Text(
                      LocaleKeys.contact_thanks,
                      style: TextStyle(
                          fontSize: WidgetSizes.spacingMx,
                          fontWeight: FontWeight.w500),
                    ).tr(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LowerDivider extends StatelessWidget {
  const LowerDivider({
    required this.onMailPressed,
    super.key,
  });
  final VoidCallback onMailPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.vertical18Symmetric(),
      child: TextButton(
        onPressed: onMailPressed,
        child: const Text(
          PortfolioConstants.email,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: WidgetSizes.spacingM,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class UpperDivider extends StatelessWidget {
  const UpperDivider({
    required this.onLinkedInPressed,
    required this.onGitPressed,
    required this.onMediumPressed,
    required this.onTwitterPressed,
    super.key,
  });
  final VoidCallback onLinkedInPressed;
  final VoidCallback onGitPressed;
  final VoidCallback onMediumPressed;
  final VoidCallback onTwitterPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: onLinkedInPressed,
          child: const Text(
            PortfolioConstants.linkedIn,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: WidgetSizes.spacingM,
              color: Colors.black,
            ),
          ),
        ),
        TextButton(
          onPressed: onGitPressed,
          child: const Text(
            PortfolioConstants.github,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: WidgetSizes.spacingM,
              color: Colors.black,
            ),
          ),
        ),
        TextButton(
          onPressed: onMediumPressed,
          child: const Text(
            PortfolioConstants.medium,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: WidgetSizes.spacingM,
              color: Colors.black,
            ),
          ),
        ),
        TextButton(
          onPressed: onTwitterPressed,
          child: const Text(
            PortfolioConstants.twitter,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: WidgetSizes.spacingM,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            thickness: WidgetSizes.spacingXxxSmall,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'or',
            style: TextStyle(
              fontSize: WidgetSizes.spacingM,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: WidgetSizes.spacingXxxSmall,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
