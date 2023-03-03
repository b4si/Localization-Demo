import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        title: const LocaleText('Language'),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('English'),
            onTap: () {
              Locales.change(context, 'en');
            },
          ),
          ListTile(
            title: const Text('زبان'),
            onTap: () {
              context.changeLocale('fa');
            },
          ),
        ],
      ),
    );
  }
}
