import 'package:flutter/material.dart';
import '../common/app_theme.dart';
import '../common/components/page_section.dart';

class ValuesSection extends StatelessWidget {
  const ValuesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    
    return PageSection(
      title: 'What drives us?',
      underlineColor: AppTheme.infoBlue,
      content: isMobile ? _buildMobileValues() : _buildDesktopValues(),
    );
  }

  Widget _buildDesktopValues() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildValueCard(
          title: 'Ingenuity',
          description: 'We evolve our skills and apply our technical expertise to solving property management '
              'challenges. We\'re industry leaders in custom solutions.',
          color: AppTheme.infoBlue,
          index: 0,
          isExpanded: true,
        ),
        const SizedBox(width: 30),
        _buildValueCard(
          title: 'Authenticity',
          description: 'We\'re transparent about our methods, producing systematic, client-focused property '
              'management solutions with repeatable outcomes.',
          color: AppTheme.dangerRed,
          index: 1,
          isExpanded: true,
        ),
        const SizedBox(width: 30),
        _buildValueCard(
          title: 'Efficiency',
          description: 'We offer property managers and institutions powerful ways to build systems, '
              'reduce inefficiencies, and capitalize on market opportunities.',
          color: AppTheme.successGreen,
          index: 2,
          isExpanded: true,
        ),
      ],
    );
  }

  Widget _buildMobileValues() {
    return Column(
      children: [
        _buildValueCard(
          title: 'Ingenuity',
          description: 'We evolve our skills and apply our technical expertise to solving property management '
              'challenges. We\'re industry leaders in custom solutions.',
          color: AppTheme.infoBlue,
          index: 0,
          isMobile: true,
          isExpanded: false,
        ),
        const SizedBox(height: 20),
        _buildValueCard(
          title: 'Authenticity',
          description: 'We\'re transparent about our methods, producing systematic, client-focused property '
              'management solutions with repeatable outcomes.',
          color: AppTheme.dangerRed,
          index: 1,
          isMobile: true,
          isExpanded: false,
        ),
        const SizedBox(height: 20),
        _buildValueCard(
          title: 'Efficiency',
          description: 'We offer property managers and institutions powerful ways to build systems, '
              'reduce inefficiencies, and capitalize on market opportunities.',
          color: AppTheme.successGreen,
          index: 2,
          isMobile: true,
          isExpanded: false,
        ),
      ],
    );
  }

  Widget _buildValueCard({
    required String title,
    required String description,
    required Color color,
    required int index,
    bool isMobile = false,
    bool isExpanded = true,
  }) {
    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 4,
          width: double.infinity,
          color: color,
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(
            fontSize: isMobile ? 32 : 36,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          description,
          style: TextStyle(
            fontSize: isMobile ? 14 : 16,
            color: AppTheme.textPrimary,
            height: 1.5,
          ),
        ),
      ],
    );

    return isExpanded ? Expanded(child: content) : content;
  }
}

