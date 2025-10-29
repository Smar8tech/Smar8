import 'package:flutter/material.dart';
import '../../components/history_section.dart';
import '../../components/resources_section.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        
        return Column(
          children: [
            // Header Section
            Container(
              padding: EdgeInsets.all(isMobile ? 20 : 60),
              color: const Color(0xFF2E7D32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Our Journey',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: isMobile ? double.infinity : 700,
                    child: const Text(
                      'For over 15 years, SMAR8 Solutions has been at the forefront of property management innovation. Our history is marked by continuous growth, technological advancement, and unwavering commitment to our clients\' success.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        height: 1.6,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const HistorySection(),
            // Milestones Section
            Container(
              padding: EdgeInsets.all(isMobile ? 20 : 60),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Key Milestones',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Container(
                    height: 4,
                    width: 80,
                    color: const Color(0xFF2E7D32),
                    margin: const EdgeInsets.only(top: 10, bottom: 40),
                  ),
                  isMobile ? _buildMobileMilestones() : _buildDesktopMilestones(),
                ],
              ),
            ),
            const ResourcesSection(),
          ],
        );
      },
    );
  }

  Widget _buildDesktopMilestones() {
    return Column(
      children: [
        _buildMilestoneCard(
          year: '2023',
          title: 'Industry Recognition',
          description: 'Named as a leader in property management technology by leading industry publications.',
          color: const Color(0xFF2E7D32),
        ),
        const SizedBox(height: 20),
        _buildMilestoneCard(
          year: '2020',
          title: 'Global Expansion',
          description: 'Expanded operations to serve enterprise clients across all 50 states.',
          color: const Color(0xFF0277BD),
        ),
        const SizedBox(height: 20),
        _buildMilestoneCard(
          year: '2017',
          title: 'AI Integration',
          description: 'Launched AI-powered predictive analytics for property maintenance and optimization.',
          color: const Color(0xFF558B2F),
        ),
      ],
    );
  }

  Widget _buildMobileMilestones() {
    return Column(
      children: [
        _buildMilestoneCard(
          year: '2023',
          title: 'Industry Recognition',
          description: 'Named as a leader in property management technology.',
          color: const Color(0xFF2E7D32),
        ),
        const SizedBox(height: 20),
        _buildMilestoneCard(
          year: '2020',
          title: 'Global Expansion',
          description: 'Expanded operations to serve clients across all 50 states.',
          color: const Color(0xFF0277BD),
        ),
        const SizedBox(height: 20),
        _buildMilestoneCard(
          year: '2017',
          title: 'AI Integration',
          description: 'Launched AI-powered predictive analytics for property management.',
          color: const Color(0xFF558B2F),
        ),
      ],
    );
  }

  Widget _buildMilestoneCard({
    required String year,
    required String title,
    required String description,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: color.withOpacity(0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border(
          left: BorderSide(color: color, width: 5),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              year,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

