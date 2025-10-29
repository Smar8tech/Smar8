import 'package:flutter/material.dart';

class ManagementSection extends StatelessWidget {
  const ManagementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        
        return Container(
          padding: EdgeInsets.all(isMobile ? 20 : 60),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Management',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0277BD), // Blue
                ),
              ),
              const SizedBox(height: 40),
              isMobile ? _buildMobileManagement() : _buildDesktopManagement(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildDesktopManagement() {
    return Row(
      children: [
        Expanded(
          child: _buildManagementCard(
            name: 'John Anderson',
            title: 'Chief Executive Officer',
            email: 'john.anderson@smar8.com',
            photo: 'images/ceo.jpg',
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: _buildManagementCard(
            name: 'Jennifer Martinez',
            title: 'Managing Director & Head of Operations',
            email: 'jennifer.martinez@smar8.com',
            photo: 'images/coo.jpg',
          ),
        ),
      ],
    );
  }

  Widget _buildMobileManagement() {
    return Column(
      children: [
        _buildManagementCard(
          name: 'John Anderson',
          title: 'Chief Executive Officer',
          email: 'john.anderson@smar8.com',
          photo: 'images/ceo.jpg',
        ),
        const SizedBox(height: 20),
        _buildManagementCard(
          name: 'Jennifer Martinez',
          title: 'Managing Director & Head of Operations',
          email: 'jennifer.martinez@smar8.com',
          photo: 'images/coo.jpg',
        ),
      ],
    );
  }

  Widget _buildManagementCard({
    required String name,
    required String title,
    required String email,
    required String photo,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: const Color(0xFF2E7D32), width: 4),
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image placeholder
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.person, size: 60, color: Colors.grey[600]),
          ),
          const SizedBox(width: 24),
          // Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0277BD),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 12),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.email, size: 18, color: Colors.blue[600]),
                      const SizedBox(width: 8),
                      Text(
                        email,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue[600],
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

