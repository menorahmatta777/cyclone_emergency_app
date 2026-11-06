
import 'package:flutter/material.dart';
import 'main_navigation_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/cyclone.png',
              fit: BoxFit.cover,
            ),
          ),

          // Dark overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withValues(alpha: 0.15),
                    const Color(0xFF001B44)
                        .withValues(alpha: 0.65),
                    const Color(0xFF00102D)
                        .withValues(alpha: 0.95),
                  ],
                ),
              ),
            ),
          ),

          SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final isSmall = constraints.maxWidth < 600;

                return Column(
                  children: [
                    const Spacer(),

                    // Cyclone icon
                    Container(
                      width: isSmall ? 75 : 90,
                      height: isSmall ? 75 : 90,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.15),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white.withValues(alpha: 0.4),
                          width: 2,
                        ),
                      ),
                      child: Icon(
                        Icons.cyclone,
                        color: Colors.white,
                        size: isSmall ? 48 : 58,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Title
                    Text(
                      'CYCLONE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isSmall ? 32 : 42,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                    ),

                    Text(
                      'EMERGENCY',
                      style: TextStyle(
                        color: const Color(0xFF18C8F5),
                        fontSize: isSmall ? 32 : 42,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Text(
                      'Stay Safe, Stay Prepared',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isSmall ? 15 : 18,
                        letterSpacing: 1.2,
                      ),
                    ),

                    const SizedBox(height: 40),

                    // Get Started button
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: isSmall ? 25 : 35,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 58,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const MainNavigationPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor:
                                const Color(0xFF0D47A1),
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(35),
                            ),
                          ),
                          child: const Text(
                            'Get Started  →',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 25),

                    const Text(
                      'Your Safety Matters',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        letterSpacing: 1,
                      ),
                    ),

                    const SizedBox(height: 20),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
