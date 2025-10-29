import 'package:flutter/material.dart';

class ManageCookiesPolicyPage extends StatelessWidget {
  const ManageCookiesPolicyPage({super.key});

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
                            Icons.settings_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(
                            'Manage Cookies Policy',
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
                      'This Manage Cookies Policy ("Policy") explains how users of the Smart Asset Manager application ("App") and website operated by Smar8 Solutions ("Company", "we", "our", or "us") can control and manage cookies and similar technologies used in our digital platforms.\n\nOur Company is committed to ensuring transparency, privacy, and user choice when it comes to digital data handling.\n\nSmar8 Solutions is a registered firm located at:\nFirst Floor, Door No. 279, Building ID 51051010019451, Near Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India.\n📞 +91 9048235416\n📧 contact@smar8.com',
                    ),
                    
                    _buildSection(
                      '2. Purpose of This Policy',
                      'The purpose of this Policy is to:\n\n• Provide clear information about how cookies are used\n• Explain the options available for managing cookie preferences\n• Ensure users understand how to modify or revoke consent\n• Uphold compliance with Indian privacy laws and global best practices\n\nThis Policy should be read together with our Cookie Notice, Privacy Notice, and Data Protection Policy.',
                    ),
                    
                    _buildSection(
                      '3. What Are Cookies and Why We Use Them',
                      'Cookies are small text files stored on your device that enable our App and website to function effectively.\n\nThey are used primarily to:\n\n• Maintain secure login sessions\n• Save user settings such as language and region\n• Improve user experience and technical performance\n• Generate anonymized analytical insights for service enhancement\n\nWe do not use cookies to profile users, sell data, or display third-party advertisements.',
                    ),
                    
                    _buildSection(
                      '4. Your Rights and Controls',
                      'You have complete control over the use of cookies on your device. You may:\n\n1. Accept All Cookies:\nAllow all cookies to enable full functionality of the App or website.\n\n2. Reject Non-Essential Cookies:\nDecline optional cookies while keeping essential cookies active for security and functionality.\n\n3. Customize Preferences:\nUse the cookie settings feature within the App or website to selectively enable or disable specific categories of cookies.\n\n4. Withdraw Consent:\nAt any time, you may revisit your cookie preferences and withdraw previously granted consent.',
                    ),
                    
                    _buildSection(
                      '5. Managing Cookies Through Your Browser or Device',
                      'You can manage or delete cookies through your browser or device settings. Below are general instructions:\n\n• Google Chrome: Settings → Privacy and Security → Cookies and Other Site Data\n• Mozilla Firefox: Options → Privacy & Security → Cookies and Site Data\n• Microsoft Edge: Settings → Privacy, Search, and Services → Cookies\n• Safari: Preferences → Privacy → Manage Website Data\n\nPlease note that disabling cookies may affect certain core features, such as secure login or payment processing through UPI.',
                    ),
                    
                    _buildSection(
                      '6. Essential vs. Non-Essential Cookies',
                      'We categorize cookies into two types for easy management:\n\nCategory\tDescription\tUser Control\n\nEssential Cookies\tRequired for secure login, payment, and basic system functions\tCannot be disabled individually\n\nNon-Essential Cookies\tUsed for performance, preferences, and analytics improvements\tFully optional\n\nWe recommend allowing at least essential cookies to maintain smooth service operation.',
                    ),
                    
                    _buildSection(
                      '7. Data Collected Through Cookies',
                      'Cookies used by Smar8 Solutions do not collect or store any personal identification data such as Aadhaar, PAN, passport, or financial account details.\n\nData stored via cookies is limited to:\n\n• Session identifiers\n• User preferences (language, theme, layout)\n• Non-personal system logs for technical improvement\n\nAll cookie data is anonymized, encrypted where applicable, and compliant with Indian data protection guidelines.',
                    ),
                    
                    _buildSection(
                      '8. Storage and Duration',
                      'Cookies used in the Smart Asset Manager App are stored only as long as required for their intended operational purpose.\n\n• Session cookies expire when the browser or app is closed\n• Persistent cookies may remain for a predefined duration but can be cleared anytime manually by the user',
                    ),
                    
                    _buildSection(
                      '9. Third-Party Integrations',
                      'Our App may use third-party integrations for features such as maps, analytics, or secure payments.\n\nAny cookies generated by these integrations are governed by their respective privacy policies.\n\nWe do not control or share data collected by third-party cookies.',
                    ),
                    
                    _buildSection(
                      '10. Updates to This Policy',
                      'Smar8 Solutions may update this Manage Cookies Policy periodically to reflect:\n\n• Legal or regulatory changes\n• Technical updates\n• Enhancements to user control mechanisms\n\nThe updated version will be published with the revised "Last Updated" date at the top of this document.',
                    ),
                    
                    _buildSection(
                      '11. Contact Information',
                      'If you have questions about cookie usage, preferences, or your data rights, please contact:\n\nSmar8 Solutions\nFirst Floor, Door No. 279, Building ID 51051010019451\nNear Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India\n📞 +91 9048235416\n📧 contact@smar8.com',
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