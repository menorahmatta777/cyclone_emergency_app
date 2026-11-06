
import 'package:flutter/material.dart';

class SosPage extends StatelessWidget {
  const SosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FC),

      appBar: AppBar(
        title: const Text(
          'SOS Emergency',
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
            constraints: const BoxConstraints(maxWidth: 750),

            child: Column(
              children: [

                const SizedBox(height: 15),

                // EMERGENCY HEADER
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

                  child: const Column(
                    children: [
                      Icon(
                        Icons.health_and_safety,
                        color: Colors.white,
                        size: 45,
                      ),
                      SizedBox(height: 12),

                      Text(
                        'Emergency SOS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 8),

                      Text(
                        'Get help when you are in immediate danger.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // SOS CIRCLE
                Container(
                  width: 165,
                  height: 165,
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.red.shade200,
                      width: 5,
                    ),
                  ),

                  child: Icon(
                    Icons.sos,
                    color: Colors.red.shade700,
                    size: 95,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  'Need Immediate Help?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF183153),
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Press the button below to view emergency instructions.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 25),

                // SOS BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 65,

                  child: ElevatedButton.icon(
                    onPressed: () {
                      _showEmergencyDialog(context);
                    },

                    icon: const Icon(
                      Icons.warning_rounded,
                      size: 27,
                    ),

                    label: const Text(
                      'ACTIVATE SOS',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade700,
                      foregroundColor: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 28),

                // WHEN TO USE SOS
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),

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

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Color(0xFF1565C0),
                            size: 25,
                          ),
                          SizedBox(width: 10),

                          Text(
                            'When to use SOS',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF183153),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 18),

                      _instruction(
                        'You are trapped or injured.',
                      ),

                      _instruction(
                        'You need immediate emergency assistance.',
                      ),

                      _instruction(
                        'You are in serious danger.',
                      ),

                      _instruction(
                        'You need help during evacuation.',
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 18),

                // EMERGENCY REMINDER
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(17),

                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.red.shade200,
                    ),
                  ),

                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.red,
                        size: 27,
                      ),
                      SizedBox(width: 12),

                      Expanded(
                        child: Text(
                          'In a life-threatening emergency, contact local emergency services immediately. In India, you can call 112.',
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

                Text(
                  'Stay Calm • Stay Safe • Get Help',
                  style: TextStyle(
                    color: Colors.blueGrey.shade600,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
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

  static Widget _instruction(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 20,
          ),
          const SizedBox(width: 10),

          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void _showEmergencyDialog(BuildContext context) {
    showDialog(
      context: context,

      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),

          title: const Row(
            children: [
              Icon(
                Icons.warning_rounded,
                color: Colors.red,
              ),
              SizedBox(width: 10),
              Text('SOS Alert'),
            ],
          ),

          content: const Text(
            'This app does not automatically send an SOS alert or contact emergency services. If you are in danger, please call 112 or your local emergency service immediately.',
          ),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
