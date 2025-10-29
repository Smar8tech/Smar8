import 'package:flutter/material.dart';
import '../../components/values_section.dart';
import '../../components/company_values_section.dart';
import '../../components/investor_protection_section.dart';

class PrinciplesPage extends StatelessWidget {
  const PrinciplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 768;
        
        return Column(
          children: [
            // Header Section
            Container(
              padding: EdgeInsets.all(isMobile ? 20 : 60),
              color: const Color(0xFF2E7D32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Our Core Principles',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: isMobile ? double.infinity : 700,
                    child: const Text(
                      'At SMAR8 Solutions, our principles guide every decision we make and every solution we deliver. They represent our commitment to excellence, innovation, and unwavering dedication to our clients\' success.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        height: 1.6,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const ValuesSection(),
            const CompanyValuesSection(),
            const InvestorProtectionSection(),
          ],
        );
      },
    );
  }
}

