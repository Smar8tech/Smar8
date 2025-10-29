import 'package:flutter/material.dart';
import '../common/app_theme.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        
        return Container(
          padding: EdgeInsets.all(isMobile ? 20 : 60),
          decoration: const BoxDecoration(
            color: AppTheme.lightGrey, // Light gray background
          ),
          child: isMobile ? _buildMobileLayout() : _buildDesktopLayout(),
        );
      },
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Section - Mission statement
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Trusted by Enterprise Leaders',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textBlack,
                ),
              ),
              const SizedBox(height: 30),
              const SizedBox(
                width: 500,
                child: Text(
                  'SMAR8 Solutions partners with property management companies and real estate enterprises to deliver scalable, efficient, and reliable solutions. Our enterprise-grade platform powers operations for thousands of properties nationwide, ensuring optimal performance and tenant satisfaction.',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppTheme.textBlack,
                    height: 1.6,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Discover Our Enterprise Solutions',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppTheme.infoBlue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
        
        const SizedBox(width: 60),
        
        // Right Section - Statistics
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStat('150K+', 'properties under management across all client portfolios'),
              const SizedBox(height: 40),
              _buildStat('99.2%', 'uptime reliability and system availability guarantee.¹'),
            ],
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
          'Trusted by Enterprise Leaders',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: AppTheme.textBlack,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'SMAR8 Solutions partners with property management companies and real estate enterprises to deliver scalable, efficient, and reliable solutions. Our enterprise-grade platform powers operations for thousands of properties nationwide.',
          style: TextStyle(
            fontSize: 16,
            color: AppTheme.textBlack,
            height: 1.6,
          ),
        ),
        const SizedBox(height: 20),
        InkWell(
          onTap: () {},
          child: const Text(
            'Discover Our Enterprise Solutions',
            style: TextStyle(
              fontSize: 14,
              color: AppTheme.infoBlue,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(height: 40),
        _buildStat('150K+', 'properties under management across all client portfolios'),
        const SizedBox(height: 30),
        _buildStat('99.2%', 'uptime reliability and system availability guarantee.¹'),
      ],
    );
  }

  Widget _buildStat(String number, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryGreen,
            height: 1.0,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            color: AppTheme.darkGrey,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}
