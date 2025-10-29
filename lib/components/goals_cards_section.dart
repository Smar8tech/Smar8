import 'package:flutter/material.dart';

class GoalsCardsSection extends StatelessWidget {
  const GoalsCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        
        return Container(
          color: Colors.grey[100],
          padding: EdgeInsets.all(isMobile ? 20 : 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Enterprise Property Management Capabilities',
                  style: TextStyle(
                    fontSize: isMobile ? 28 : 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              isMobile ? _buildMobileCards() : _buildDesktopCards(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildDesktopCards() {
    final cards = _getCardsData();
    
    return Row(
      children: cards.map((card) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: _buildCard(card, isMobile: false),
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
          child: _buildCard(card, isMobile: true),
        );
      }).toList(),
    );
  }

  Widget _buildCard(Map<String, dynamic> card, {required bool isMobile}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image - only on desktop
          if (!isMobile)
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.grey[300],
                child: Image.network(
                  card['image'],
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Icon(
                        Icons.image,
                        size: 60,
                        color: Colors.grey[400],
                      ),
                    );
                  },
                ),
              ),
            ),
          
          // Content
          Padding(
            padding: EdgeInsets.all(isMobile ? 20 : 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  card['title'],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  card['description'],
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87, width: 1.5),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(6),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          child: Text(
                            card['buttonText'],
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Map<String, dynamic>> _getCardsData() {
    return [
      {
        'title': 'Automated Tenant Onboarding & Screening',
        'description': 'Streamline tenant acquisition with comprehensive background checks, application processing, and digital lease management. Reduce administrative overhead by up to 70% with our automated workflow system.',
        'buttonText': 'Tenant Services',
        'image': 'images/property-management.jpg',
      },
      {
        'title': 'Predictive Maintenance & Work Order Management',
        'description': 'Proactive maintenance scheduling, real-time work order tracking, and vendor coordination. Minimize downtime and extend asset lifespan with data-driven maintenance strategies.',
        'buttonText': 'Maintenance Tools',
        'image': 'images/asset-management.jpg',
      },
      {
        'title': 'Integrated Payment Processing & Collections',
        'description': 'Secure online rent collection, automated payment reminders, and comprehensive financial reconciliation. Track receivables, outstanding balances, and payment trends in real-time.',
        'buttonText': 'Payment Portal',
        'image': 'images/tenant-services.jpg',
      },
      {
        'title': 'Advanced Analytics & Portfolio Insights',
        'description': 'Enterprise-level reporting with occupancy analytics, revenue optimization, tenant retention metrics, and predictive intelligence. Make informed decisions with comprehensive dashboards.',
        'buttonText': 'View Dashboard',
        'image': 'images/financial-reporting.jpg',
      },
    ];
  }
}
