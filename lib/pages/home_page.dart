import 'package:flutter/material.dart';
import '../components/content_slider.dart';
import '../components/goals_cards_section.dart';
import '../components/stats_section.dart';
import '../components/resources_section.dart';
import '../components/culture_section.dart';
import '../components/service_cards_section.dart';
import '../components/partnership_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ContentSlider(),
        GoalsCardsSection(),
        StatsSection(),
        ResourcesSection(),
        CultureSection(),
        ServiceCardsSection(),
        PartnershipSection(),
        // Add more content sections here
      ],
    );
  }
}
