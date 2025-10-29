import 'package:flutter/material.dart';

class CompanyValuesSection extends StatelessWidget {
  const CompanyValuesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        
        return isMobile ? _buildMobileLayout() : _buildDesktopLayout();
      },
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      children: [
        Expanded(
          child: _buildValueBlock(
            title: 'Care',
            description: 'We act with care – treating customers, clients and colleagues with the same level '
                'of respect we would expect for ourselves. And we invest with care, making choices for the long term.',
            backgroundColor: Colors.grey[100]!,
            textColor: Colors.black87,
          ),
        ),
        Expanded(
          child: _buildValueBlock(
            title: 'Integrity',
            description: 'We empower our people at SMAR8 to do the right thing, honouring our commitments to others '
                'and acting with conviction. Our business is built on trust and we don\'t take that lightly.',
            backgroundColor: const Color(0xFFB71C1C), // Dark red
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      children: [
        _buildValueBlock(
          title: 'Care',
          description: 'We act with care – treating customers, clients and colleagues with the same level '
              'of respect we would expect for ourselves. And we invest with care, making choices for the long term.',
          backgroundColor: Colors.grey[100]!,
          textColor: Colors.black87,
        ),
        _buildValueBlock(
          title: 'Integrity',
          description: 'We empower our people at SMAR8 to do the right thing, honouring our commitments to others '
              'and acting with conviction. Our business is built on trust and we don\'t take that lightly.',
          backgroundColor: const Color(0xFFB71C1C), // Dark red
          textColor: Colors.white,
        ),
      ],
    );
  }

  Widget _buildValueBlock({
    required String title,
    required String description,
    required Color backgroundColor,
    required Color textColor,
  }) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.all(60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: textColor,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

