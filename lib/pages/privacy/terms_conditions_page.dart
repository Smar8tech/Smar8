import 'package:flutter/material.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

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
                            Icons.description_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(
                            'Terms & Conditions',
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
                      'These Terms and Conditions ("Terms") govern the use of the Smart Asset Manager application ("App") and related services operated by Smar8 Solutions, a registered firm having its office at First Floor, Door No. 279, Building ID 51051010019451, Near Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India ("Company", "we", "our", or "us").\n\nBy accessing or using our App or website, you ("User", "you", or "your") agree to be bound by these Terms. If you do not agree with these Terms, you must discontinue use of the App and associated services immediately.',
                    ),
                    
                    _buildSection(
                      '2. Scope of Services',
                      'The Smart Asset Manager App provides property and asset management tools for owners and service partners.\n\nFeatures may include:\n\n• Asset and service tracking\n• Staff and field service coordination\n• Payment collection through UPI\n• Monthly compliance reporting for migrant worker management (in applicable states)\n• Analytics, communication, and administrative support features\n\nWe reserve the right to modify or enhance any service features at any time without prior notice, while maintaining compliance with applicable laws.',
                    ),
                    
                    _buildSection(
                      '3. User Accounts',
                      'To use certain features, users must create an account with a valid email address, mobile number, and password.\n\nUsers are responsible for maintaining the confidentiality of their account credentials and all activities under their account.\n\nYou agree to provide accurate, current, and complete information during registration and to keep it updated at all times.\n\nWe do not collect or store any government-issued ID information or other personally sensitive identification data.',
                    ),
                    
                    _buildSection(
                      '4. Payments and Fees',
                      'Certain services offered through the App may require payment of service charges. Payments are accepted via Unified Payments Interface (UPI) and other authorized methods.\n\nService fees may include:\n\n• Charges for field services or on-site coordination\n• Compliance-related reporting fees for migrant workers (as required by state regulations)\n\nAll payments made are non-refundable unless otherwise required by applicable law. The Company does not store or have access to users\' UPI credentials or banking information.',
                    ),
                    
                    _buildSection(
                      '5. Data Privacy and Protection',
                      'We are committed to safeguarding user data and privacy.\n\nOur systems do not collect or store personal identification details such as Aadhaar, PAN, passport, or other government IDs.\n\nData generated within the App (such as service reports, communications, and analytics) is processed solely for operational purposes and securely stored on cloud infrastructure managed by compliant third-party providers.\n\nWe do not sell, rent, or trade user data with any third party.\n\nFor detailed data protection practices, please refer to our Privacy Notice and Data Protection Policy.',
                    ),
                    
                    _buildSection(
                      '6. User Responsibilities',
                      'Users agree not to misuse the App or engage in any activity that may harm, disrupt, or compromise the integrity of the platform or other users.\n\nYou must not:\n\n• Attempt to gain unauthorized access to any part of the App or its systems\n• Interfere with the functionality or security of the App\n• Upload malicious code, spam, or unlawful content\n• Use the App for fraudulent or misleading activities\n\nViolation of these conditions may result in suspension or termination of your account.',
                    ),
                    
                    _buildSection(
                      '7. Intellectual Property Rights',
                      'All intellectual property rights in the App, its content, logos, trademarks, designs, software, and related materials are owned by Smar8 Solutions.\n\nUsers are granted a limited, non-exclusive, non-transferable right to access and use the App for lawful purposes only.\n\nUnauthorized reproduction, modification, or distribution of any part of the App is strictly prohibited.\n\nFor further details, refer to our Intellectual Property Policy.',
                    ),
                    
                    _buildSection(
                      '8. Limitation of Liability',
                      'To the fullest extent permitted by law, Smar8 Solutions shall not be liable for any direct, indirect, incidental, or consequential damages arising from your use of the App or inability to use the App.\n\nWe provide our services on an "as is" and "as available" basis, without warranties of any kind.',
                    ),
                    
                    _buildSection(
                      '9. Indemnification',
                      'You agree to indemnify and hold harmless Smar8 Solutions, its directors, employees, affiliates, and agents from and against any claims, liabilities, damages, or expenses arising out of your use of the App, violation of these Terms, or infringement of any rights of a third party.',
                    ),
                    
                    _buildSection(
                      '10. Termination',
                      'We reserve the right to suspend or terminate user accounts at our discretion, without prior notice, for any conduct that violates these Terms or applicable laws.\n\nUpon termination, your right to use the App will immediately cease. All provisions of these Terms that should survive termination shall remain in effect.',
                    ),
                    
                    _buildSection(
                      '11. Governing Law and Jurisdiction',
                      'These Terms shall be governed and construed in accordance with the laws of India, with exclusive jurisdiction in the courts of Kerala.',
                    ),
                    
                    _buildSection(
                      '12. Contact Information',
                      'For any questions or concerns regarding these Terms and Conditions, please contact:\n\nSmar8 Solutions\nFirst Floor, Door No. 279, Building ID 51051010019451\nNear Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India\n📞 +91 9048235416\n📧 contact@smar8.com',
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