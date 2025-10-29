import 'package:flutter/material.dart';

class InvestorProtectionSection extends StatelessWidget {
  const InvestorProtectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        
        return Container(
          padding: EdgeInsets.all(isMobile ? 20 : 60),
          color: Colors.grey[50],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'What we do to protect property owners',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0277BD), // Blue
                ),
              ),
              const SizedBox(height: 40),
              _buildProtectionPoints(isMobile),
            ],
          ),
        );
      },
    );
  }

  Widget _buildProtectionPoints(bool isMobile) {
    final points = _getProtectionPoints();
    
    return Column(
      children: points.asMap().entries.map((entry) {
        final index = entry.key;
        final point = entry.value;
        final isLast = index == points.length - 1;
        
        return Padding(
          padding: isLast ? EdgeInsets.zero : const EdgeInsets.only(bottom: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: const Color(0xFF2E7D32), // Green checkmark background
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFF0277BD), // Blue border
                    width: 2,
                  ),
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  point,
                  style: TextStyle(
                    fontSize: isMobile ? 14 : 16,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  List<String> _getProtectionPoints() {
    return [
      'As stewards of property management, we ensure that our actions are responsible and that our management '
          'strategies are transparent and verifiable. We communicate clearly with both our clients and property owners.',
      'We adhere to industry best practices and standards for the good and responsible handling of property '
          'management and tenant rights.',
      'We provide our clients with full details of fees, pricing, and any service changes with complete transparency.',
      'We ensure and demand that our partners and vendors follow the rules of responsible business governance and '
          'ethical practices.',
      'We champion the interests of property owners in all business dealings and maintain regular communication '
          'through personalized relationship management and quarterly reports.',
    ];
  }
}

