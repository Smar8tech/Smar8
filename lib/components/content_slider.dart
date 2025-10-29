import 'package:flutter/material.dart';

class ContentSlider extends StatefulWidget {
  const ContentSlider({super.key});

  @override
  State<ContentSlider> createState() => _ContentSliderState();
}

class _ContentSliderState extends State<ContentSlider> {
  int _currentSlide = 0;
  late PageController _pageController;

  final List<Map<String, dynamic>> slides = [
    {
      'title': 'Enterprise Property Management Solutions',
      'body': 'SMAR8 Solutions delivers comprehensive property and asset management services designed for enterprise-scale operations. Our integrated platform streamlines tenant management, maintenance coordination, financial reporting, and compliance across your entire portfolio.',
      'buttonText': 'Explore Our Solutions',
      'backgroundImage': 'images/slider1.jpg',
    },
    {
      'title': 'Automated Asset & Portfolio Management',
      'body': 'Harness the power of intelligent property management technology. Our enterprise-grade platform provides real-time insights, automated workflows, and scalable solutions that grow with your business needs.',
      'buttonText': 'Request a Demo',
      'backgroundImage': 'images/slider2.jpg',
    },
    {
      'title': 'Complete Tenant Lifecycle Management',
      'body': 'From onboarding to lease renewals, SMAR8 offers end-to-end tenant management. Automate tenant screening, track lease agreements, manage payments, and maintain strong tenant relationships with our all-in-one platform.',
      'buttonText': 'Learn More',
      'backgroundImage': 'images/slider3.jpg',
    },
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        
        return Container(
          height: isMobile ? 450 : 600, // Increased desktop height
          child: Stack(
            children: [
              // Background image
              Positioned.fill(
                child: Stack(
                  children: [
                    // Background image with error handling
                    Image.asset(
                      slides[_currentSlide]['backgroundImage'] as String,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: const Color(0xFF2E7D32),
                          child: Center(
                            child: Icon(
                              Icons.image,
                              size: 100,
                              color: Colors.white.withOpacity(0.3),
                            ),
                          ),
                        );
                      },
                    ),
                    // Green overlay
                    Container(
                      color: const Color(0xFF2E7D32).withOpacity(0.7),
                    ),
                  ],
                ),
              ),
              
              // Content
              PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentSlide = index;
                  });
                },
                itemCount: slides.length,
                itemBuilder: (context, index) {
                  return _buildSlide(slides[index], isMobile);
                },
              ),
              
              // Simple navigation dots
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: _buildDots(),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSlide(Map<String, dynamic> slide, bool isMobile) {
    return Padding(
      padding: EdgeInsets.all(isMobile ? 20 : 40),
      child: isMobile ? _buildMobileSlide(slide) : _buildDesktopSlide(slide),
    );
  }

  Widget _buildDesktopSlide(Map<String, dynamic> slide) {
    return Row(
      children: [
        // Left side - Text content
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  slide['title'],
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 500,
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        height: 1.5,
                      ),
                      children: _parseBodyText(slide['body']),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF2E7D32),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    slide['buttonText'],
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Removed right-side image placeholder per request
      ],
    );
  }

  Widget _buildMobileSlide(Map<String, dynamic> slide) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            slide['title'],
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                height: 1.5,
              ),
              children: _parseBodyText(slide['body']),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF2E7D32),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                slide['buttonText'],
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        slides.length,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentSlide == index ? Colors.white : Colors.grey[600],
          ),
        ),
      ),
    );
  }

  List<TextSpan> _parseBodyText(String text) {
    List<TextSpan> spans = [];
    RegExp boldRegex = RegExp(r'\*\*(.*?)\*\*');
    
    int lastIndex = 0;
    for (Match match in boldRegex.allMatches(text)) {
      // Add normal text before bold
      if (match.start > lastIndex) {
        spans.add(TextSpan(text: text.substring(lastIndex, match.start)));
      }
      
      // Add bold text
      spans.add(TextSpan(
        text: match.group(1),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ));
      
      lastIndex = match.end;
    }
    
    // Add remaining text
    if (lastIndex < text.length) {
      spans.add(TextSpan(text: text.substring(lastIndex)));
    }
    
    return spans;
  }
}

