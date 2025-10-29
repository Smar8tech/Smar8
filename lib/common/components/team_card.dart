import 'package:flutter/material.dart';
import '../app_theme.dart';

/// Reusable team/management card component
class TeamCard extends StatelessWidget {
  final String name;
  final String title;
  final String email;
  final String? photoPath;
  final bool isLarge;

  const TeamCard({
    super.key,
    required this.name,
    required this.title,
    required this.email,
    this.photoPath,
    this.isLarge = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: AppTheme.primaryBlue,
            width: 4,
          ),
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image placeholder
          Container(
            width: isLarge ? 100 : 80,
            height: isLarge ? 100 : 80,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.person,
              size: isLarge ? 60 : 50,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(width: 20),
          
          // Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: isLarge ? 24 : 20,
                    fontWeight: FontWeight.bold,
                    color: isLarge ? AppTheme.primaryBlue : AppTheme.primaryGreen,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: isLarge ? 16 : 14,
                    color: AppTheme.textGrey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.email,
                        size: isLarge ? 18 : 16,
                        color: Colors.blue[600],
                      ),
                      const SizedBox(width: 8),
                      Text(
                        email,
                        style: TextStyle(
                          fontSize: isLarge ? 15 : 14,
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

