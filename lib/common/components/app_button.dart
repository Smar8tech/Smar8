import 'package:flutter/material.dart';
import '../app_theme.dart';

/// Reusable button component with consistent styling
enum AppButtonType {
  primary,
  secondary,
  outline,
  filled,
}

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final AppButtonType type;
  final Color? backgroundColor;
  final Color? textColor;
  final IconData? icon;
  final bool isWide;
  final double? width;

  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.type = AppButtonType.primary,
    this.backgroundColor,
    this.textColor,
    this.icon,
    this.isWide = false,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final button = _buildButton(context);
    
    if (isWide) {
      return SizedBox(
        width: width ?? double.infinity,
        child: button,
      );
    }
    
    return button;
  }

  Widget _buildButton(BuildContext context) {
    switch (type) {
      case AppButtonType.primary:
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.sectionRed,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: _buildContent(),
        );
        
      case AppButtonType.secondary:
        return ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor ?? Colors.white,
            foregroundColor: textColor ?? AppTheme.primaryGreen,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: _buildContent(),
        );
        
      case AppButtonType.outline:
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: backgroundColor ?? Colors.black87,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onPressed,
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                child: _buildContent(),
              ),
            ),
          ),
        );
        
      case AppButtonType.filled:
        return Container(
          decoration: BoxDecoration(
            color: backgroundColor ?? AppTheme.primaryBlue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onPressed,
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: _buildContent(),
              ),
            ),
          ),
        );
    }
  }

  Widget _buildContent() {
    if (icon != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 12),
          Icon(icon, size: 20),
        ],
      );
    }
    
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

/// Icon button with circle border
class AppIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? iconColor;
  final double size;

  const AppIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.backgroundColor,
    this.iconColor,
    this.size = 36,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: iconColor ?? Colors.black87,
            width: 1.5,
          ),
        ),
        child: Icon(
          icon,
          size: size * 0.5,
          color: iconColor ?? Colors.black87,
        ),
      ),
    );
  }
}

