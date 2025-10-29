import 'package:flutter/material.dart';

class IntellectualPropertyPolicyPage extends StatelessWidget {
  const IntellectualPropertyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;

        return SingleChildScrollView(
          child: Column(
            children: [
              // Professional Header Section
              Container(
                padding: EdgeInsets.all(isMobile ? 24 : 80),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF1B5E20),
                      Color(0xFF2E7D32),
                      Color(0xFF388E3C),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.copyright_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(
                            'Intellectual Property Policy',
                            style: TextStyle(
                              fontSize: isMobile ? 28 : 42,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: -0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Last Updated: October 2025',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.9),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              // Document Content
              Container(
                padding: EdgeInsets.all(isMobile ? 24 : 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSection(
                      '1. Introduction',
                      'This Intellectual Property Policy ("Policy") governs the ownership, protection, and permitted use of all intellectual property ("IP") associated with the Smart Asset Manager application ("App") and related digital assets developed and managed by Smar8 Solutions ("Company", "we", "our", or "us").\n\nSmar8 Solutions is a registered firm operating from:\nFirst Floor, Door No. 279, Building ID 51051010019451, Near Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India.\n\nThis Policy ensures that the Company\'s proprietary rights are respected and that users understand the boundaries of permitted use.',
                    ),
                    
                    _buildSection(
                      '2. Ownership of Intellectual Property',
                      'All intellectual property rights, title, and interest in the Smart Asset Manager App and all associated materials are the exclusive property of Smar8 Solutions.\n\nThis includes, but is not limited to:\n\n• Software code, architecture, algorithms, and interfaces\n• App design, layout, and graphical elements\n• Text content, documentation, and user manuals\n• Logos, trademarks, service marks, and trade names\n• Databases, data structures, and technical configurations\n• Any other creative or technical work produced by or for Smar8 Solutions\n\nNo transfer or assignment of ownership shall occur through use of the App or its services.',
                    ),
                    
                    _buildSection(
                      '3. Use of the App and Materials',
                      'Users are granted a limited, non-exclusive, non-transferable, and revocable license to access and use the Smart Asset Manager App solely for lawful business or operational purposes.\n\nUnder this license, users may not:\n\n• Copy, modify, distribute, or reproduce any part of the App or its source code\n• Reverse-engineer, decompile, or extract data from the App\n• Remove or alter copyright, trademark, or proprietary notices\n• Use the App for commercial resale, sublicensing, or distribution without written consent\n• Create derivative works based on the App\'s content or technology\n\nAny unauthorized use constitutes a violation of this Policy and may result in legal action.',
                    ),
                    
                    _buildSection(
                      '4. Trademarks and Branding',
                      'The name "Smart Asset Manager", the company name "Smar8 Solutions", and associated logos and symbols are trademarks or service marks owned and protected by Smar8 Solutions.\n\nUsers are not permitted to use any of our marks in any manner that could cause confusion, imply endorsement, or misrepresent association with our company.\n\nWritten permission must be obtained for any form of co-branding, promotional reference, or media use involving our name or logo.',
                    ),
                    
                    _buildSection(
                      '5. User-Generated Data and Content',
                      'Any data or content that users upload or generate within the Smart Asset Manager App (such as service records, payment entries, or reports) remains the property of the respective user or entity.\n\nHowever, by using the App, users grant Smar8 Solutions a limited right to process, display, and store such data solely for operational and compliance-related purposes.\n\nWe do not claim ownership of user data, nor do we sell, share, or distribute such data without explicit consent.',
                    ),
                    
                    _buildSection(
                      '6. Protection of Intellectual Property Rights',
                      'Smar8 Solutions actively protects its intellectual property through technical safeguards, contractual controls, and legal enforcement when necessary.\n\nWe reserve the right to:\n\n• Monitor and investigate unauthorized usage\n• Issue cease-and-desist notices for IP infringements\n• Pursue civil or criminal remedies under applicable laws, including the Indian Copyright Act, 1957, and the Trademarks Act, 1999\n\nViolators may face immediate account suspension and legal consequences.',
                    ),
                    
                    _buildSection(
                      '7. Third-Party Intellectual Property',
                      'The Smart Asset Manager App may include components, APIs, or integrations provided by third parties under their own licenses.\n\nAll such third-party intellectual property remains the property of their respective owners.\n\nWe respect the rights of all IP holders and require our users to do the same. Any unauthorized use or reproduction of third-party content is strictly prohibited.',
                    ),
                    
                    _buildSection(
                      '8. Reporting Intellectual Property Violations',
                      'If you believe that any content within the Smart Asset Manager App infringes upon your intellectual property rights, please notify us immediately by sending a written notice to contact@smar8.com.\n\nYour notice should include:\n\n• A detailed description of the alleged infringement\n• Proof of ownership of the intellectual property\n• Contact details for verification\n\nWe will investigate all valid claims promptly and take appropriate action, including removal or suspension of infringing material if necessary.',
                    ),
                    
                    _buildSection(
                      '9. Enforcement and Remedies',
                      'Violation of this Policy may result in:\n\n• Termination or suspension of user accounts\n• Legal proceedings for damages or injunctions\n• Reporting to regulatory authorities, if applicable\n\nSmar8 Solutions reserves all rights to protect its intellectual property to the fullest extent permitted by law.',
                    ),
                    
                    _buildSection(
                      '10. Governing Law and Jurisdiction',
                      'This Policy shall be governed by and construed in accordance with the laws of India, and any disputes arising shall be subject to the exclusive jurisdiction of the courts located in Kerala.',
                    ),
                    
                    _buildSection(
                      '11. Updates to This Policy',
                      'We may modify or update this Intellectual Property Policy periodically to reflect legal, technological, or operational changes.\n\nThe updated version will be effective as of the "Last Updated" date indicated above.',
                    ),
                    
                    _buildSection(
                      '12. Contact Information',
                      'For questions or notifications related to intellectual property, please contact:\n\nSmar8 Solutions\nFirst Floor, Door No. 279, Building ID 51051010019451\nNear Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India\n📞 +91 9048235416\n📧 contact@smar8.com',
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2E7D32),
              letterSpacing: -0.3,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Color(0xFF424242),
            ),
            softWrap: true,
            overflow: TextOverflow.visible,
          ),
        ],
      ),
    );
  }
}