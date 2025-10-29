import 'package:flutter/material.dart';

class AppHeader extends StatefulWidget {
  final int currentIndex;
  final Function(int, {String? aboutSubPage}) onNavigationChanged;
  final VoidCallback onMenuToggle;
  
  const AppHeader({
    super.key,
    required this.currentIndex,
    required this.onNavigationChanged,
    required this.onMenuToggle,
  });

  @override
  State<AppHeader> createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader> {
  // GlobalKeys for each navigation tab to track their positions
  final Map<int, GlobalKey> _navItemKeys = {};
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        final isTablet = constraints.maxWidth >= 768 && constraints.maxWidth < 1200;
        final isDesktop = !isMobile && !isTablet;
        
        return Column(
          children: [
            // Top Bar - Light Grey (Desktop only)
            if (!isMobile && !isTablet) _buildTopBar(),
            
            // Main Navigation Bar - White
            _buildMainNavBar(isMobile, isTablet),
          ],
        );
      },
    );
  }

  // Top Bar - Light Grey with links
  Widget _buildTopBar() {
    return Container(
      height: 40,
      color: const Color(0xFFF5F5F5), // Light grey
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left side links
          Row(
            children: [
              _buildTopLink('SMAR8 SOLUTIONS'),
              const SizedBox(width: 24),
              _buildTopLink('Smart Asset Manager'),
              const SizedBox(width: 24),
              _buildTopLink('Property Solutions'),
              const SizedBox(width: 24),
              _buildTopLink('Our company'),
            ],
          ),
          // Right side - Local websites
          _buildTopLink('Local websites'),
        ],
      ),
    );
  }

  Widget _buildTopLink(String text) {
    return InkWell(
      onTap: () {},
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
    );
  }

  // Main Navigation Bar
  Widget _buildMainNavBar(bool isMobile, bool isTablet) {
    return Container(
      height: 70, // Fixed height to prevent expansion
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.black, width: 1),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : (isTablet ? 20 : 40)),
      child: OverflowBox(
        maxHeight: double.infinity,
        alignment: Alignment.topCenter,
        child: Row(
          children: [
            // Mobile/Tablet: Hamburger Menu
            if (isMobile || isTablet) _buildMobileHamburger(),
            
            // Logo
            if (isMobile || isTablet) 
              Expanded(
                child: Center(
                  child: _buildMobileLogo(),
                ),
              )
            else
              _buildLogo(),
            
            // Desktop Navigation Links (only for large screens)
            if (!isMobile && !isTablet) Expanded(child: _buildDesktopNavLinks(true)),
            
            // Search Icon
            _buildSearchIcon(),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileHamburger() {
    return IconButton(
      icon: const Icon(Icons.menu, color: Colors.black, size: 24),
      onPressed: widget.onMenuToggle,
    );
  }

  Widget _buildLogo() {
    return GestureDetector(
      onTap: () => widget.onNavigationChanged(0),
      child: const Text(
        'SMAR8 SOLUTIONS.',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildMobileLogo() {
    return GestureDetector(
      onTap: () => widget.onNavigationChanged(0),
      child: const Text(
        'SMAR8 SOLUTIONS.',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildDesktopNavLinks(bool isDesktop) {
    final navItems = [
      {
        'text': 'Home',
        'index': 0,
        'subItems': []
      },
      {
        'text': 'About Us',
        'index': 1,
        'subItems': ['About SMAR8 Solutions', 'Principles', 'Leadership', 'History', 'Contacts and Locations']
      },
      {
        'text': 'Technology/Innovation',
        'index': 2,
        'subItems': ['Our Technology', 'Innovation Hub', 'R&D Labs', 'Tech Resources']
      },
      {
        'text': 'Insights',
        'index': 3,
        'subItems': ['Market Insights', 'Investment Views', 'Research Reports']
      },
      {
        'text': 'Investor Relations',
        'index': 4,
        'subItems': ['Financial Reports', 'Stock Information', 'Corporate Governance', 'Events & Presentations']
      },
      {
        'text': 'Corporate sustainability',
        'index': 5,
        'subItems': ['Our Approach', 'Environmental', 'Social Responsibility', 'ESG Reports']
      },
      {
        'text': 'Careers',
        'index': 6,
        'subItems': ['Open Positions', 'Life at SMAR8', 'Benefits & Growth']
      },
      {
        'text': 'Media Center',
        'index': 7,
        'subItems': ['Press Releases', 'Recent announcements', 'Product launches', 'Organization chart', 'Key milestones', 'Awards & Recognition', 'Image & Video']
      },
    ];
    
    // Initialize GlobalKeys for each navigation item
    for (final item in navItems) {
      final index = item['index'] as int;
      if (!_navItemKeys.containsKey(index)) {
        _navItemKeys[index] = GlobalKey();
      }
    }
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: navItems.map((item) {
        final index = item['index'] as int;
        final isActive = widget.currentIndex == index;
        final bool hasSubItems = (item['subItems'] as List).isNotEmpty;
        
        return InkWell(
          key: _navItemKeys[index], // Add GlobalKey to track position
          onTap: index == 0 ? (hasSubItems ? () {
            _showDropdown(context, index, item['subItems'] as List, hasSubItems);
          } : () {
            widget.onNavigationChanged(index);
          }) : null, // Disable navigation for all items except Home (index 0)
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 6),
                Text(
                  item['text'] as String,
                  style: TextStyle(
                    color: index == 0 ? Colors.black87 : Colors.grey, // Grey out inactive items
                    fontSize: 14,
                    fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 2,
                  width: isActive ? 60 : 0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
  
  void _showDropdown(BuildContext context, int index, List subItems, bool hasSubItems) {
    if (!hasSubItems || subItems.isEmpty) return;
    
    final menuItems = subItems.map((subItem) {
      final subIndex = subItems.indexOf(subItem);
      
      // Map sub-item text to sub-page identifier
      String? subPage;
      if (index == 1) { // About Us
        final aboutSubItems = ['about', 'principles', 'leadership', 'history', 'contacts'];
        if (subIndex < aboutSubItems.length) {
          subPage = aboutSubItems[subIndex];
        }
      }
      
      return PopupMenuItem(
        child: Text(
          subItem,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        onTap: () {
          widget.onNavigationChanged(index, aboutSubPage: subPage);
        },
      );
    }).toList();
    
    // Get the clicked tab's RenderBox to determine its position
    final RenderBox? tabRenderBox = _navItemKeys[index]?.currentContext?.findRenderObject() as RenderBox?;
    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
    
    // Calculate position based on the tab's location
    double leftPosition;
    double rightPosition;
    
    if (tabRenderBox != null) {
      // Get the tab's global position
      final tabPosition = tabRenderBox.localToGlobal(Offset.zero);
      leftPosition = tabPosition.dx;
      rightPosition = tabPosition.dx + 300; // 300px width for the dropdown
    } else {
      // Fallback to center if we can't get tab position
      leftPosition = overlay.size.width / 2 - 150;
      rightPosition = overlay.size.width / 2 + 150;
    }
    
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        leftPosition, // Start at tab's left edge
        70 + 40, // Below the nav bar (top: 40, nav: 70)
        rightPosition, // End 300px from tab start
        overlay.size.height,
      ),
      items: menuItems,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _buildSearchIcon() {
    return IconButton(
      icon: const Icon(Icons.search, color: Colors.black87, size: 22),
      onPressed: () {},
    );
  }
}
