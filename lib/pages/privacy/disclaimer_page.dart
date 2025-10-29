import 'package:flutter/material.dart';

class DisclaimerPage extends StatelessWidget {
  const DisclaimerPage({super.key});

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
                            Icons.warning_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(
                            'Disclaimer',
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
                      '1. General Information',
                      'This Disclaimer applies to the Smart Asset Manager mobile application ("App") and related online services operated by Smar8 Solutions, a registered firm located at:\nFirst Floor, Door No. 279, Building ID 51051010019451,\nNear Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India.\n\nBy accessing or using the App or our website, you agree to this Disclaimer. If you do not agree, you must refrain from using our services.',
                    ),
                    
                    _buildSection(
                      '2. Nature of Services',
                      'The Smart Asset Manager App provides digital solutions for property and asset management, including service coordination, billing, and compliance support.\n\nWhile every effort is made to ensure that information provided through the App is accurate and reliable, Smar8 Solutions does not guarantee the completeness, accuracy, or timeliness of any information displayed or generated within the App.\n\nAll data, reports, and analytics are for operational assistance and reference purposes only, and should not be interpreted as professional, legal, financial, or compliance advice.',
                    ),
                    
                    _buildSection(
                      '3. No Warranties',
                      'The App and its related services are provided on an "as is" and "as available" basis without warranties of any kind, express or implied.\n\nWe expressly disclaim all warranties, including but not limited to:\n\n• Fitness for a particular purpose\n• Non-infringement of third-party rights\n• Accuracy, reliability, or completeness of information\n• Continuous or error-free operation of the App\n\nUse of the App and its services is at your own discretion and risk.',
                    ),
                    
                    _buildSection(
                      '4. Limitation of Liability',
                      'To the maximum extent permitted by law, Smar8 Solutions, its owners, employees, agents, and affiliates shall not be held liable for:\n\n• Any direct, indirect, incidental, consequential, or special damages arising from your use or inability to use the App\n• Any errors or omissions in data, reports, or communications\n• Unauthorized access, hacking, or technical failures beyond our reasonable control\n• Service interruptions or loss of data due to third-party hosting environments or network failures\n\nOur total liability, in any case, shall not exceed the total amount paid by you (if any) for the specific service during the period of the claim.',
                    ),
                    
                    _buildSection(
                      '5. Third-Party Links and Services',
                      'The App may include links to third-party websites, payment gateways, or service providers (for example, UPI-based payment systems).\n\nSuch third-party links are provided for convenience only. Smar8 Solutions is not responsible for the content, security, or privacy practices of any external websites or third-party providers.\n\nYou are encouraged to review the respective terms and privacy notices of such third-party services before engaging with them.',
                    ),
                    
                    _buildSection(
                      '6. Payments and Compliance Reports',
                      'All payments made through UPI or similar platforms are processed directly by authorized payment providers.\n\nWe do not store or access any user\'s financial credentials.\n\nService charges collected include, but are not limited to, field service fees and compliance-related submissions (such as migrant worker reports required by certain states).\n\nSmar8 Solutions acts as a facilitator of these services and is not liable for any delays, inaccuracies, or non-compliance resulting from incomplete or incorrect data submitted by users.',
                    ),
                    
                    _buildSection(
                      '7. Data Handling Disclaimer',
                      'While Smar8 Solutions employs reasonable security and data protection measures, no digital platform can guarantee absolute data security.\n\nUsers are responsible for maintaining the confidentiality of their login credentials and ensuring that they access the App from secure devices and networks.\n\nWe do not collect or store government-issued IDs or sensitive personal identifiers, and we do not sell or trade user data.',
                    ),
                    
                    _buildSection(
                      '8. Legal Compliance',
                      'Smar8 Solutions operates under the jurisdiction of Kerala, India, and complies with applicable Indian laws.\n\nUsers are responsible for ensuring that their use of the App and related data is lawful within their respective jurisdictions.',
                    ),
                    
                    _buildSection(
                      '9. Changes to This Disclaimer',
                      'We may update this Disclaimer from time to time to reflect legal, technical, or operational changes.\n\nThe latest version will always be available within the App or on our official website. Continued use of the App after updates constitutes acceptance of the revised Disclaimer.',
                    ),
                    
                    _buildSection(
                      '10. Contact Information',
                      'For questions or clarifications related to this Disclaimer, please contact:\n\nSmar8 Solutions\nFirst Floor, Door No. 279, Building ID 51051010019451\nNear Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India\n📞 +91 9048235416\n📧 contact@smar8.com',
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