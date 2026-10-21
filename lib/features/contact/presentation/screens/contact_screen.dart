import 'package:flutter/material.dart';

import '../widgets/contact_form_card.dart';
import '../widgets/contact_hero.dart';
import '../widgets/contact_info_card.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ContactHero(),
            const SizedBox(height: 40),
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1100),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final isWide = constraints.maxWidth >= 760;
                      final children = [
                        const ContactInfoCard(),
                        const ContactFormCard(),
                      ];

                      return isWide
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: children[0]),
                                const SizedBox(width: 24),
                                Expanded(child: children[1]),
                              ],
                            )
                          : Column(
                              children: [
                                children[0],
                                const SizedBox(height: 16),
                                children[1],
                              ],
                            );
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
