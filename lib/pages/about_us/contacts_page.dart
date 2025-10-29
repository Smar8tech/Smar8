import 'package:flutter/material.dart';
import '../../components/contact_location_section.dart';
import '../../components/partnership_section.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

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
              color: const Color(0xFF0277BD),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Get in Touch',
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
                      'Whether you\'re looking for support, have questions about our services, or want to explore partnership opportunities, our team is here to help. Reach out to us through any of the channels below.',
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
            const ContactLocationSection(),
            // Additional Contact Methods
            Container(
              padding: EdgeInsets.all(isMobile ? 20 : 60),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Additional Ways to Connect',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Container(
                    height: 4,
                    width: 80,
                    color: const Color(0xFF0277BD),
                    margin: const EdgeInsets.only(top: 10, bottom: 40),
                  ),
                  isMobile ? _buildMobileContactMethods() : _buildDesktopContactMethods(),
                ],
              ),
            ),
            const PartnershipSection(),
          ],
        );
      },
    );
  }

  Widget _buildDesktopContactMethods() {
    return Row(
      children: [
        Expanded(
          child: _buildContactMethodCard(
            icon: Icons.business_center,
            title: 'Sales',
            description: 'Interested in our solutions? Our sales team is ready to help.',
            contact: 'Contact@smar8.com',
            action: 'Schedule a Demo',
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: _buildContactMethodCard(
            icon: Icons.headset_mic,
            title: 'Support',
            description: 'Existing customers can reach our support team 24/7.',
            contact: 'Contact@smar8.com',
            action: 'Get Help',
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: _buildContactMethodCard(
            icon: Icons.handshake,
            title: 'Partnerships',
            description: 'Explore collaboration opportunities with SMAR8.',
            contact: 'Contact@smar8.com',
            action: 'Learn More',
          ),
        ),
      ],
    );
  }

  Widget _buildMobileContactMethods() {
    return Column(
      children: [
        _buildContactMethodCard(
          icon: Icons.business_center,
          title: 'Sales',
          description: 'Interested in our solutions? Our sales team is ready to help.',
          contact: 'Contact@smar8.com',
          action: 'Schedule a Demo',
        ),
        const SizedBox(height: 20),
        _buildContactMethodCard(
          icon: Icons.headset_mic,
          title: 'Support',
          description: 'Existing customers can reach our support team 24/7.',
          contact: 'Contact@smar8.com',
          action: 'Get Help',
        ),
        const SizedBox(height: 20),
        _buildContactMethodCard(
          icon: Icons.handshake,
          title: 'Partnerships',
          description: 'Explore collaboration opportunities with SMAR8.',
          contact: 'Contact@smar8.com',
          action: 'Learn More',
        ),
      ],
    );
  }

  Widget _buildContactMethodCard({
    required IconData icon,
    required String title,
    required String description,
    required String contact,
    required String action,
  }) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFF0277BD).withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              size: 30,
              color: const Color(0xFF0277BD),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
              height: 1.5,
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Icon(
                  Icons.email,
                  size: 18,
                  color: Colors.blue[600],
                ),
                const SizedBox(width: 8),
                Text(
                  contact,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue[600],
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF0277BD),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              action,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

