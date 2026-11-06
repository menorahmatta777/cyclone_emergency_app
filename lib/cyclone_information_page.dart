
import 'package:flutter/material.dart';

class CycloneInformationPage extends StatelessWidget {
  const CycloneInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FC),

      appBar: AppBar(
        title: const Text(
          'Cyclone Information',
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
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // TOP CYCLONE PANEL
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF0B2D59),
                        Color(0xFF1976D2),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.cyclone,
                        color: Colors.white,
                        size: 48,
                      ),
                      SizedBox(height: 14),
                      Text(
                        'Cyclone Monitoring',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Understand cyclone conditions and stay prepared.',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 18),
                      Divider(color: Colors.white38),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Demo information – live monitoring is not connected.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // CYCLONE DETAILS
                const Text(
                  'Cyclone Details',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0B2D59),
                  ),
                ),

                const SizedBox(height: 15),

                LayoutBuilder(
                  builder: (context, constraints) {
                    final width = (constraints.maxWidth - 12) / 2;

                    return Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        SizedBox(
                          width: width,
                          child: _detailCard(
                            Icons.location_on,
                            'Location',
                            'Bay of Bengal',
                            Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: width,
                          child: _detailCard(
                            Icons.air,
                            'Wind Speed',
                            '120 km/h',
                            Colors.blue,
                          ),
                        ),
                        SizedBox(
                          width: width,
                          child: _detailCard(
                            Icons.navigation,
                            'Direction',
                            'North-West',
                            Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: width,
                          child: _detailCard(
                            Icons.speed,
                            'Category',
                            'Severe',
                            Colors.orange,
                          ),
                        ),
                      ],
                    );
                  },
                ),

                const SizedBox(height: 28),

                // CYCLONE TRACK
                const Text(
                  'Cyclone Track',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0B2D59),
                  ),
                ),

                const SizedBox(height: 15),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.map_outlined,
                        size: 65,
                        color: Color(0xFF1565C0),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Cyclone Tracking Map',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(
                        'Live cyclone tracking will be available here in a future update.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 28),

                // WEATHER INFORMATION
                const Text(
                  'Weather Information',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0B2D59),
                  ),
                ),

                const SizedBox(height: 15),

                _weatherItem(
                  Icons.water_drop,
                  'Rainfall',
                  'Heavy rainfall possible',
                  Colors.blue,
                ),

                _weatherItem(
                  Icons.air,
                  'Wind',
                  'Strong winds may occur',
                  Colors.orange,
                ),

                _weatherItem(
                  Icons.waves,
                  'Sea Condition',
                  'Rough sea conditions possible',
                  Colors.teal,
                ),

                _weatherItem(
                  Icons.warning_rounded,
                  'Safety Advice',
                  'Follow official weather warnings',
                  Colors.red,
                ),

                const SizedBox(height: 15),

                // OFFICIAL INFORMATION
                Container(
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
                        size: 28,
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'The information displayed is demo content, not live weather data. Always follow official warnings from the India Meteorological Department (IMD).',
                          style: TextStyle(
                            fontSize: 13,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

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

  // DETAIL CARD
  static Widget _detailCard(
    IconData icon,
    String title,
    String value,
    Color color,
  ) {
    return Container(
      constraints: const BoxConstraints(minHeight: 125),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 21,
            backgroundColor: color.withValues(alpha: 0.12),
            child: Icon(icon, color: color, size: 23),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF183153),
            ),
          ),
        ],
      ),
    );
  }

  // WEATHER ITEM
  static Widget _weatherItem(
    IconData icon,
    String title,
    String description,
    Color color,
  ) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 23,
            backgroundColor: color.withValues(alpha: 0.12),
            child: Icon(icon, color: color, size: 25),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
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

