import 'package:flutter/material.dart';

class PartnershipSection extends StatelessWidget {
  const PartnershipSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        
        return Container(
          color: Colors.white,
          padding: EdgeInsets.all(isMobile ? 20 : 60),
          child: isMobile ? _buildMobileLayout() : _buildDesktopLayout(),
        );
      },
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Section
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'We partner with property management companies and real estate enterprises to deliver integrated solutions that streamline operations, reduce costs, and enhance tenant satisfaction. Our collaborative approach ensures your systems evolve with your business needs.',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF2E7D32), // Teal/green color
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF2E7D32), width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(8),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'SCHEDULE AN ENTERPRISE CONSULTATION',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF2E7D32),
                            ),
                          ),
                          SizedBox(width: 12),
                          Icon(
                            Icons.arrow_forward,
                            size: 20,
                            color: Color(0xFF2E7D32),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        
        const SizedBox(width: 60),
        
        // Right Section - Services List
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildServiceItem('Tenant Management System'),
              const SizedBox(height: 20),
              _buildServiceItem('Maintenance Coordination'),
              const SizedBox(height: 20),
              _buildServiceItem('Financial Automation'),
              const SizedBox(height: 20),
              _buildServiceItem('Vendor Management'),
              const SizedBox(height: 20),
              _buildServiceItem('Compliance & Reporting'),
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
          'We partner with property management companies and real estate enterprises to deliver integrated solutions that streamline operations, reduce costs, and enhance tenant satisfaction.',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color(0xFF2E7D32),
            height: 1.5,
          ),
        ),
        const SizedBox(height: 30),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF2E7D32), width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(8),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'SCHEDULE AN ENTERPRISE CONSULTATION',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2E7D32),
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward,
                        size: 18,
                        color: Color(0xFF2E7D32),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 40),
        _buildServiceItem('Tenant Management System'),
        const SizedBox(height: 20),
        _buildServiceItem('Maintenance Coordination'),
        const SizedBox(height: 20),
        _buildServiceItem('Financial Automation'),
        const SizedBox(height: 20),
        _buildServiceItem('Vendor Management'),
        const SizedBox(height: 20),
        _buildServiceItem('Compliance & Reporting'),
      ],
    );
  }

  Widget _buildServiceItem(String title) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(bottom: 16),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xFF2E7D32), width: 1),
              ),
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E7D32),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        IconButton(
          onPressed: () {},
          icon: Container(
            width: 36,
            height: 36,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF2E7D32),
            ),
            child: const Icon(
              Icons.arrow_forward,
              size: 18,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
