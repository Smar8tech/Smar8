import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../responsive_layout.dart';

/// Flexible card component for various use cases
enum AppCardType {
  image,
  icon,
  info,
}

class AppCard extends StatelessWidget {
  final String title;
  final String? description;
  final String? buttonText;
  final VoidCallback? onPressed;
  final String? imagePath;
  final IconData? icon;
  final AppCardType type;
  final bool showBorder;
  final Color? borderColor;

  const AppCard({
    super.key,
    required this.title,
    this.description,
    this.buttonText,
    this.onPressed,
    this.imagePath,
    this.icon,
    this.type = AppCardType.info,
    this.showBorder = true,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: showBorder
            ? Border.all(
                color: borderColor ?? Colors.grey[300]!,
                width: 1,
              )
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image or Icon section
          if (type == AppCardType.image && imagePath != null)
            _buildImage()
          else if (type == AppCardType.icon && icon != null)
            _buildIcon(context),
          
          // Content section
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    height: 1.3,
                  ),
                ),
                if (description != null) ...[
                  const SizedBox(height: 16),
                  Text(
                    description!,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppTheme.textGrey,
                      height: 1.5,
                    ),
                  ),
                ],
                if (buttonText != null) ...[
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      IconButton(
                        onPressed: onPressed,
                        icon: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black87, width: 1.5),
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            size: 18,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        buttonText!,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
      child: Container(
        height: 200,
        width: double.infinity,
        color: Colors.grey[300],
        child: imagePath != null
            ? Image.network(
                imagePath!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(
                      Icons.image,
                      size: 60,
                      color: Colors.grey,
                    ),
                  );
                },
              )
            : const Center(
                child: Icon(
                  Icons.image,
                  size: 60,
                  color: Colors.grey,
                ),
              ),
      ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
            color: AppTheme.textGrey,
          ),
          const SizedBox(width: 12),
          const Icon(
            Icons.business,
            size: 30,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

/// Simple info card without image
class InfoCard extends StatelessWidget {
  final String title;
  final String? description;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? textColor;

  const InfoCard({
    super.key,
    required this.title,
    this.description,
    this.icon,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppTheme.borderGrey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null) ...[
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: AppTheme.primaryBlue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                size: 30,
                color: AppTheme.primaryBlue,
              ),
            ),
            const SizedBox(height: 20),
          ],
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: textColor ?? Colors.black87,
            ),
          ),
          if (description != null) ...[
            const SizedBox(height: 12),
            Text(
              description!,
              style: TextStyle(
                fontSize: 16,
                color: textColor ?? AppTheme.textGrey,
                height: 1.5,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

