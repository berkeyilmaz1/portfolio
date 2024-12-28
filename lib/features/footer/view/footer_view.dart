import 'package:flutter/material.dart';
import 'package:portfolio/product/initialize/providers/language_provider.dart';
import 'package:portfolio/product/widgets/widget_sizes.dart';
import 'package:provider/provider.dart';

/// This is the footer row of the website
final class FooterView extends StatefulWidget {
  const FooterView({super.key});

  @override
  State<FooterView> createState() => _FooterViewState();
}

class _FooterViewState extends State<FooterView> {
  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LanguageProvider>(context);
    return SizedBox(
      height: WidgetSizes.footerHeight,
      child: Row(
        children: [
          const Text('© built by Berke Yılmaz with Flutter'),
          const Spacer(),
          DropdownButton(
            value: langProvider.selectedLang,
            items: [
              DropdownMenuItem<String>(
                value: langProvider.turkish,
                child: const Text('Türkçe'),
              ),
              DropdownMenuItem<String>(
                value: langProvider.english,
                child: const Text('English'),
              ),
            ],
            onChanged: (newLang) {
              if (newLang == null) return;
              langProvider.changeLanguage(newLang, context);
            },
          ),
        ],
      ),
    );
  }
}
