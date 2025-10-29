import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../responsive_layout.dart';

/// Standard page section with consistent styling
class PageSection extends StatelessWidget {
  final String? title;
  final Widget? titleWidget;
  final Widget content;
  final Color? backgroundColor;
  final bool showUnderline;
  final Color? underlineColor;

  const PageSection({
    super.key,
    this.title,
    this.titleWidget,
    required this.content,
    this.backgroundColor,
    this.showUnderline = true,
    this.underlineColor,
  }) : assert(title != null || titleWidget != null, 'Either title or titleWidget must be provided');

  @override
  Widget build(BuildContext context) {
    final isMobile = context.isMobile;
    
    return Container(
      color: backgroundColor ?? Colors.white,
      padding: EdgeInsets.all(isMobile ? 20 : 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title section
          if (titleWidget != null)
            titleWidget!
          else if (title != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: TextStyle(
                    fontSize: isMobile ? 28 : 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                if (showUnderline) ...[
                  const SizedBox(height: 10),
                  AppTheme.underlineBar(
                    color: underlineColor,
                    width: isMobile ? 60 : 80,
                  ),
                ],
              ],
            ),
          
          // Content section
          const SizedBox(height: 40),
          content,
        ],
      ),
    );
  }
}

/// Colored section with full background
class ColoredPageSection extends StatelessWidget {
  final String title;
  final String? description;
  final Color backgroundColor;
  final Color? titleColor;
  final Color? descriptionColor;

  const ColoredPageSection({
    super.key,
    required this.title,
    this.description,
    required this.backgroundColor,
    this.titleColor,
    this.descriptionColor,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = context.isMobile;
    
    return Container(
      color: backgroundColor,
      padding: EdgeInsets.all(isMobile ? 20 : 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: isMobile ? 32 : 48,
              fontWeight: FontWeight.bold,
              color: titleColor ?? Colors.white,
            ),
          ),
          if (description != null) ...[
            const SizedBox(height: 20),
            SizedBox(
              width: isMobile ? double.infinity : 700,
              child: Text(
                description!,
                style: TextStyle(
                  fontSize: isMobile ? 16 : 18,
                  color: descriptionColor ?? Colors.white,
                  height: 1.6,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

