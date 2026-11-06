
import 'package:flutter/material.dart';

class CycloneAlertsPage extends StatelessWidget {
  const CycloneAlertsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FC),

      appBar: AppBar(
        title: const Text(
          'Cyclone Alerts',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF0B2D59),
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 850),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // HEADER PANEL
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF0B2D59),
                        Color(0xFF1565C0),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.cloud,
                        color: Colors.white,
                        size: 42,
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Cyclone Warning Centre',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(
                        'Stay informed. Be prepared. Stay safe.',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // LIVE ALERT STATUS
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade50,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.orange.shade200,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Colors.orange.shade800,
                        size: 30,
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Live alerts not connected',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'The information below is general safety guidance, not a current official warning.',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  'Safety Advisories',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0B2D59),
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  'Important precautions during severe weather.',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 16),

                // RED GUIDANCE CARD
                _advisoryCard(
                  level: 'HIGH PRIORITY',
                  title: 'Cyclone Preparedness',
                  message:
                      'Residents in coastal areas should monitor official warnings, prepare emergency supplies and follow evacuation instructions.',
                  color: Colors.red,
                  icon: Icons.warning_rounded,
                ),

                // ORANGE GUIDANCE CARD
                _advisoryCard(
                  level: 'IMPORTANT',
                  title: 'Heavy Rainfall Safety',
                  message:
                      'Avoid flooded roads, stay away from electric poles and avoid unnecessary travel during heavy rainfall.',
                  color: Colors.orange,
                  icon: Icons.cloud,
                ),

                // YELLOW GUIDANCE CARD
                _advisoryCard(
                  level: 'BE PREPARED',
                  title: 'Weather Advisory',
                  message:
                      'Keep drinking water, medicines, a torch, batteries and essential documents ready.',
                  color: Colors.amber.shade800,
                  icon: Icons.info_rounded,
                ),

                const SizedBox(height: 15),

                // OFFICIAL SOURCE CARD
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.06),
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.verified_user,
                        color: Color(0xFF1565C0),
                        size: 32,
                      ),
                      SizedBox(width: 13),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Official Weather Updates',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              'Always follow official cyclone warnings issued by the India Meteorological Department (IMD).',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                const Center(
                  child: Text(
                    'Stay Alert • Stay Safe • Stay Prepared',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ADVISORY CARD
  static Widget _advisoryCard({
    required String level,
    required String title,
    required String message,
    required Color color,
    required IconData icon,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.grey.shade200,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: color,
              size: 27,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  level,
                  style: TextStyle(
                    color: color,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.7,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF183153),
                  ),
                ),

                const SizedBox(height: 7),

                Text(
                  message,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

