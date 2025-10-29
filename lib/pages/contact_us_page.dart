import 'package:flutter/material.dart';
import '../common/components/page_section.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        
        return Column(
          children: [
            // Header Section
            Container(
              padding: EdgeInsets.all(isMobile ? 20 : 60),
              color: const Color(0xFF2E7D32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: isMobile ? double.infinity : 700,
                    child: const Text(
                      'Get in touch with SMAR8 Solutions for all your property management needs. We\'re here to help you with property services, field verification, and asset management solutions.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        height: 1.6,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // Contact Information Section
            PageSection(
              title: 'Get In Touch',
              content: Column(
                children: [
                Row(
                  children: [
                    // Contact Details
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey[300]!),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Contact Information',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2E7D32),
                              ),
                            ),
                            const SizedBox(height: 30),
                            _buildContactItem(
                              Icons.phone,
                              'Phone',
                              '+91 9048235416',
                              'Call us for immediate assistance',
                            ),
                            const SizedBox(height: 20),
                            _buildContactItem(
                              Icons.email,
                              'Email',
                              'Contact@smar8.com',
                              'Send us an email anytime',
                            ),
                            const SizedBox(height: 20),
                            _buildContactItem(
                              Icons.location_on,
                              'Address',
                              'SMAR8 Solutions\nBuilding Number 297/Building ID 51051010019451\nFirst Floor, Near Mujahid Masjid\nKoduvally, Calicut\nKerala 673572',
                              'Visit our office',
                            ),
                            const SizedBox(height: 20),
                            _buildContactItem(
                              Icons.access_time,
                              'Business Hours',
                              'Monday - Friday: 9:00 AM - 6:00 PM\nSaturday: 9:00 AM - 4:00 PM\nSunday: Closed',
                              'Our working hours',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    // Contact Form
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.grey[50],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey[300]!),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Send Us a Message',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2E7D32),
                              ),
                            ),
                            const SizedBox(height: 20),
                            _buildContactForm(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ),
            
            // Services Section
            PageSection(
              title: 'Our Services',
              content: Column(
                children: [
                Row(
                  children: [
                    _buildServiceCard(
                      'Property Management',
                      'Comprehensive property management services including tenant screening, rent collection, and maintenance coordination.',
                      Icons.home,
                    ),
                    const SizedBox(width: 20),
                    _buildServiceCard(
                      'Field Verification',
                      'Professional field verification services including identity verification, property inspection, and police verification.',
                      Icons.verified_user,
                    ),
                    const SizedBox(width: 20),
                    _buildServiceCard(
                      'SMAR8 Asset Manager',
                      'Mobile application for property portfolio management, document storage, and real-time property updates.',
                      Icons.phone_android,
                    ),
                  ],
                ),
              ],
            ),
            ),
            
            // Office Location Section
            PageSection(
              title: 'Office Location',
              content: Column(
                children: [
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey[300]!),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Visit Our Office',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2E7D32),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'SMAR8 Solutions Office',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF2E7D32),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Building Number 297/Building ID 51051010019451\nFirst Floor, Near Mujahid Masjid\nKoduvally, Calicut\nKerala 673572',
                                  style: TextStyle(
                                    fontSize: 16,
                                    height: 1.5,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'Landmarks:',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                _buildLandmark('Near Mujahid Masjid'),
                                _buildLandmark('First Floor Building'),
                                _buildLandmark('Koduvally Main Road'),
                                _buildLandmark('Calicut District'),
                              ],
                            ),
                          ),
                          const SizedBox(width: 30),
                          Expanded(
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey[300]!),
                              ),
                              child: const Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.map,
                                      size: 48,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Interactive Map\nComing Soon',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ),
            
            // Emergency Contact Section
            PageSection(
              title: 'Emergency Contact',
              content: Column(
                children: [
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.red[200]!),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.emergency,
                            color: Colors.red[600],
                            size: 32,
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Emergency Contact',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'For urgent property management issues, maintenance emergencies, or security concerns:',
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: _buildEmergencyContact(
                              'Emergency Hotline',
                              '+91 9048235416',
                              'Available 24/7',
                            ),
                          ),
                          const SizedBox(width: 20),
                            Expanded(
                              child: _buildEmergencyContact(
                                'Emergency Email',
                                'Contact@smar8.com',
                                'Response within 2 hours',
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ),
            
            // FAQ Section
            PageSection(
              title: 'Frequently Asked Questions',
              content: Column(
                children: [
                _buildFAQItem(
                  'How can I schedule a property inspection?',
                  'You can schedule a property inspection by calling us at +91 9048235416 or through our SMAR8 Asset Manager mobile application. We offer same-day and next-day appointments.',
                ),
                _buildFAQItem(
                  'What are your field verification charges?',
                  'Our field verification charges vary based on the type of verification: Identity verification (\$25-50), Property inspection (\$75-150), Police verification (\$30-60), and Background checks (\$40-80).',
                ),
                _buildFAQItem(
                  'Do you provide services outside Calicut?',
                  'Yes, we provide property management and field verification services across Kerala and neighboring states. Additional travel charges may apply for locations outside Calicut district.',
                ),
                _buildFAQItem(
                  'How can I access my property documents?',
                  'All your property documents are securely stored in our SMAR8 Asset Manager mobile application. You can access them anytime through the app with your login credentials.',
                ),
                _buildFAQItem(
                  'What are your business hours?',
                  'Our office is open Monday to Friday from 9:00 AM to 6:00 PM, and Saturday from 9:00 AM to 4:00 PM. We are closed on Sundays and public holidays.',
                ),
              ],
            ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildContactItem(IconData icon, String title, String value, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFF2E7D32).withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: const Color(0xFF2E7D32),
            size: 24,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2E7D32),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                description,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildContactForm() {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Your Name',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person),
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Email Address',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.email),
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Phone Number',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.phone),
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Subject',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.subject),
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          maxLines: 4,
          decoration: const InputDecoration(
            labelText: 'Message',
            border: OutlineInputBorder(),
            alignLabelWithHint: true,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // Handle form submission
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF2E7D32),
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Send Message',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildServiceCard(String title, String description, IconData icon) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey[300]!),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFF2E7D32).withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: const Color(0xFF2E7D32),
                size: 32,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E7D32),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                height: 1.4,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLandmark(String landmark) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            width: 6,
            height: 6,
            decoration: const BoxDecoration(
              color: Color(0xFF2E7D32),
              shape: BoxShape.circle,
            ),
          ),
          Text(
            landmark,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildEmergencyContact(String title, String contact, String availability) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.red[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            contact,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            availability,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFAQItem(String question, String answer) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2E7D32),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            answer,
            style: const TextStyle(
              fontSize: 14,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
