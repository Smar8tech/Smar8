import 'package:flutter/material.dart';

/// Colored hero/banner section with title and description
/// Used for colored header sections across the site
class HeroSection extends StatelessWidget {
  /// Title text
  final String title;
  
  /// Description text
  final String? description;
  
  /// Background color
  final Color backgroundColor;
  
  /// Title color (defaults to white)
  final Color? titleColor;
  
  /// Description color (defaults to white)
  final Color? descriptionColor;
  
  /// Custom title widget (overrides title if provided)
  final Widget? customTitle;
  
  /// Additional content to show below description
  final Widget? additionalContent;
  
  /// Maximum width for content (defaults to 700)
  final double? maxWidth;

  const HeroSection({
    super.key,
    required this.title,
    this.description,
    required this.backgroundColor,
    this.titleColor,
    this.descriptionColor,
    this.customTitle,
    this.additionalContent,
    this.maxWidth,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    
    return Container(
      padding: EdgeInsets.all(isMobile ? 20 : 60),
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          customTitle ?? _buildTitle(context),
          
          if (description != null) ...[
            const SizedBox(height: 20),
            _buildDescription(context),
          ],
          
          if (additionalContent != null) ...[
            const SizedBox(height: 20),
            additionalContent!,
          ],
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    
    return Text(
      title,
      style: TextStyle(
        fontSize: isMobile ? 32 : 48,
        fontWeight: FontWeight.bold,
        color: titleColor ?? Colors.white,
      ),
    );
  }

  Widget _buildDescription(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    
    return SizedBox(
      width: isMobile ? double.infinity : (maxWidth ?? 700),
      child: Text(
        description!,
        style: TextStyle(
          fontSize: isMobile ? 16 : 18,
          color: descriptionColor ?? Colors.white,
          height: 1.6,
        ),
      ),
    );
  }
}

