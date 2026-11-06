
import 'package:flutter/material.dart';

class SafetyInstructionsPage extends StatelessWidget {
  const SafetyInstructionsPage({super.key});

  static const Color navy = Color(0xFF0D2B55);
  static const Color blue = Color(0xFF1565C0);
  static const Color background = Color(0xFFF4F8FC);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Text(
          'Safety Instructions',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: navy,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth >= 700;

            return Center(
              child: SizedBox(
                width: isWide ? 950 : double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // HEADER
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(22),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF1565C0), navy],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.health_and_safety,
                            color: Colors.white,
                            size: 45,
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cyclone Safety Guide',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  'Follow these instructions to protect yourself and your family.',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                    height: 1.4,
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
                      'Safety Guidelines',
                      style: TextStyle(
                        color: navy,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      'Follow these steps at every stage of a cyclone.',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 13,
                      ),
                    ),

                    const SizedBox(height: 18),

                    // BEFORE CYCLONE
                    _safetySection(
                      title: 'Before a Cyclone',
                      subtitle: 'Prepare before the cyclone arrives',
                      icon: Icons.access_time,
                      color: Colors.green,
                      points: [
                        'Listen to official cyclone warnings and weather updates.',
                        'Keep drinking water and non-perishable food ready.',
                        'Charge your mobile phones and power banks.',
                        'Keep a torch and extra batteries ready.',
                        'Keep medicines and a first-aid kit available.',
                        'Secure doors, windows and loose objects around your home.',
                        'Keep important documents in a waterproof bag.',
                        'Know the location of the nearest emergency shelter.',
                        'Follow evacuation instructions from local authorities.',
                      ],
                    ),

                    const SizedBox(height: 18),

                    // DURING CYCLONE
                    _safetySection(
                      title: 'During a Cyclone',
                      subtitle: 'Stay indoors and remain alert',
                      icon: Icons.warning_rounded,
                      color: Colors.orange,
                      points: [
                        'Stay indoors and remain in a safe part of the building.',
                        'Stay away from windows and glass doors.',
                        'Do not go outside during strong winds or heavy rain.',
                        'Keep listening to official emergency announcements.',
                        'Do not touch fallen electrical wires.',
                        'Use a battery-powered torch if electricity goes out.',
                        'Keep children and elderly people in a safe area.',
                        'Do not travel through flooded roads.',
                        'Evacuate immediately if authorities instruct you to do so.',
                      ],
                    ),

                    const SizedBox(height: 18),

                    // AFTER CYCLONE
                    _safetySection(
                      title: 'After a Cyclone',
                      subtitle: 'Be careful even after the storm',
                      icon: Icons.health_and_safety,
                      color: blue,
                      points: [
                        'Wait for official confirmation that it is safe to go outside.',
                        'Stay away from damaged buildings and structures.',
                        'Avoid fallen electrical wires and damaged poles.',
                        'Do not walk or drive through floodwater.',
                        'Check family members and neighbours for injuries.',
                        'Use clean and safe drinking water.',
                        'Report dangerous situations to emergency authorities.',
                        'Continue following official weather updates.',
                      ],
                    ),

                    const SizedBox(height: 22),

                    // EMERGENCY REMINDER
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: Colors.red.shade200,
                        ),
                      ),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.warning_rounded,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Emergency Reminder',
                                  style: TextStyle(
                                    color: Color(0xFFB71C1C),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  'Always follow instructions from local authorities and official disaster management agencies during a cyclone.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 22),

                    Center(
                      child: Text(
                        'Stay Alert • Stay Safe • Stay Prepared',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // SAFETY SECTION CARD
  static Widget _safetySection({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required List<String> points,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xFFE1EAF4),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SECTION HEADER
          Row(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 28,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: navy,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),
          const Divider(color: Color(0xFFE8EEF5)),
          const SizedBox(height: 12),

          // SAFETY POINTS
          ...points.map(
            (point) => Padding(
              padding: const EdgeInsets.only(bottom: 13),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: color,
                    size: 20,
                  ),
                  const SizedBox(width: 11),
                  Expanded(
                    child: Text(
                      point,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
