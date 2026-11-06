
import 'package:flutter/material.dart';

import 'cyclone_alerts_page.dart';
import 'cyclone_information_page.dart';
import 'safe_shelters_page.dart';
import 'emergency_checklist_page.dart';
import 'safety_instructions_page.dart';
import 'sos_page.dart';
import 'emergency_contacts_page.dart';
import 'about_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void openPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FC),

      appBar: AppBar(
        backgroundColor: const Color(0xFF0B2D59),
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cyclone Emergency',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Stay prepared. Stay safe.',
              style: TextStyle(fontSize: 11),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.shield_outlined, size: 28),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // EMERGENCY ALERT
                InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () => openPage(
                    context,
                    const CycloneAlertsPage(),
                  ),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF0EF),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.red.shade200,
                      ),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.warning_rounded,
                          color: Colors.red,
                          size: 34,
                        ),
                        const SizedBox(width: 13),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Emergency Alert',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Check cyclone warnings and updates.',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // SOS SECTION
                const Text(
                  'Emergency Help',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0B2D59),
                  ),
                ),

                const SizedBox(height: 15),

                Center(
                  child: Column(
                    children: [
                      Material(
                        color: Colors.red,
                        shape: const CircleBorder(),
                        elevation: 6,
                        child: InkWell(
                          customBorder: const CircleBorder(),
                          onTap: () => openPage(
                            context,
                            const SosPage(),
                          ),
                          child: const SizedBox(
                            width: 125,
                            height: 125,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.sos,
                                  color: Colors.white,
                                  size: 48,
                                ),
                                Text(
                                  'SOS',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Tap for emergency assistance',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 22),

                // CONTACTS CARD
                InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () => openPage(
                    context,
                    const EmergencyContactsPage(),
                  ),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.06),
                          blurRadius: 8,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFFE5F3EA),
                          child: Icon(
                            Icons.phone,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Emergency Contacts',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Find important emergency phone numbers',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 28),

                // SERVICES
                const Text(
                  'Emergency Services',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0B2D59),
                  ),
                ),

                const SizedBox(height: 15),

                LayoutBuilder(
                  builder: (context, constraints) {
                    final width = constraints.maxWidth < 360
                        ? constraints.maxWidth
                        : (constraints.maxWidth - 12) / 2;

                    return Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        SizedBox(
                          width: width,
                          child: serviceCard(
                            context,
                            Icons.campaign,
                            'Cyclone Alerts',
                            'Warnings and updates',
                            Colors.orange,
                            const CycloneAlertsPage(),
                          ),
                        ),
                        SizedBox(
                          width: width,
                          child: serviceCard(
                            context,
                            Icons.cyclone,
                            'Cyclone Information',
                            'Learn about cyclones',
                            Colors.blue,
                            const CycloneInformationPage(),
                          ),
                        ),
                        SizedBox(
                          width: width,
                          child: serviceCard(
                            context,
                            Icons.location_on,
                            'Safe Shelters',
                            'Find emergency shelters',
                            Colors.green,
                            const SafeSheltersPage(),
                          ),
                        ),
                        SizedBox(
                          width: width,
                          child: serviceCard(
                            context,
                            Icons.checklist,
                            'Emergency Checklist',
                            'Prepare essential items',
                            Colors.purple,
                            const EmergencyChecklistPage(),
                          ),
                        ),
                        SizedBox(
                          width: width,
                          child: serviceCard(
                            context,
                            Icons.shield,
                            'Safety Instructions',
                            'Learn safety measures',
                            Colors.teal,
                            const SafetyInstructionsPage(),
                          ),
                        ),
                        SizedBox(
                          width: width,
                          child: serviceCard(
                            context,
                            Icons.info_outline,
                            'About',
                            'About this application',
                            Colors.indigo,
                            const AboutPage(),
                          ),
                        ),
                      ],
                    );
                  },
                ),

                const SizedBox(height: 25),

                const Center(
                  child: Text(
                    'Stay Alert • Stay Safe • Stay Prepared',
                    textAlign: TextAlign.center,
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

  Widget serviceCard(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
    Color color,
    Widget page,
  ) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      elevation: 2,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => openPage(context, page),
        child: Container(
          constraints: const BoxConstraints(minHeight: 145),
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 23,
                backgroundColor: color.withValues(alpha: 0.12),
                child: Icon(
                  icon,
                  color: color,
                  size: 25,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
