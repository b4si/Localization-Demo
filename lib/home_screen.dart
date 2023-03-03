import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:localization_demo/language_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        title: const Center(
          child: Text(
            'Localization',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const LocaleText(
            'Welcome',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 280,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: FloatingActionButton(
                    backgroundColor: Colors.black,
                    child: const Icon(
                      Icons.language_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LanguageScreen(),
                      ));
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
