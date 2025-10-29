import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountDeletionPage extends StatelessWidget {
  const AccountDeletionPage({super.key});

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
                            Icons.delete_forever_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Expanded(
                          child: Text(
                            'Account Deletion Request',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Request to delete your SMAR8 Solutions account and all associated data',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),

              // Main Content
              Container(
                padding: EdgeInsets.all(isMobile ? 24 : 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // How to Request Deletion
                    _buildSection(
                      'How to Request Account Deletion',
                      'Follow these simple steps to request deletion of your account and all associated data:',
                      [
                        'Send an email to: support@smar8solutions.com',
                        'Subject line: "Account Deletion Request"',
                        'Include your registered email address',
                        'Include your full name as registered in the app',
                        'Specify "I want to delete my account and all associated data"',
                        'We will process your request within 7 business days',
                      ],
                    ),

                    const SizedBox(height: 40),

                    // Email Template
                    _buildEmailTemplate(),

                    const SizedBox(height: 40),

                    // What Gets Deleted
                    _buildSection(
                      'What Data Will Be Deleted',
                      'When you request account deletion, the following data will be permanently removed:',
                      [
                        'Your user account and profile information',
                        'All building and property data you created',
                        'All tenant/person records and information',
                        'All payment records and transaction history',
                        'All uploaded photos and documents',
                        'All app settings and preferences',
                        'All authentication tokens and sessions',
                      ],
                    ),

                    const SizedBox(height: 40),

                    // Data Retention
                    _buildSection(
                      'Data Retention Policy',
                      'Important information about data retention:',
                      [
                        'Account deletion is permanent and cannot be undone',
                        'We do not retain any personal data after deletion',
                        'Backup data is also deleted within 30 days',
                        'No data is shared with third parties',
                        'All local device data should be cleared by uninstalling the app',
                      ],
                    ),

                    const SizedBox(height: 40),

                    // Contact Information
                    _buildContactSection(),

                    const SizedBox(height: 40),

                    // Legal Notice
                    _buildLegalNotice(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSection(String title, String description, List<String> items) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2E7D32),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 16),
          ...items.map((item) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.check_circle,
                  color: Color(0xFF2E7D32),
                  size: 20,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget _buildEmailTemplate() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Email Template',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1976D2),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'To: support@smar8solutions.com',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Subject: Account Deletion Request',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Dear SMAR8 Solutions Support Team,\n\n'
                  'I am writing to request the permanent deletion of my account and all associated data.\n\n'
                  'Please find my account details below:\n'
                  '• Registered Email: [Your Email Address]\n'
                  '• Full Name: [Your Full Name]\n'
                  '• Account Type: Building Owner/Tenant Manager\n\n'
                  'I understand that this action is permanent and cannot be undone. I confirm that I want to delete my account and all associated data including:\n'
                  '• User account and profile information\n'
                  '• All building and property data\n'
                  '• All tenant records and information\n'
                  '• All payment records\n'
                  '• All uploaded photos and documents\n\n'
                  'Please process this request and confirm deletion within 7 business days.\n\n'
                  'Thank you for your assistance.\n\n'
                  'Best regards,\n'
                  '[Your Name]',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactSection() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.green[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contact Information',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2E7D32),
            ),
          ),
          const SizedBox(height: 16),
          _buildContactItem(
            Icons.email,
            'Email',
            'support@smar8solutions.com',
            'mailto:support@smar8solutions.com',
          ),
          const SizedBox(height: 12),
          _buildContactItem(
            Icons.access_time,
            'Response Time',
            'Within 7 business days',
            null,
          ),
          const SizedBox(height: 12),
          _buildContactItem(
            Icons.security,
            'Data Protection',
            'GDPR Compliant',
            null,
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String label, String value, String? url) {
    return Row(
      children: [
        Icon(icon, color: const Color(0xFF2E7D32), size: 20),
        const SizedBox(width: 12),
        Text(
          '$label: ',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF2E7D32),
          ),
        ),
        if (url != null)
          GestureDetector(
            onTap: () => _launchUrl(url),
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          )
        else
          Text(
            value,
            style: const TextStyle(color: Colors.grey[700]),
          ),
      ],
    );
  }

  Widget _buildLegalNotice() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.orange[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.orange[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(
                Icons.warning_amber,
                color: Colors.orange,
                size: 24,
              ),
              SizedBox(width: 12),
              Text(
                'Important Legal Notice',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'This account deletion process complies with GDPR (General Data Protection Regulation) requirements and Google Play Store policies. By requesting account deletion, you acknowledge that:',
            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
          ),
          const SizedBox(height: 12),
          const Text(
            '• Account deletion is permanent and irreversible\n'
            '• All your data will be permanently removed\n'
            '• You will lose access to all app features\n'
            '• This action cannot be undone\n'
            '• You should backup any important data before requesting deletion',
            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
