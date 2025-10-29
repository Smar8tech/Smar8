import 'package:flutter/material.dart';
import '../../components/team_section.dart';
import '../../components/management_section.dart';
import '../../components/culture_section.dart';

class LeadershipPage extends StatelessWidget {
  const LeadershipPage({super.key});

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
              color: const Color(0xFF0277BD),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Our Leadership Team',
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
                      'Our leadership team brings decades of combined experience in property management, technology, and business strategy. Together, they guide SMAR8 Solutions toward continued growth and innovation in the property management industry.',
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
            const ManagementSection(),
            const TeamSection(),
            const CultureSection(),
            // Additional Leadership Content
            Container(
              padding: EdgeInsets.all(isMobile ? 20 : 60),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Leadership Philosophy',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Container(
                    height: 4,
                    width: 80,
                    color: const Color(0xFF0277BD),
                    margin: const EdgeInsets.only(top: 10, bottom: 30),
                  ),
                  isMobile ? _buildMobilePhilosophy() : _buildDesktopPhilosophy(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildDesktopPhilosophy() {
    return Row(
      children: [
        Expanded(
          child: _buildPhilosophyCard(
            icon: Icons.leaderboard,
            title: 'Vision-Driven',
            description: 'Our leaders are committed to long-term vision, steering the company toward sustainable growth and market leadership in property management technology.',
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: _buildPhilosophyCard(
            icon: Icons.groups,
            title: 'Collaborative Approach',
            description: 'We believe in empowering teams, fostering innovation, and creating an environment where every voice matters.',
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: _buildPhilosophyCard(
            icon: Icons.rocket_launch,
            title: 'Innovation First',
            description: 'Our leadership champions technological advancement and continuous improvement to deliver cutting-edge solutions to our clients.',
          ),
        ),
      ],
    );
  }

  Widget _buildMobilePhilosophy() {
    return Column(
      children: [
        _buildPhilosophyCard(
          icon: Icons.leaderboard,
          title: 'Vision-Driven',
          description: 'Our leaders are committed to long-term vision, steering the company toward sustainable growth and market leadership.',
        ),
        const SizedBox(height: 20),
        _buildPhilosophyCard(
          icon: Icons.groups,
          title: 'Collaborative Approach',
          description: 'We believe in empowering teams, fostering innovation, and creating an environment where every voice matters.',
        ),
        const SizedBox(height: 20),
        _buildPhilosophyCard(
          icon: Icons.rocket_launch,
          title: 'Innovation First',
          description: 'Our leadership champions technological advancement and continuous improvement to deliver cutting-edge solutions.',
        ),
      ],
    );
  }

  Widget _buildPhilosophyCard({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFF0277BD).withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              size: 30,
              color: const Color(0xFF0277BD),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

