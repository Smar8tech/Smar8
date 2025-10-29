import 'package:flutter/material.dart';

class PrivacyNoticePage extends StatelessWidget {
  const PrivacyNoticePage({super.key});

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
                            Icons.privacy_tip_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(
                            'Privacy Notice',
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
                      'Smar8 Solutions ("Company", "we", "our", or "us") values and respects the privacy of every individual who interacts with our digital platforms.\n\nThis Privacy Notice explains how we collect, use, process, and protect personal and operational information when you use the Smart Asset Manager application ("App") and related services.\n\nBy using our App or website, you agree to the terms of this Privacy Notice.',
                    ),
                    
                    _buildSection(
                      '2. Who We Are',
                      'Smar8 Solutions is a registered firm operating from:\nFirst Floor, Door No. 279, Building ID 51051010019451\nNear Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India\n📞 +91 9048235416\n📧 contact@smar8.com\n\nWe provide digital tools for asset and property management, including service coordination, compliance reporting, and financial tracking for property owners and related partners.',
                    ),
                    
                    _buildSection(
                      '3. Information We Collect',
                      'We collect only the information necessary to operate and improve our services.\n\n3.1. Information Provided by Users\n\n• Account details: Email address, mobile number, and password (for authentication)\n• Transaction details: UPI payment confirmations and related service fee data (no banking credentials are stored)\n• Service usage details: Records of services requested, scheduled, or completed\n\n3.2. Information We Do Not Collect\n\nWe explicitly do not collect or store:\n\n• Government-issued identification documents (such as Aadhaar, PAN, or Passport)\n• Financial data like bank account numbers, credit card information, or UPI credentials\n• Sensitive personal information unrelated to our services\n\n3.3. Automatically Collected Data\n\nCertain technical information may be automatically collected for operational integrity, such as:\n\n• Device identifiers, operating system, and version\n• IP address and session timestamps\n• Crash logs or performance metrics\n\nThis data is used solely for performance optimization and troubleshooting.',
                    ),
                    
                    _buildSection(
                      '4. How We Use Information',
                      'Your information is used only for legitimate operational and service-related purposes, including:\n\n• Account creation and verification\n• Providing and improving App functionality\n• Generating compliance reports (e.g., migrant worker submissions in applicable states)\n• Processing service payments and receipts\n• Communicating service updates or administrative notices\n• Ensuring platform security and fraud prevention\n\nWe do not use collected data for advertising or profiling.',
                    ),
                    
                    _buildSection(
                      '5. Legal Basis for Processing',
                      'Our data handling practices are based on:\n\n• User Consent: Voluntary creation of an account or payment authorization\n• Contractual Necessity: To deliver field services or generate required reports\n• Legal Compliance: To fulfill statutory reporting obligations in certain jurisdictions\n• Legitimate Interest: To improve our service quality and protect user data from misuse',
                    ),
                    
                    _buildSection(
                      '6. Data Storage and Retention',
                      'Data is stored securely on cloud infrastructure managed by reputable third-party providers.\n\nWe do not store data on our own company servers.\n\nUser information is retained only for as long as required to:\n\n• Fulfill service obligations, or\n• Meet legal and accounting requirements\n\nWhen data is no longer needed, it is securely deleted or anonymized.',
                    ),
                    
                    _buildSection(
                      '7. Data Protection and Security',
                      'We employ industry-standard measures to protect user data against unauthorized access, alteration, or loss.\n\nThese include:\n\n• Encrypted data transmission\n• Restricted data access on a need-to-know basis\n• Regular monitoring for unauthorized activity\n\nWhile we strive for maximum security, no system can be fully immune to cyber risks. Users are encouraged to maintain strong passwords and secure devices.',
                    ),
                    
                    _buildSection(
                      '8. Sharing and Disclosure',
                      'We do not sell, rent, or trade personal data to any third party.\n\nData may be shared only in the following limited cases:\n\n• With service providers or partners under confidentiality agreements (for hosting, payment processing, or technical support)\n• When required by law, regulation, or court order\n• To protect the rights, property, or safety of Smar8 Solutions or its users\n\nAll such sharing is conducted in compliance with applicable Indian data protection laws.',
                    ),
                    
                    _buildSection(
                      '9. User Rights',
                      'Under applicable privacy regulations, users may have the right to:\n\n• Access and review their data\n• Request correction or deletion of inaccurate data\n• Withdraw consent for data processing\n• Request clarification regarding how their data is handled\n\nRequests can be made via contact@smar8.com and will be processed within a reasonable timeframe.',
                    ),
                    
                    _buildSection(
                      '10. International Data Transfer',
                      'Our operations are primarily based in India. However, some service providers may use servers located outside India.\n\nIn such cases, we ensure that equivalent data protection safeguards are applied in compliance with Indian data privacy standards.',
                    ),
                    
                    _buildSection(
                      '11. Children\'s Privacy',
                      'Our services are not intended for individuals under the age of 18.\n\nWe do not knowingly collect or process information from minors.\n\nIf we become aware that data has been collected from a minor without parental consent, it will be deleted immediately.',
                    ),
                    
                    _buildSection(
                      '12. Changes to This Privacy Notice',
                      'We may update this Privacy Notice periodically to reflect changes in our practices or legal requirements.\n\nThe revised version will be effective as of the "Last Updated" date indicated at the top.',
                    ),
                    
                    _buildSection(
                      '13. Contact Us',
                      'For questions, concerns, or privacy-related requests, please contact:\n\nSmar8 Solutions\nFirst Floor, Door No. 279, Building ID 51051010019451\nNear Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India\n📞 +91 9048235416\n📧 contact@smar8.com',
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