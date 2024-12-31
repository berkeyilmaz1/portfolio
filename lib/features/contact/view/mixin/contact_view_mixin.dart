import 'package:flutter/material.dart';
import 'package:portfolio/features/contact/view/contact_view.dart';
import 'package:portfolio/product/utils/constants/portfolio_constants.dart';
import 'package:url_launcher/url_launcher.dart';

mixin ContactViewMixin on State<ContactView> {
  Future<void> launchToUrl(String url) async {
    final uri = Uri.parse(url); // Convert the String to Uri here
    await launchUrl(uri); // Now pass the Uri
  }

  Future<void> sendMail() async {
    final emailUri = Uri(
      scheme: 'mailto',
      path: PortfolioConstants.emailUrl,
    );

    await launchUrl(emailUri);
  }
}
