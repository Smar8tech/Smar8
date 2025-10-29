import 'package:flutter/material.dart';

class HistorySection extends StatelessWidget {
  const HistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        
        return Container(
          padding: EdgeInsets.all(isMobile ? 20 : 60),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Our History',
                style: TextStyle(
                  fontSize: 48,
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
              const SizedBox(height: 20),
              isMobile ? _buildMobileHistory() : _buildDesktopHistory(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildDesktopHistory() {
    final timeline = _getTimeline();
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Built on a Legacy of Innovation',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'SMAR8 Solutions has been at the forefront of property management technology for over 15 years. From our founding vision to automate and streamline property operations, we have grown into a trusted partner for enterprise-level property management companies nationwide.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 30),
              ...timeline.map((event) => _buildTimelineItem(event)),
            ],
          ),
        ),
        const SizedBox(width: 60),
        Expanded(
          flex: 1,
          child: Container(
            height: 600,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Icon(
                Icons.history,
                size: 100,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileHistory() {
    final timeline = _getTimeline();
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Built on a Legacy of Innovation',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'SMAR8 Solutions has been at the forefront of property management technology for over 15 years. From our founding vision to automate and streamline property operations, we have grown into a trusted partner for enterprise-level property management.',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black87,
            height: 1.6,
          ),
        ),
        const SizedBox(height: 30),
        ...timeline.map((event) => _buildTimelineItem(event)),
      ],
    );
  }

  Widget _buildTimelineItem(Map<String, String> event) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: const Color(0xFF2E7D32), width: 3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            event['year']!,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2E7D32),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            event['title']!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            event['description']!,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  List<Map<String, String>> _getTimeline() {
    return [
      {
        'year': '2008',
        'title': 'Foundation',
        'description': 'SMAR8 Solutions was founded with a vision to transform property management through innovative technology solutions.',
      },
      {
        'year': '2012',
        'title': 'Enterprise Expansion',
        'description': 'Launched our first enterprise-level property management platform, serving over 100 property management companies.',
      },
      {
        'year': '2017',
        'title': 'Innovation Milestone',
        'description': 'Introduced AI-powered predictive maintenance and automated tenant lifecycle management systems.',
      },
      {
        'year': '2020',
        'title': 'Platform Integration',
        'description': 'Launched fully integrated cloud-based property management ecosystem with real-time analytics and reporting.',
      },
      {
        'year': '2023',
        'title': 'Industry Leadership',
        'description': 'Recognized as a leader in property management technology, serving over 500+ enterprise clients nationwide.',
      },
    ];
  }
}

