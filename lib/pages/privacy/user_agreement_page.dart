import 'package:flutter/material.dart';

class UserAgreementPage extends StatelessWidget {
  const UserAgreementPage({super.key});

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
                            Icons.handshake_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(
                            'User Agreement',
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
                      'This User Agreement ("Agreement") is a legally binding contract between Smar8 Solutions ("Company", "we", "our", or "us") and the individual or entity ("User", "you", or "your") who accesses or uses the Smart Asset Manager application ("App") or related services.\n\nBy creating an account, accessing, or using any part of our services, you acknowledge that you have read, understood, and agreed to comply with this Agreement and all other applicable policies, including our Terms & Conditions, Privacy Notice, Data Protection Policy, and Cookie Policy.\n\nIf you do not agree to these terms, you must immediately discontinue use of the App.',
                    ),
                    
                    _buildSection(
                      '2. Company Information',
                      'Smar8 Solutions is a registered firm under Indian law, headquartered at:\nFirst Floor, Door No. 279, Building ID 51051010019451, Near Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India.\n📞 +91 9048235416\n📧 contact@smar8.com',
                    ),
                    
                    _buildSection(
                      '3. Nature of Services',
                      'The Smart Asset Manager App provides tools and services for:\n\n• Managing building and business assets\n• Coordinating field service operations\n• Handling owner-related service charge payments via UPI\n• Generating and maintaining digital records and reports (such as those required under state migrant worker compliance or service documentation)\n\nThe App is designed to support business and operational efficiency and is not intended for entertainment or personal social use.',
                    ),
                    
                    _buildSection(
                      '4. Account Creation and Responsibilities',
                      'To access certain features, users are required to create an account using a valid email address, mobile number, and password.\n\nYou agree to:\n\n• Provide accurate and up-to-date registration details\n• Maintain confidentiality of your login credentials\n• Accept full responsibility for all activities conducted under your account\n\nThe Company reserves the right to suspend or terminate accounts found to be in violation of this Agreement or any applicable law.',
                    ),
                    
                    _buildSection(
                      '5. Privacy and Data Handling',
                      'Your privacy is our highest priority.\n\nWe explicitly state that Smar8 Solutions does not collect any government-issued identification data, such as Aadhaar, PAN, voter ID, or passport information.\n\nThe App may process limited business and operational data provided by users, strictly for service delivery and compliance reporting.\n\nAll data is securely stored in systems that are not held on our company servers; we use decentralized or cloud-based mechanisms ensuring minimal data exposure.\n\nWe never sell, trade, or share your personal or operational data for marketing or advertising purposes.\n\nPlease refer to our Privacy Notice and Data Protection Policy for full details.',
                    ),
                    
                    _buildSection(
                      '6. Payments and Service Fees',
                      'Users may be required to make service charge payments for specific field services or compliance support features within the App.\n\nAll such payments are collected through UPI (Unified Payments Interface) or other authorized Indian payment gateways.\n\nThese payments may cover administrative tasks such as monthly submission of reports for migrant workers or service operations managed by the App.\n\nYou agree that:\n\n• All payments made are final and non-refundable except where required by law\n• The Company shall not be responsible for delays, transaction failures, or errors caused by third-party payment systems',
                    ),
                    
                    _buildSection(
                      '7. User Obligations',
                      'You agree to use the Smart Asset Manager App strictly for lawful and legitimate business purposes.\n\nYou shall not:\n\n• Attempt to access, modify, or disrupt the App or its data systems\n• Engage in unauthorized data extraction or resale of service information\n• Impersonate another user, entity, or company\n• Upload or transmit harmful, illegal, or defamatory content\n\nViolation of these obligations may result in account termination and potential legal action.',
                    ),
                    
                    _buildSection(
                      '8. Intellectual Property Rights',
                      'All intellectual property associated with the Smart Asset Manager App — including software, design, text, and trademarks — remains the exclusive property of Smar8 Solutions.\n\nUsers are granted a limited, non-exclusive, and non-transferable right to use the App for their intended purpose only.\n\nRefer to our Intellectual Property Policy for details.',
                    ),
                    
                    _buildSection(
                      '9. Limitation of Liability',
                      'While Smar8 Solutions makes every effort to ensure accuracy, reliability, and uninterrupted service, we do not guarantee that the App will always function error-free or without interruptions.\n\nThe Company shall not be held liable for any indirect, incidental, or consequential damages arising out of the use of the App, including but not limited to:\n\n• Data loss or corruption\n• Delays or service interruptions\n• Unauthorized access or security breaches caused by third parties\n\nUsers acknowledge that they use the App at their own discretion and responsibility.',
                    ),
                    
                    _buildSection(
                      '10. Compliance with Law',
                      'This Agreement and your use of the App are governed by and construed in accordance with the laws of India, and particularly subject to the jurisdiction of the courts of Kerala.\n\nUsers are responsible for ensuring their activities within the App comply with applicable laws, regulations, and reporting obligations.',
                    ),
                    
                    _buildSection(
                      '11. Suspension and Termination',
                      'Smar8 Solutions reserves the right to suspend or terminate any user account at its discretion if:\n\n• There is misuse of the service\n• There is a breach of legal, ethical, or data security standards\n• False or misleading information is provided\n\nUpon termination, all rights granted to the user under this Agreement shall cease immediately.',
                    ),
                    
                    _buildSection(
                      '12. Updates and Amendments',
                      'This Agreement may be updated periodically to reflect legal, regulatory, or operational changes.\n\nAny updates will be published on our official website and will become effective immediately upon posting.\n\nContinued use of the App after any such updates shall constitute acceptance of the revised Agreement.',
                    ),
                    
                    _buildSection(
                      '13. Contact Information',
                      'For questions or assistance related to this Agreement or your account, please contact:\n\nSmar8 Solutions\nFirst Floor, Door No. 279, Building ID 51051010019451\nNear Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India\n📞 +91 9048235416\n📧 contact@smar8.com',
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