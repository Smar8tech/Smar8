import 'package:flutter/material.dart';
import '../common/components/app_card.dart';

class ServiceCardsSection extends StatelessWidget {
  const ServiceCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        
        return Container(
          color: Colors.white,
          padding: EdgeInsets.all(isMobile ? 20 : 60),
          child: isMobile ? _buildMobileCards() : _buildDesktopCards(),
        );
      },
    );
  }

  Widget _buildDesktopCards() {
    final cards = _getCardsData();
    
    return Row(
      children: cards.asMap().entries.map((entry) {
        final index = entry.key;
        final card = entry.value;
        return Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: index < cards.length - 1 ? 20 : 0),
            child: _buildCard(card),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildMobileCards() {
    final cards = _getCardsData();
    
    return Column(
      children: cards.map((card) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: _buildCard(card),
        );
      }).toList(),
    );
  }

  Widget _buildCard(Map<String, dynamic> card) {
    return AppCard(
      title: card['title'] as String,
      type: AppCardType.image,
      imagePath: card['image'] as String?,
      buttonText: 'Read more',
      onPressed: () {},
    );
  }

  List<Map<String, dynamic>> _getCardsData() {
    return [
      {
        'title': 'Tenant Lifecycle Management: From Application to Renewal',
        'image': 'images/technology1.jpg',
      },
      {
        'title': 'Maintenance & Work Order Automation Platform',
        'image': 'images/technology2.jpg',
      },
      {
        'title': 'AI-Powered Property Analytics: *Predictive* insights for portfolio optimization',
        'image': 'images/technology3.jpg',
      },
    ];
  }
}
