
import 'package:flutter/material.dart';

class SafeSheltersPage extends StatelessWidget {
  const SafeSheltersPage({super.key});

  static const Color navy = Color(0xFF0D2B55);
  static const Color blue = Color(0xFF1565C0);
  static const Color background = Color(0xFFF4F8FC);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Text(
          'Safe Shelters',
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
                width: isWide ? 900 : double.infinity,
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
                                  'Emergency Safe Shelters',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  'Find a safe place during a cyclone.',
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
                      'Available Shelters',
                      style: TextStyle(
                        color: navy,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      'Sample shelter information',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 13,
                      ),
                    ),

                    const SizedBox(height: 16),

                    // SHELTER CARDS
                    if (isWide)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: _shelterCard(
                              context: context,
                              name: 'Government Cyclone Shelter',
                              address: 'Main Road, Coastal Area',
                              distance: '2.5 km away',
                              capacity: '500 people',
                              facilities:
                                  'Water • Food • First Aid • Toilets',
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: _shelterCard(
                              context: context,
                              name: 'Community Emergency Shelter',
                              address: 'Community Hall, Main Street',
                              distance: '4.1 km away',
                              capacity: '300 people',
                              facilities:
                                  'Water • Electricity • First Aid',
                            ),
                          ),
                        ],
                      )
                    else ...[
                      _shelterCard(
                        context: context,
                        name: 'Government Cyclone Shelter',
                        address: 'Main Road, Coastal Area',
                        distance: '2.5 km away',
                        capacity: '500 people',
                        facilities:
                            'Water • Food • First Aid • Toilets',
                      ),
                      _shelterCard(
                        context: context,
                        name: 'Community Emergency Shelter',
                        address: 'Community Hall, Main Street',
                        distance: '4.1 km away',
                        capacity: '300 people',
                        facilities:
                            'Water • Electricity • First Aid',
                      ),
                    ],

                    _shelterCard(
                      context: context,
                      name: 'School Emergency Shelter',
                      address: 'Government Higher Secondary School',
                      distance: '5.8 km away',
                      capacity: '400 people',
                      facilities:
                          'Water • Toilets • Medical Assistance',
                    ),

                    const SizedBox(height: 5),

                    // IMPORTANT NOTE
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.amber.shade50,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.amber.shade300,
                        ),
                      ),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.orange,
                            size: 26,
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              'The shelter details shown here are demo data. Always confirm the nearest available shelter with local authorities during an emergency.',
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

  // SHELTER CARD
  static Widget _shelterCard({
    required BuildContext context,
    required String name,
    required String address,
    required String distance,
    required String capacity,
    required String facilities,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFE1EAF4)),
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
          // SHELTER NAME
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: const Color(0xFFE8F1FC),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(
                  Icons.home_work,
                  color: blue,
                  size: 27,
                ),
              ),
              const SizedBox(width: 13),
              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(
                    color: navy,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),
          const Divider(color: Color(0xFFE8EEF5)),
          const SizedBox(height: 12),

          // ADDRESS
          _infoRow(Icons.location_on, address),

          const SizedBox(height: 12),

          // DISTANCE
          _infoRow(
            Icons.directions,
            distance,
            valueColor: blue,
          ),

          const SizedBox(height: 12),

          // CAPACITY
          _infoRow(
            Icons.people,
            'Capacity: $capacity',
          ),

          const SizedBox(height: 17),

          const Text(
            'Facilities Available',
            style: TextStyle(
              color: navy,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),

          const SizedBox(height: 7),

          Text(
            facilities,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 14,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 18),

          // VIEW ON MAP BUTTON
          SizedBox(
            width: double.infinity,
            height: 46,
            child: ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Map functionality will be added later.',
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.map_outlined),
              label: const Text(
                'View on Map',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: blue,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // INFORMATION ROW
  static Widget _infoRow(
    IconData icon,
    String text, {
    Color valueColor = Colors.black54,
  }) {
    return Row(
      children: [
        Icon(icon, color: blue, size: 21),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: valueColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
