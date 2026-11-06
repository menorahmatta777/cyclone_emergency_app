
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FC),

      appBar: AppBar(
        title: const Text(
          'About',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF0D47A1),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),

        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 850),

            child: Column(
              children: [

                // APP HEADER
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 28,
                    horizontal: 20,
                  ),

                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF1565C0),
                        Color(0xFF0D47A1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(22),
                  ),

                  child: Column(
                    children: [
                      Container(
                        width: 105,
                        height: 105,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.15),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),

                        child: const Icon(
                          Icons.cyclone,
                          color: Color(0xFF0D47A1),
                          size: 65,
                        ),
                      ),

                      const SizedBox(height: 18),

                      const Text(
                        'Cyclone Emergency',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        'Stay Safe • Stay Prepared',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // ABOUT APP
                _infoBox(
                  icon: Icons.info_outline,
                  title: 'About the App',
                  text:
                      'Cyclone Emergency is a disaster management application designed to help people prepare for and respond to cyclone emergencies. The app provides cyclone alerts, safety information, emergency contacts, shelters and preparation tools in one place.',
                  color: Colors.blue,
                ),

                // PURPOSE
                _infoBox(
                  icon: Icons.flag_outlined,
                  title: 'Purpose',
                  text:
                      'The main purpose of this application is to provide useful emergency information quickly and help users stay informed and prepared during cyclone situations.',
                  color: Colors.green,
                ),

                // FEATURES
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(bottom: 16),

                  decoration: _cardDecoration(),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const Row(
                        children: [
                          Icon(
                            Icons.apps,
                            color: Colors.purple,
                            size: 29,
                          ),
                          SizedBox(width: 10),

                          Text(
                            'Main Features',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF183153),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      _feature('Cyclone Alerts'),
                      _feature('Cyclone Information'),
                      _feature('Live Cyclone Tracking'),
                      _feature('Safe Shelters'),
                      _feature('Emergency Checklist'),
                      _feature('Safety Instructions'),
                      _feature('Emergency Contacts'),
                      _feature('SOS Emergency Assistance'),
                    ],
                  ),
                ),

                // OFFICIAL INFORMATION
                _infoBox(
                  icon: Icons.public,
                  title: 'Official Information',
                  text:
                      'The final version of this application will use reliable official sources for real-time cyclone and weather information. Emergency information should always be confirmed with local authorities and official disaster management agencies.',
                  color: Colors.orange,
                ),

                const SizedBox(height: 10),

                // VERSION
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),

                  child: Column(
                    children: [
                      const Icon(
                        Icons.shield_outlined,
                        color: Color(0xFF1565C0),
                        size: 32,
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        'Cyclone Emergency App',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF183153),
                        ),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        'Version 1.0',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade600,
                        ),
                      ),

                      const SizedBox(height: 12),

                      Text(
                        'Stay Alert • Stay Safe • Stay Prepared',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.blueGrey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      boxShadow: [
        BoxShadow(
          color: Colors.blueGrey.withValues(alpha: 0.08),
          blurRadius: 12,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }

  static Widget _infoBox({
    required IconData icon,
    required String title,
    required String text,
    required Color color,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 16),

      decoration: _cardDecoration(),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [
              Container(
                width: 43,
                height: 43,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 25,
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF183153),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              height: 1.6,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  static Widget _feature(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13),

      child: Row(
        children: [
          const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 20,
          ),

          const SizedBox(width: 11),

          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF183153),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
