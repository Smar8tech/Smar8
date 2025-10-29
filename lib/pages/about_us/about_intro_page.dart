import 'package:flutter/material.dart';
import '../../components/about_intro_section.dart';
import '../../components/service_cards_section.dart';
import '../../components/stats_section.dart';

class AboutIntroPage extends StatelessWidget {
  const AboutIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AboutIntroSection(),
        StatsSection(),
        ServiceCardsSection(),
      ],
    );
  }
}

