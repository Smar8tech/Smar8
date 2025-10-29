import 'package:flutter/material.dart';

class CookieNoticePage extends StatelessWidget {
  const CookieNoticePage({super.key});

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
                            Icons.cookie_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(
                            'Cookie Notice',
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
                      'This Cookie Notice explains how Smar8 Solutions ("Company", "we", "our", or "us") uses cookies and similar technologies on the Smart Asset Manager application ("App") and our associated websites.\n\nThis Notice describes what cookies are, how we use them, and how you can manage your cookie preferences.\n\nSmar8 Solutions is a registered firm located at:\nFirst Floor, Door No. 279, Building ID 51051010019451, Near Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India.\n📞 +91 9048235416\n📧 contact@smar8.com',
                    ),
                    
                    _buildSection(
                      '2. What Are Cookies?',
                      'Cookies are small text files placed on your device (computer, tablet, or mobile) when you access a website or use an app.\n\nThey help websites and apps remember your preferences, improve performance, and provide a more personalized user experience.\n\nCookies can be:\n\n• Session cookies – temporary and deleted when you close your browser\n• Persistent cookies – remain stored on your device until manually deleted or they expire automatically',
                    ),
                    
                    _buildSection(
                      '3. How We Use Cookies',
                      'The Smart Asset Manager App uses cookies and similar technologies primarily for functional and operational purposes.\n\nWe use cookies to:\n\n• Maintain secure login sessions\n• Remember your language and region preferences\n• Enhance app and website performance\n• Improve user experience and load times\n• Analyze anonymized usage trends for technical optimization\n\nWe do not use cookies for advertising, marketing, or behavioral tracking.\n\nWe do not sell, trade, or share cookie data with third parties.',
                    ),
                    
                    _buildSection(
                      '4. Types of Cookies Used',
                      'Type of Cookie\tPurpose\tExample\n\nEssential Cookies\tNecessary for login, security, and system functionality\tAuthentication cookies\n\nPreference Cookies\tRemember your app settings and preferences\tLanguage, layout\n\nPerformance Cookies\tCollect anonymous data on performance for improving service\tLoad time analytics\n\nAnalytics Cookies\tUsed for understanding how users interact with our app to enhance experience\tInternal traffic logs\n\nAll analytics performed are aggregate and anonymized, ensuring user privacy.',
                    ),
                    
                    _buildSection(
                      '5. Third-Party Cookies',
                      'The Smart Asset Manager App does not use any third-party advertising or tracking cookies.\n\nHowever, some functional services (for example, map integration or third-party APIs) may use their own minimal cookies strictly for service delivery.\n\nSuch cookies are governed by the privacy policies of those respective third parties.',
                    ),
                    
                    _buildSection(
                      '6. Your Cookie Choices and Control',
                      'You have full control over the cookies stored on your device. You can:\n\n• Adjust browser or app settings to block or delete cookies\n• Use the "Manage Cookies" option available within the App or website\n• Decline non-essential cookies while still maintaining access to core features\n\nPlease note that disabling essential cookies may limit certain functionalities, including secure login and payment operations.',
                    ),
                    
                    _buildSection(
                      '7. Data Protection and Privacy',
                      'All cookie-related data is processed in compliance with our Privacy Notice and Data Protection Policy.\n\nWe emphasize that cookies used by Smar8 Solutions do not collect or store:\n\n• Government ID details (Aadhaar, PAN, etc.)\n• Financial account numbers\n• Personal identity information\n\nAll operations comply with Indian data protection principles and applicable regulations.',
                    ),
                    
                    _buildSection(
                      '8. Updates to This Notice',
                      'We may update this Cookie Notice periodically to reflect operational or legal changes.\n\nRevised versions will include the updated "Last Updated" date at the top of this document.\n\nContinued use of the App or website after such updates constitutes acceptance of the revised Cookie Notice.',
                    ),
                    
                    _buildSection(
                      '9. Contact Information',
                      'For any inquiries or requests regarding this Cookie Notice or your data preferences, please contact:\n\nSmar8 Solutions\nFirst Floor, Door No. 279, Building ID 51051010019451\nNear Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India\n📞 +91 9048235416\n📧 contact@smar8.com',
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