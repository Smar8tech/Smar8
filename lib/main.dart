import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
import 'components/app_header.dart';
import 'components/app_footer.dart';
import 'pages/home_page.dart';
import 'pages/about_us/about_intro_page.dart';
import 'pages/about_us/principles_page.dart';
import 'pages/about_us/leadership_page.dart';
import 'pages/about_us/history_page.dart';
import 'pages/about_us/contacts_page.dart';
import 'pages/privacy/privacy_notice_page.dart';
import 'pages/privacy/data_protection_page.dart';
import 'pages/privacy/disclaimer_page.dart';
import 'pages/privacy/intellectual_property_page.dart';
import 'pages/privacy/terms_conditions_page.dart';
import 'pages/privacy/user_agreement_page.dart';
import 'pages/privacy/cookie_notice_page.dart';
import 'pages/privacy/manage_cookies_policy_page.dart';
import 'pages/privacy/refund_policy_page.dart';
import 'pages/contact_us_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SMAR8 SOLUTIONS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF2E7D32),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
      ),
      home: const WebHomePage(),
    );
  }
}

// Routing removed; using single-page stateful navigation

class WebHomePage extends StatefulWidget {
  const WebHomePage({super.key});

  @override
  State<WebHomePage> createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
  int _currentIndex = 0;
  bool _isMobileMenuOpen = false;
  int? _expandedMenuItem; // For mobile drawer only
  String? _aboutSubPage; // Track current About Us sub-page
  String? _privacyPage; // Track current privacy page
  
  // Cache for loaded pages to implement lazy loading
  final Map<int, Widget> _pageCache = {};

  Widget _getPage(int index) {
    // Handle About Us pages with different sub-pages
    if (index == 1) {
      switch (_aboutSubPage) {
        case 'about':
          return const AboutIntroPage();
        case 'principles':
          return const PrinciplesPage();
        case 'leadership':
          return const LeadershipPage();
        case 'history':
          return const HistoryPage();
        case 'contacts':
          return const ContactsPage();
        default:
          return const AboutIntroPage();
      }
    }

    // Handle Privacy pages
    if (_privacyPage != null) {
      switch (_privacyPage) {
        case 'Terms & Conditions':
          return const TermsConditionsPage();
        case 'Privacy Notice':
          return const PrivacyNoticePage();
        case 'Disclaimer':
          return const DisclaimerPage();
        case 'Data Protection':
          return const DataProtectionPolicyPage();
        case 'Intellectual Property':
          return const IntellectualPropertyPolicyPage();
        case 'User Agreement':
          return const UserAgreementPage();
        case 'Cookie Notice':
          return const CookieNoticePage();
        case 'Manage Cookies':
          return const ManageCookiesPolicyPage();
        case 'Refund Policy':
          return const RefundPolicyPage();
        case 'Contact Us':
          return const ContactUsPage();
        default:
          return const TermsConditionsPage();
      }
    }

    // Normal cached sections
    if (!_pageCache.containsKey(index)) {
      switch (index) {
        case 0:
          _pageCache[0] = const HomePage();
          break;
        case 2:
          _pageCache[2] = const HomePage(); // Technology/Innovation
          break;
        case 3:
          _pageCache[3] = const HomePage(); // Insights
          break;
        case 4:
          _pageCache[4] = const HomePage(); // Investor Relations
          break;
        case 5:
          _pageCache[5] = const HomePage(); // Corporate sustainability
          break;
        case 6:
          _pageCache[6] = const HomePage(); // Careers
          break;
        case 7:
          _pageCache[7] = const HomePage(); // Media Center
          break;
        default:
          _pageCache[index] = const HomePage();
      }
    }
    return _pageCache[index]!;
  }
  
  void _onAboutSubPageChanged(String subPage) {
    setState(() {
      _aboutSubPage = subPage;
      _privacyPage = null;
      _currentIndex = 1; // switch to About Us
    });
  }

  void _onPrivacyLinkClicked(String link) {
    setState(() {
      _privacyPage = link;
      _aboutSubPage = null;
      _currentIndex = 8; // use a dedicated index for privacy display
    });
  }

  void _onNavigationChanged(int index, {String? aboutSubPage}) {
    setState(() {
      _currentIndex = index;
      if (aboutSubPage != null) {
        _aboutSubPage = aboutSubPage;
      }
      if (index != 8) {
        _privacyPage = null; // clear privacy view when navigating away
      }
      _isMobileMenuOpen = false;
      _expandedMenuItem = null;
    });
  }

