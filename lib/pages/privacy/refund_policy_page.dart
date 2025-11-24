import 'package:flutter/material.dart';

class RefundPolicyPage extends StatelessWidget {
  const RefundPolicyPage({super.key});

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
                            color: Colors.white.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.payment_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(
                            'Refund Policy',
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
                        color: Colors.white.withValues(alpha: 0.9),
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
                      'This Refund Policy ("Policy") outlines the terms and conditions under which Smar8 Solutions ("Company", "we", "our", or "us") processes refunds for payments made through the Smart Asset Manager application ("App").\n\nBy using our App and making payments, you ("User", "you", or "your") agree to this Refund Policy. This Policy should be read in conjunction with our Terms & Conditions and Privacy Notice.',
                    ),
                    
                    _buildSection(
                      '2. General Refund Policy',
                      'Smar8 Solutions provides digital services and field coordination services through the Smart Asset Manager App. Our general policy regarding refunds is as follows:\n\n• Most service charges are non-refundable once payment has been processed\n• Refunds may be considered only in specific circumstances outlined in this Policy\n• All refund requests must be submitted within the timeframes specified below\n• Refunds, if approved, will be processed to the original payment method used',
                    ),
                    
                    _buildSection(
                      '3. Non-Refundable Services',
                      'The following services and charges are generally non-refundable:\n\n• Field service coordination fees\n• Compliance reporting fees (e.g., migrant worker submissions)\n• Administrative service charges\n• Processing fees\n• Service charges for completed or partially completed services\n• Charges for services that have been initiated or delivered\n\nThese services are considered consumed upon payment and delivery, and therefore do not qualify for refunds under normal circumstances.',
                    ),
                    
                    _buildSection(
                      '4. Refund Eligibility',
                      'Refunds may be considered in the following exceptional circumstances:\n\n4.1. Service Not Delivered\nIf a paid service was not delivered due to technical failure on our part or service unavailability, you may be eligible for a full or partial refund.\n\n4.2. Duplicate Payment\nIf you have been charged twice for the same service, we will refund the duplicate charge upon verification.\n\n4.3. Unauthorized Transaction\nIf you can demonstrate that a payment was made without your authorization, we will investigate and process a refund if verified.\n\n4.4. Legal Requirements\nRefunds will be processed as required by applicable Indian laws and regulations, including consumer protection laws.',
                    ),
                    
                    _buildSection(
                      '5. How to Request a Refund',
                      'To request a refund, please follow these steps:\n\n1. Contact our support team at contact@smar8.com with the subject line "Refund Request"\n2. Include the following information in your email:\n   • Your registered email address or phone number\n   • Transaction ID or payment reference number\n   • Date and amount of the payment\n   • Reason for the refund request\n   • Any supporting documents or screenshots\n\n3. We will acknowledge your request within 2 business days\n4. Our team will review your request and respond within 7-10 business days\n5. If approved, the refund will be processed within 5-7 business days',
                    ),
                    
                    _buildSection(
                      '6. Refund Processing Time',
                      'Once a refund is approved:\n\n• Refunds to UPI accounts: 3-5 business days\n• Refunds to bank accounts: 5-7 business days\n• Refunds to digital wallets: 3-7 business days\n\nPlease note that processing times may vary depending on your bank or payment provider. The refund will appear in your account once processed by the payment gateway and your financial institution.',
                    ),
                    
                    _buildSection(
                      '7. Partial Refunds',
                      'In certain circumstances, we may offer partial refunds:\n\n• If a service was partially delivered\n• If there was a partial service failure\n• If only a portion of the service charge is eligible for refund\n\nPartial refund amounts will be determined on a case-by-case basis, taking into account the extent of service delivery and any costs incurred.',
                    ),
                    
                    _buildSection(
                      '8. Refund Denial',
                      'We reserve the right to deny refund requests in the following situations:\n\n• The service has been fully delivered as per the agreement\n• The refund request is made beyond the specified timeframe\n• The payment was made for services that have been consumed\n• The request is fraudulent or made in bad faith\n• The user has violated our Terms & Conditions\n• The refund is not required by applicable law',
                    ),
                    
                    _buildSection(
                      '9. Dispute Resolution',
                      'If you are not satisfied with our refund decision, you may:\n\n• Request a review by contacting our support team with additional information\n• Escalate the matter to our management team\n• Seek resolution through applicable consumer protection mechanisms in India\n\nWe are committed to fair resolution of all disputes and will work with you to address your concerns.',
                    ),
                    
                    _buildSection(
                      '10. Payment Gateway Issues',
                      'If you experience issues with payment processing or transaction failures:\n\n• Contact us immediately at contact@smar8.com\n• Do not attempt to make duplicate payments\n• We will investigate and resolve payment gateway issues\n• If a payment was deducted but the transaction failed, we will process a refund within 5-7 business days after verification',
                    ),
                    
                    _buildSection(
                      '11. Changes to This Policy',
                      'We reserve the right to modify this Refund Policy at any time. Changes will be effective immediately upon posting the updated Policy on our website or App.\n\nThe "Last Updated" date at the top of this Policy indicates when the most recent changes were made. We encourage you to review this Policy periodically.',
                    ),
                    
                    _buildSection(
                      '12. Contact Information',
                      'For refund requests, questions, or concerns regarding this Refund Policy, please contact:\n\nSmar8 Solutions\nFirst Floor, Door No. 279, Building ID 51051010019451\nNear Mujahid Masjid, Koduvally, Calicut, Kerala – 673572, India\n📞 +91 9048235416\n📧 contact@smar8.com\n\nPlease include "Refund Request" in the subject line for faster processing.',
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

