import 'package:flutter/material.dart';

/// Centralized theme for SMAR8 Solutions web application
/// All colors, styles, and design tokens should be referenced from here
class AppTheme {
  // Private constructor to prevent instantiation
  AppTheme._();

  // ========== COLORS ==========
  
  /// Primary brand color - Green
  static const Color primaryGreen = Color(0xFF2E7D32);
  
  /// Accent green color
  static const Color accentGreen = Color(0xFF66BB6A);
  
  /// Success green color
  static const Color successGreen = Color(0xFF558B2F);
  
  /// Primary blue color
  static const Color primaryBlue = Color(0xFF0277BD);
  
  /// Dark red/section color
  static const Color sectionRed = Color(0xFFB71C1C);
  
  /// Danger red color
  static const Color dangerRed = Color(0xFFD32F2F);
  
  /// Background colors
  static const Color backgroundWhite = Colors.white;
  static const Color backgroundGrey = Color(0xFFF5F5F5);
  static const Color backgroundLightGrey = Color(0xFFFAFAFA);
  
  // Aliases for better compatibility
  static const Color lightGrey = Color(0xFFF5F5F5);
  static const Color mediumGrey = Color(0xFFE0E0E0);
  static const Color darkGrey = Color(0xFF333333);
  
  /// Text colors
  static const Color textPrimary = Color(0xFF000000);
  static const Color textSecondary = Color(0xFF555555);
  static const Color textWhite = Colors.white;
  static const Color textBlack = Color(0xFF000000);
  static Color get textGrey => Colors.grey[700]!;
  
  /// Info blue color (for links and info sections)
  static const Color infoBlue = Color(0xFF0277BD);
  
  /// Border colors
  static Color get borderGrey => Colors.grey[300]!;
  static const Color borderPrimary = primaryGreen;
  static const Color borderSecondary = primaryBlue;

  // ========== SPACING ==========
  
  /// Standard padding for sections
  static const double sectionPadding = 60.0;
  static const double sectionPaddingMobile = 20.0;
  static const double sectionPaddingTablet = 40.0;
  
  /// Standard gap between elements
  static const double gapSmall = 8.0;
  static const double gapMedium = 16.0;
  static const double gapLarge = 20.0;
  static const double gapXLarge = 30.0;
  static const double gapXXLarge = 40.0;
  static const double gapXXXLarge = 60.0;

  // ========== TYPOGRAPHY ==========
  
  /// Extra large heading
  static const TextStyle headingXLarge = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: textPrimary,
  );
  
  /// Large heading
  static const TextStyle headingLarge = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: textPrimary,
  );
  
  /// Medium heading
  static const TextStyle headingMedium = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: textPrimary,
  );
  
  /// Small heading
  static const TextStyle headingSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: textPrimary,
  );
  
  /// Body text
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: textPrimary,
    height: 1.6,
  );
  
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: textPrimary,
    height: 1.5,
  );
  
  static const TextStyle bodySmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: textPrimary,
    height: 1.5,
  );
  
  /// Mobile typography
  static const TextStyle mobileHeadingLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: textPrimary,
  );
  
  static const TextStyle mobileBodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: textPrimary,
    height: 1.6,
  );
  
  // ========== DECORATION LINES ==========
  
  /// Standard underline bar
  static Widget underlineBar({Color? color, double? width}) {
    return Container(
      height: 4,
      width: width ?? 80,
      color: color ?? primaryGreen,
    );
  }
  
  // ========== BORDER RADIUS ==========
  
  static const double radiusSmall = 6.0;
  static const double radiusMedium = 8.0;
  static const double radiusLarge = 12.0;
  
  // ========== SHADOWS ==========
  
  static List<BoxShadow> get cardShadow => [
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      blurRadius: 10,
      offset: const Offset(0, 4),
    ),
  ];
  
  static List<BoxShadow> get cardShadowLarge => [
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      blurRadius: 20,
      offset: const Offset(0, 8),
    ),
  ];
  
  // ========== RESPONSIVE BREAKPOINTS ==========
  
  static const double breakpointMobile = 768.0;
  static const double breakpointTablet = 1200.0;
  
  static bool isMobile(double width) => width < breakpointMobile;
  static bool isTablet(double width) => width >= breakpointMobile && width < breakpointTablet;
  static bool isDesktop(double width) => width >= breakpointTablet;
}

