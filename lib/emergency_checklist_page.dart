
import 'package:flutter/material.dart';

class EmergencyChecklistPage extends StatefulWidget {
  const EmergencyChecklistPage({super.key});

  @override
  State<EmergencyChecklistPage> createState() =>
      _EmergencyChecklistPageState();
}

class _EmergencyChecklistPageState
    extends State<EmergencyChecklistPage> {
  static const Color navy = Color(0xFF0D2B55);
  static const Color blue = Color(0xFF1565C0);
  static const Color background = Color(0xFFF4F8FC);

  final List<Map<String, dynamic>> items = [
    {
      'title': 'Drinking Water',
      'subtitle': 'Keep enough clean drinking water.',
      'icon': Icons.water_drop,
      'checked': false,
    },
    {
      'title': 'Food Supplies',
      'subtitle': 'Keep ready-to-eat food and groceries.',
      'icon': Icons.restaurant,
      'checked': false,
    },
    {
      'title': 'First Aid Kit',
      'subtitle': 'Keep medicines and medical supplies.',
      'icon': Icons.medical_services,
      'checked': false,
    },
    {
      'title': 'Torch / Flashlight',
      'subtitle': 'Keep a working torch with batteries.',
      'icon': Icons.flashlight_on,
      'checked': false,
    },
    {
      'title': 'Power Bank',
      'subtitle': 'Charge your phone and power bank.',
      'icon': Icons.battery_charging_full,
      'checked': false,
    },
    {
      'title': 'Important Documents',
      'subtitle': 'Keep important documents protected.',
      'icon': Icons.description,
      'checked': false,
    },
    {
      'title': 'Emergency Clothes',
      'subtitle': 'Keep extra clothes and personal items.',
      'icon': Icons.checkroom,
      'checked': false,
    },
    {
      'title': 'Emergency Contacts',
      'subtitle': 'Save important emergency numbers.',
      'icon': Icons.contact_phone,
      'checked': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final completed =
        items.where((item) => item['checked'] == true).length;

    final progress = completed / items.length;

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Text(
          'Emergency Checklist',
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
                width: isWide ? 1000 : double.infinity,
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
                            Icons.checklist_rounded,
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
                                  'Be Prepared',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  'Prepare these essential items before a cyclone.',
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

                    const SizedBox(height: 22),

                    // PROGRESS CARD
                    Container(
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
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Preparation Progress',
                                style: TextStyle(
                                  color: navy,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${(progress * 100).round()}%',
                                style: const TextStyle(
                                  color: blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '$completed of ${items.length} items prepared',
                            style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 15),
                          LinearProgressIndicator(
                            value: progress,
                            minHeight: 9,
                            borderRadius: BorderRadius.circular(10),
                            backgroundColor: Color(0xFFE8EEF5),
                            color: blue,
                          ),
                          if (completed == items.length) ...[
                            const SizedBox(height: 12),
                            const Text(
                              'All items checked! Stay prepared.',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),

                    const SizedBox(height: 25),

                    const Text(
                      'Essential Items',
                      style: TextStyle(
                        color: navy,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      'Tick each item once it is ready.',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 13,
                      ),
                    ),

                    const SizedBox(height: 16),

                    // RESPONSIVE CHECKLIST
                    Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: items.map((item) {
                        return SizedBox(
                          width: isWide
                              ? (constraints.maxWidth - 15) / 2
                              : constraints.maxWidth,
                          child: _checklistItem(item),
                        );
                      }).toList(),
                    ),

                    const SizedBox(height: 20),

                    // IMPORTANT NOTE
                    Container(
                      width: double.infinity,
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
                              'Complete your checklist before severe weather conditions begin. Keep emergency supplies easily accessible.',
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

  // CHECKLIST ITEM CARD
  Widget _checklistItem(Map<String, dynamic> item) {
    final checked = item['checked'] == true;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: checked
              ? Colors.blue.shade200
              : const Color(0xFFE1EAF4),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 7,
        ),
        leading: Container(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
            color: const Color(0xFFE8F1FC),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Icon(
            item['icon'] as IconData,
            color: blue,
            size: 25,
          ),
        ),
        title: Text(
          item['title'] as String,
          style: TextStyle(
            color: navy,
            fontWeight: FontWeight.bold,
            fontSize: 15,
            decoration:
                checked ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: Text(
          item['subtitle'] as String,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
          ),
        ),
        trailing: Checkbox(
          value: checked,
          activeColor: blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          onChanged: (value) {
            setState(() {
              item['checked'] = value ?? false;
            });
          },
        ),
      ),
    );
  }
}