  void _onMenuToggle() {
    setState(() {
      _isMobileMenuOpen = !_isMobileMenuOpen;
    });
  }

  bool _isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 768;
  }

  bool _isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 768 && width < 1200;
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = _isMobile(context);
    final isTablet = _isTablet(context);
    final showMobileMenu = isMobile || isTablet;
    
    return Scaffold(
      body: Stack(
        children: [
          // Main Content
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              // Header
              AppHeader(
                currentIndex: _currentIndex,
                onNavigationChanged: (int index, {String? aboutSubPage}) => _onNavigationChanged(index, aboutSubPage: aboutSubPage),
                onMenuToggle: _onMenuToggle,
              ),
              // Content - Lazy loaded with scroll support
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _getPage(_currentIndex),
                      // Footer
                      AppFooter(onPrivacyLinkClicked: _onPrivacyLinkClicked),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Mobile Menu Drawer
          if (_isMobileMenuOpen && showMobileMenu) _buildMobileDrawer(),
        ],
      ),
    );
  }

  Widget _buildMobileDrawer() {
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

    return Stack(
      children: [
        // Backdrop - dark overlay to block interaction with content
        Positioned.fill(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isMobileMenuOpen = false;
              });
            },
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        
        // Drawer panel
        Positioned.fill(
          child: Material(
            elevation: 16,
            color: Colors.white,
            child: Column(
              children: [
                // Header with Close button
                Container(
                  height: 70,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.black, size: 24),
                        onPressed: () {
                          setState(() {
                            _isMobileMenuOpen = false;
                          });
                        },
                      ),
                      Expanded(
                        child: Center(
                          child: GestureDetector(
                            onTap: () => _onNavigationChanged(0),
                            child: const Text(
                              'SMAR8 SOLUTIONS.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.search, color: Colors.black87, size: 22),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                
                // Primary Navigation Items with scroll
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ...navItems.map((item) {
                          final int index = item['index'] as int;
                          final bool isExpanded = _expandedMenuItem == index;
                          final List<dynamic> subItems = item['subItems'] as List<dynamic>;
                          final bool hasSubItems = subItems.isNotEmpty;
                          
                          return Column(
                            children: [
                                InkWell(
                                  onTap: index == 0 ? () {
                                    if (hasSubItems) {
                                      setState(() {
                                        _expandedMenuItem = isExpanded ? null : index;
                                      });
                                    } else {
                                      _onNavigationChanged(index);
                                    }
                                  } : null, // Disable navigation for all items except Home (index 0)
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Colors.grey, width: 0.3),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          item['text'] as String,
                                          style: TextStyle(
                                            color: index == 0 ? Colors.black87 : Colors.grey, // Grey out inactive items
                                            fontSize: 15,
                                            fontWeight: isExpanded ? FontWeight.w600 : FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      if (hasSubItems)
                                        Icon(
                                          isExpanded ? Icons.chevron_left : Icons.chevron_right,
                                          color: index == 0 ? Colors.black87 : Colors.grey, // Grey out inactive items
                                          size: 18,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              // Sub-menu items
                              if (isExpanded && hasSubItems) ...subItems.asMap().entries.map((entry) {
                                final subIndex = entry.key;
                                final subItem = entry.value as String;
                                
                                // Map sub-item text to sub-page identifier
                                String? subPage;
                                if (index == 1) { // About Us sub-items
                                  final aboutSubItems = ['about', 'principles', 'leadership', 'history', 'contacts'];
                                  if (subIndex < aboutSubItems.length) {
                                    subPage = aboutSubItems[subIndex];
                                  }
                                }
                                
                                return InkWell(
                                  onTap: index == 0 ? () {
                                    _onNavigationChanged(index, aboutSubPage: subPage);
                                  } : null, // Disable sub-menu navigation for inactive items
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(40, 12, 20, 12),
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(color: Colors.grey, width: 0.2),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                        child: Text(
                                          subItem,
                                          style: TextStyle(
                                            color: index == 0 ? Colors.black87 : Colors.grey, // Grey out inactive sub-items
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            ],
                          );
                        }).toList(),
                        // Separator
                        const Divider(height: 1, color: Colors.grey),
                        
                        // Local websites Section
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey, width: 0.3),
                              ),
                            ),
                            child: Row(
                              children: [
                                const Expanded(
                                  child: Text(
                                    'Local websites',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ...['SMAR8 SOLUTIONS', 'Smart Asset Manager', 'Property Solutions', 'Our company'].map((link) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey, width: 0.3),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      link,
                                      style: const TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
