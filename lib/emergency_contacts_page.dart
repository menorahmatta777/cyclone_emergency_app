
import 'package:flutter/material.dart';

class EmergencyContactsPage extends StatelessWidget {
  const EmergencyContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FC),

      appBar: AppBar(
        title: const Text(
          'Emergency Contacts',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF0D47A1),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 850),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // HEADER
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF1565C0),
                        Color(0xFF0D47A1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: const Row(
                    children: [
                      Icon(
                        Icons.contact_phone,
                        color: Colors.white,
                        size: 45,
                      ),
                      SizedBox(width: 16),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Need Emergency Help?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              'Keep these important numbers ready. Help is just a call away.',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
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
                  'Important Numbers',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF183153),
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  'Contact the appropriate emergency service.',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 18),

                _contactCard(
                  icon: Icons.phone_in_talk,
                  title: 'Emergency Services',
                  number: '112',
                  description: 'National emergency helpline',
                  color: Colors.red,
                ),

                _contactCard(
                  icon: Icons.local_fire_department,
                  title: 'Fire & Rescue',
                  number: '101',
                  description: 'Fire and rescue emergency',
                  color: Colors.orange,
                ),

                _contactCard(
                  icon: Icons.local_police,
                  title: 'Police',
                  number: '100',
                  description: 'Police emergency assistance',
                  color: Colors.blue,
                ),

                _contactCard(
                  icon: Icons.medical_services,
                  title: 'Ambulance',
                  number: '108',
                  description: 'Emergency medical assistance',
                  color: Colors.green,
                ),

                _contactCard(
                  icon: Icons.support_agent,
                  title: 'Disaster Management',
                  number: '1078',
                  description: 'Disaster management helpline',
                  color: Colors.purple,
                ),

                const SizedBox(height: 10),

                // IMPORTANT NOTE
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade50,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.amber.shade200,
                    ),
                  ),

                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Colors.orange,
                        size: 27,
                      ),
                      SizedBox(width: 12),

                      Expanded(
                        child: Text(
                          'Emergency numbers and services may vary by location. Always follow official local emergency guidance.',
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 22),

                Center(
                  child: Text(
                    'Stay Alert • Stay Safe • Stay Prepared',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueGrey.shade600,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _contactCard({
    required IconData icon,
    required String title,
    required String number,
    required String description,
    required Color color,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 18,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Row(
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              icon,
              color: color,
              size: 29,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF183153),
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          Column(
            children: [
              Text(
                number,
                style: TextStyle(
                  color: color,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 4),

              Icon(
                Icons.phone,
                color: color,
                size: 19,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
