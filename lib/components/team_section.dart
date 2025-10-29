import 'package:flutter/material.dart';

class TeamSection extends StatelessWidget {
  const TeamSection({super.key});

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
              Text(
                'Your experts for property management',
                style: TextStyle(
                  fontSize: isMobile ? 28 : 36,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF2E7D32), // Green
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Senior Client Relationship Management',
                style: TextStyle(
                  fontSize: isMobile ? 18 : 24,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF0277BD), // Blue
                ),
              ),
              const SizedBox(height: 40),
              isMobile ? _buildMobileTeam() : _buildDesktopTeam(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildDesktopTeam() {
    final teamMembers = _getTeamMembers();
    
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: teamMembers.map((member) {
        return SizedBox(
          width: 280,
          child: _buildTeamCard(member),
        );
      }).toList(),
    );
  }

  Widget _buildMobileTeam() {
    final teamMembers = _getTeamMembers();
    
    return Column(
      children: teamMembers.map((member) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: _buildTeamCard(member),
        );
      }).toList(),
    );
  }

  Widget _buildTeamCard(Map<String, String> member) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: const Color(0xFF0277BD), width: 4),
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image placeholder
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.person, size: 50, color: Colors.grey[600]),
          ),
          const SizedBox(width: 20),
          // Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  member['name']!,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2E7D32),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  member['title']!,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.email, size: 16, color: Colors.blue[600]),
                      const SizedBox(width: 8),
                      Text(
                        member['email']!,
                        style: TextStyle(
                          fontSize: 14,
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

  List<Map<String, String>> _getTeamMembers() {
    return [
      {
        'name': 'Sarah Mitchell',
        'title': 'Senior Client Relationship Manager',
        'email': 'sarah.mitchell@smar8.com',
        'photo': 'images/team-member-1.jpg',
      },
      {
        'name': 'Michael Chen',
        'title': 'Senior Client Relationship Manager',
        'email': 'michael.chen@smar8.com',
        'photo': 'images/team-member-2.jpg',
      },
      {
        'name': 'Emily Rodriguez',
        'title': 'Senior Client Relationship Manager',
        'email': 'emily.rodriguez@smar8.com',
        'photo': 'images/team-member-3.jpg',
      },
      {
        'name': 'David Thompson',
        'title': 'Senior Client Relationship Manager',
        'email': 'david.thompson@smar8.com',
        'photo': 'images/team-member-4.jpg',
      },
    ];
  }
}

