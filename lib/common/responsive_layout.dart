import 'package:flutter/material.dart';

/// Responsive layout widget that automatically switches between mobile/desktop layouts
/// Eliminates the need to duplicate LayoutBuilder and isMobile checks in every component
class ResponsiveLayout extends StatelessWidget {
  /// Widget to display on mobile (< 768px)
  final Widget mobile;
  
  /// Widget to display on tablet (768px - 1200px)
  final Widget? tablet;
  
  /// Widget to display on desktop (>= 1200px)
  final Widget desktop;
  
  /// Whether to use tablet layout (if provided) or desktop layout on tablet
  final bool useTabletLayoutOnTablet;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    this.useTabletLayoutOnTablet = true,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        
        // Mobile layout (< 768px)
        if (width < 768) {
          return mobile;
        }
        
        // Tablet layout (768px - 1200px)
        if (width >= 768 && width < 1200) {
          if (tablet != null && useTabletLayoutOnTablet) {
            return tablet!;
          }
          return desktop;
        }
        
        // Desktop layout (>= 1200px)
        return desktop;
      },
    );
  }
}

/// Extension to easily check screen type in components
extension ResponsiveExtension on BuildContext {
  bool get isMobile => MediaQuery.of(this).size.width < 768;
  bool get isTablet => MediaQuery.of(this).size.width >= 768 && 
                      MediaQuery.of(this).size.width < 1200;
  bool get isDesktop => MediaQuery.of(this).size.width >= 1200;
  
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}

