import 'package:flutter/material.dart';

class AppFooter extends StatelessWidget {
  final Function(String)? onPrivacyLinkClicked;
  
  const AppFooter({super.key, this.onPrivacyLinkClicked});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        
        return Container(
          color: const Color(0xFF1B5E20), // Dark green instead of black
          padding: EdgeInsets.all(isMobile ? 20 : 40),
          child: isMobile ? _buildMobileFooter() : _buildDesktopFooter(),
        );
      },
    );
  }

  Widget _buildDesktopFooter() {
    return Column(
      children: [
        // Top Section: "Explore more"
        _buildExploreMoreSection(),
        const SizedBox(height: 40),
        // Bottom Section: Branding + CORPORATE/LEGAL
        _buildBrandingAndLinksSection(),
      ],
    );
  }

  Widget _buildMobileFooter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SMAR8 Solutions Logo and Description
        _buildBrandingSection(),
        const SizedBox(height: 30),
        // CORPORATE Section
        _buildCorporateSection(),
        const SizedBox(height: 30),
        // LEGAL Section
        _buildLegalSection(),
      ],
    );
  }

  Widget _buildExploreMoreSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Explore more',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _buildColumn('About Us', _getAboutUsLinks())),
            Expanded(child: _buildColumn('Technology/Innovation', _getTechnologyLinks())),
            Expanded(child: _buildColumn('Insights', _getInsightsLinks())),
            Expanded(child: _buildColumn('Investor Relations', _getInvestorRelationsLinks())),
            Expanded(child: _buildColumn('Corporate sustainability', _getCorporateSustainabilityLinks())),
            Expanded(child: _buildColumn('Careers', _getCareersLinks())),
            Expanded(child: _buildColumn('Media Center', _getMediaCenterLinks())),
          ],
        ),
      ],
    );
  }

  Widget _buildColumn(String title, List<Map<String, dynamic>> items) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey, width: 0.5),
              ),
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 12),
          ...items.map((item) {
            if (item['isSubHeading'] == true) {
              return Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 4),
                child: Text(
                  item['text'] as String,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[400],
                    letterSpacing: 0.5,
                  ),
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                item['text'] as String,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[300],
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }

  Widget _buildBrandingAndLinksSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Side: Branding
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'SMAR8 Solutions.',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 500,
                child: Text(
                  'As a leading property and asset management solutions provider, our purpose at SMAR8 is to help property owners and tenants experience seamless living and working environments. We specialize in comprehensive property management, smart asset solutions, and innovative real estate services that transform how properties are managed.',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[300],
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 40),
        // Right Side: CORPORATE and LEGAL
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: _buildCorporateSection()),
              const SizedBox(width: 40),
              Expanded(child: _buildLegalSection()),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBrandingSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'SMAR8 Solutions.',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'As a leading property and asset management solutions provider, our purpose at SMAR8 is to help property owners and tenants experience seamless living and working environments. We specialize in comprehensive property management, smart asset solutions, and innovative real estate services.',
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey[300],
            height: 1.5,
          ),
        ),
      ],
    );
  }

  Widget _buildCorporateSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'CORPORATE',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF66BB6A), // Light green accent
          ),
        ),
        const SizedBox(height: 16),
        ..._getCorporateLinks().map((link) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: GestureDetector(
              onTap: () => onPrivacyLinkClicked?.call(link),
              child: Text(
                link,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  decoration: link == 'Contact Us' ? TextDecoration.underline : TextDecoration.none,
                ),
              ),
            ),
          );
        }).toList(),
      ],
    );
  }

  Widget _buildLegalSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'LEGAL',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF66BB6A), // Light green accent
          ),
        ),
        const SizedBox(height: 16),
        ..._getLegalLinks().map((link) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: GestureDetector(
              onTap: () => onPrivacyLinkClicked?.call(link),
              child: Text(
                link,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          );
        }).toList(),
      ],
    );
  }

  // Data Methods
  List<Map<String, dynamic>> _getAboutUsLinks() {
    return [
      {'text': 'About SMAR8 Solutions', 'isSubHeading': false},
      {'text': 'Principles', 'isSubHeading': false},
      {'text': 'Leadership', 'isSubHeading': false},
      {'text': 'History', 'isSubHeading': false},
      {'text': 'Contacts and Locations', 'isSubHeading': false},
    ];
  }

  List<Map<String, dynamic>> _getNewsroomLinks() {
    return [
      {'text': 'Newsroom', 'isSubHeading': false},
      {'text': 'Media Contacts', 'isSubHeading': false},
    ];
  }

  List<Map<String, dynamic>> _getMediaCenterLinks() {
    return [
      {'text': 'Press Releases', 'isSubHeading': false},
      {'text': 'Recent announcements', 'isSubHeading': false},
      {'text': 'Product launches', 'isSubHeading': false},
      {'text': 'Organization chart', 'isSubHeading': false},
      {'text': 'Key milestones', 'isSubHeading': false},
      {'text': 'Awards & Recognition', 'isSubHeading': false},
      {'text': 'Image & Video', 'isSubHeading': false},
    ];
  }

  List<Map<String, dynamic>> _getInsightsLinks() {
    return [
      {'text': 'Market Insights', 'isSubHeading': false},
      {'text': 'Investment Views', 'isSubHeading': false},
      {'text': 'Research Reports', 'isSubHeading': false},
    ];
  }

  List<Map<String, dynamic>> _getInvestorRelationsLinks() {
    return [
      {'text': 'Financial Reports', 'isSubHeading': false},
      {'text': 'Stock Information', 'isSubHeading': false},
      {'text': 'Corporate Governance', 'isSubHeading': false},
      {'text': 'Events & Presentations', 'isSubHeading': false},
    ];
  }

  List<Map<String, dynamic>> _getCorporateSustainabilityLinks() {
    return [
      {'text': 'Our Approach', 'isSubHeading': false},
      {'text': 'Environmental', 'isSubHeading': false},
      {'text': 'Social Responsibility', 'isSubHeading': false},
      {'text': 'ESG Reports', 'isSubHeading': false},
    ];
  }

  List<Map<String, dynamic>> _getCareersLinks() {
    return [
      {'text': 'Open Positions', 'isSubHeading': false},
      {'text': 'Life at SMAR8', 'isSubHeading': false},
      {'text': 'Benefits & Growth', 'isSubHeading': false},
    ];
  }

  List<Map<String, dynamic>> _getTechnologyLinks() {
    return [
      {'text': 'Our Technology', 'isSubHeading': false},
      {'text': 'Innovation Hub', 'isSubHeading': false},
      {'text': 'R&D Labs', 'isSubHeading': false},
      {'text': 'Tech Resources', 'isSubHeading': false},
    ];
  }

  List<String> _getCorporateLinks() {
    return [
      'Company Overview',
      'Leadership Team',
      'Press Releases',
      'Investor Relations',
      'CSR / Sustainability',
      'Careers',
      'Contact Us',
      'Accessibility',
    ];
  }

  List<String> _getLegalLinks() {
    return [
      'Terms & Conditions',
      'Privacy Notice',
      'Refund Policy',
      'Disclaimer',
      'Data Protection',
      'Intellectual Property',
      'User Agreement',
      'Cookie Notice',
      'Manage Cookies',
    ];
  }
}
