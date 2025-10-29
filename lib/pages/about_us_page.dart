import 'package:flutter/material.dart';
import '../components/about_intro_section.dart';
import '../components/values_section.dart';
import '../components/team_section.dart';
import '../components/management_section.dart';
import '../components/investor_protection_section.dart';
import '../components/company_values_section.dart';
import '../components/history_section.dart';
import '../components/contact_location_section.dart';

class AboutUsPage extends StatefulWidget {
  final String? subPage;
  
  const AboutUsPage({super.key, this.subPage});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    // If no specific sub-page is requested, show all sections
    if (widget.subPage == null) {
      return const Column(
        children: [
          AboutIntroSection(),
          ValuesSection(),
          TeamSection(),
          ManagementSection(),
          InvestorProtectionSection(),
          CompanyValuesSection(),
        ],
      );
    }

    // Show specific sub-page based on selection
    switch (widget.subPage) {
      case 'about':
        return const Column(
          children: [
            AboutIntroSection(),
          ],
        );
      case 'principles':
        return const Column(
          children: [
            ValuesSection(),
            CompanyValuesSection(),
          ],
        );
      case 'leadership':
        return const Column(
          children: [
            TeamSection(),
            ManagementSection(),
          ],
        );
      case 'history':
        return const Column(
          children: [
            HistorySection(),
          ],
        );
      case 'contacts':
        return const Column(
          children: [
            ContactLocationSection(),
          ],
        );
      default:
        return const Column(
          children: [
            AboutIntroSection(),
          ],
        );
    }
  }
}

