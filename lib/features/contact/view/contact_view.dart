import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/product/initialize/localization/locale_keys.g.dart';
import 'package:portfolio/product/utils/constants/portfolio_constants.dart';
import 'package:portfolio/product/widgets/page/page_padding.dart';
import 'package:portfolio/product/widgets/widget_sizes.dart';

final class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
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
              const ClipRect(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          PortfolioConstants.linkedIn,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: WidgetSizes.spacingM,
                          ),
                        ),
                        Text(
                          PortfolioConstants.github,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: WidgetSizes.spacingM,
                          ),
                        ),
                        Text(
                          PortfolioConstants.medium,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: WidgetSizes.spacingM,
                          ),
                        ),
                        Text(
                          PortfolioConstants.twitter,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: WidgetSizes.spacingM,
                          ),
                        ),
                      ],
                    ),
                    Row(
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
                    ),
                    Padding(
                      padding: PagePadding.vertical18Symmetric(),
                      child: Text(
                        PortfolioConstants.email,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: WidgetSizes.spacingM,
                        ),
                      ),
                    ),
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
