import 'package:flutter/material.dart';
import '../common/app_theme.dart';
import '../common/components/app_button.dart';

class AboutIntroSection extends StatelessWidget {
  const AboutIntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        
        return Container(
          padding: EdgeInsets.all(isMobile ? 20 : 60),
          color: AppTheme.sectionRed, // Using theme color
          child: isMobile ? _buildMobileLayout() : _buildDesktopLayout(),
        );
      },
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Left Section - Text content
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'About SMAR8',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Leaders in property management and innovative tenant solutions for more than 15 years\n\n'
                'SMAR8 partners with property owners, managers, and institutions to deliver comprehensive '
                'property management technology focused on what\'s important to them and their tenants.\n\n'
                'We continue to innovate and build on a history of helping property professionals access efficient '
                'management solutions, solve operational challenges, and design systems that respond to the evolving '
                'needs of modern property management.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 30),
              AppButton(
                text: 'Contact Us',
                type: AppButtonType.primary,
                onPressed: () {},
              ),
            ],
          ),
        ),
        
        const SizedBox(width: 60),
        
        // Right Section - Image
        Expanded(
          flex: 1,
          child: Container(
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'images/about-team.jpg',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[800],
                    child: const Center(
                      child: Icon(
                        Icons.business_center,
                        size: 100,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About SMAR8',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Leaders in property management and innovative tenant solutions for more than 15 years. '
          'SMAR8 partners with property owners, managers, and institutions to deliver comprehensive '
          'property management technology.',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            height: 1.6,
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 300,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'images/about-team.jpg',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[800],
                    child: const Center(
                      child: Icon(
                        Icons.business_center,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        const AppButton(
          text: 'Contact Us',
          type: AppButtonType.primary,
          isWide: true,
        ),
      ],
    );
  }
}

