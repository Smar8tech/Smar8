import 'package:flutter/material.dart';

class DataProtectionPolicyPage extends StatelessWidget {
  const DataProtectionPolicyPage({super.key});

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
                            Icons.security_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(
                            'Data Protection Policy',
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
                      'Smar8 Solutions ("Company", "we", "our", or "us") is committed to upholding the highest standards of data protection and confidentiality for all users of the Smart Asset Manager application ("App") and associated online platforms.\n\nThis Data Protection Policy outlines how we collect, process, store, and protect personal and operational data in compliance with applicable Indian data privacy regulations and internationally accepted standards of data governance.',
                    ),
                    
                    _buildSection(
                      '2. Purpose and Scope',
                      'This Policy applies to all data collected, processed, or managed through the Smart Asset Manager App, website, or any affiliated digital channels.\n\nIt covers:\n\n• Data collected from users (property owners and related partners)\n• Data received through service activities, including payments and reports\n• Data processed for compliance and operational analytics\n\nThis Policy applies to all employees, contractors, and service providers of Smar8 Solutions who handle or have access to user data.',
                    ),
                    
                    _buildSection(
                      '3. Core Principles of Data Protection',
                      'Smar8 Solutions adheres to the following principles:\n\n1. Lawfulness, Fairness, and Transparency: Data shall be processed lawfully, fairly, and in a transparent manner.\n\n2. Purpose Limitation: Data shall be collected only for specific, legitimate business purposes and not used beyond those purposes.\n\n3. Data Minimization: Only the minimum necessary data is collected to deliver our services.\n\n4. Accuracy: We ensure that data is accurate, relevant, and up to date.\n\n5. Storage Limitation: Data is retained only for as long as necessary to meet legal or operational obligations.\n\n6. Integrity and Confidentiality: We protect data using secure technologies and confidentiality safeguards.\n\n7. Accountability: We take full responsibility for ensuring compliance with this Policy and applicable laws.',
                    ),
                    
                    _buildSection(
                      '4. Data Collected',
                      'We collect limited information necessary for user registration, service coordination, and payment processing.\n\nThis may include:\n\n• Name, email address, and mobile number\n• Payment details related to UPI transactions (excluding UPI PINs or banking credentials)\n• Operational data such as service requests, schedules, and reports\n\nWe do not collect or store government-issued identification documents (Aadhaar, PAN, Passport, etc.) or sensitive personal identifiers.',
                    ),
                    
                    _buildSection(
                      '5. Data Collection and Processing Methods',
                      'Data is collected:\n\n• Directly from users during registration, service usage, or payment activities\n• Automatically via system logs and analytics tools for performance and security monitoring\n\nAll data processing activities are limited to operational needs, including:\n\n• User authentication and access control\n• Communication and service delivery\n• Payment verification and reporting\n• Legal or regulatory submissions (e.g., state-mandated migrant worker reports)',
                    ),
                    
                    _buildSection(
                      '6. Data Storage and Security Measures',
                      'We use cloud-based infrastructure provided by secure and compliant third-party providers.\n\nNo user data is stored on Smar8 Solutions\' physical servers.\n\nSecurity measures include:\n\n• Encrypted data transmission (SSL/TLS)\n• Restricted access to authorized personnel only\n• Periodic system audits and backups\n• Monitoring for unauthorized access or data breaches',
                    ),
                    
                    _buildSection(
                      '7. Data Retention',
                      'We retain user data only for as long as necessary to fulfill the following purposes:\n\n• Providing continuous service support\n• Meeting statutory and regulatory obligations\n• Resolving disputes or enforcing agreements\n\nOnce data is no longer required, it is securely deleted or anonymized in accordance with standard data retention policies.',
                    ),
                    
                    _buildSection(
                      '8. Data Access and Control',
                      'Access to user data is strictly limited to authorized personnel who require it for operational or legal reasons.\n\nWe maintain audit logs and internal controls to prevent misuse, alteration, or unauthorized disclosure of data.\n\nEmployees and contractors are bound by confidentiality agreements and are regularly trained on data protection practices.',
                    ),
                    
                    _buildSection(
                      '9. Data Sharing and Disclosure',
                      'We do not sell, rent, or trade user data with third parties.\n\nData may be shared only under the following conditions:\n\n• With approved service providers under data protection agreements (e.g., cloud hosting or payment platforms)\n• When legally required by government authorities or courts\n• To enforce our Terms and Conditions or protect user safety\n\nAny such disclosure is done in accordance with applicable Indian laws and data protection principles.',
                    ),
                    
                    _buildSection(
                      '10. User Rights and Requests',
                      'Users have the right to:\n\n• Request access to their data\n• Correct inaccuracies or update information\n• Request deletion of personal data (where legally permissible)\n• Withdraw consent for data processing\n\nRequests can be made via contact@smar8.com.\n\nWe will respond to all valid requests within a reasonable timeframe, subject to verification and compliance requirements.',
                    ),
                    
                    _buildSection(
                      '11. Data Breach Management',
                      'In the unlikely event of a data breach, Smar8 Solutions will:\n\n• Promptly investigate and contain the breach\n• Notify affected users and relevant authorities (as required by law)\n• Implement corrective measures to prevent recurrence\n\nA formal incident response plan is maintained and reviewed periodically.',
                    ),
                    
                    _buildSection(
                      '12. Compliance and Monitoring',
                      'We monitor compliance with this Policy through:\n\n• Regular internal audits\n• Training programs for staff\n• Technical and procedural reviews of security systems\n\nAny identified non-compliance is addressed immediately through corrective actions.',
                    ),
                    
                    _buildSection(
                      '13. Governing Law and Jurisdiction',
                      'This Policy is governed by the laws of India, and any disputes arising hereunder shall be subject to the exclusive jurisdiction of the courts in Kerala.',
                    ),
                    
                    _buildSection(
                      '14. Updates to This Policy',
                      'Smar8 Solutions may revise this Data Protection Policy from time to time to reflect changes in legal, technical, or operational practices.\n\nAll updates will be published on our website and will take effect as of the "Last Updated" date mentioned above.',
                    ),
                    
                    _buildSection(
                      '15. Contact Information',
                      'For questions, concerns, or data protection requests, please contact:\n\nSmar8 Solutions\nFirst Floor, Door No. 279, Building ID 51051010019451\nNear Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India\n📞 +91 9048235416\n📧 contact@smar8.com',
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