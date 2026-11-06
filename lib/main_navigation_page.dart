
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'cyclone_alerts_page.dart';
import 'safe_shelters_page.dart';
import 'safety_instructions_page.dart';
import 'emergency_contacts_page.dart';

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() =>
      _MainNavigationPageState();
}

class _MainNavigationPageState
    extends State<MainNavigationPage> {

  int selectedIndex = 0;

  final List<Widget> pages = const [
    HomePage(),
    CycloneAlertsPage(),
    SafeSheltersPage(),
    SafetyInstructionsPage(),
    EmergencyContactsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),

      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF0B2D59),
        ),

        child: SafeArea(
          child: BottomNavigationBar(
            currentIndex: selectedIndex,

            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },

            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFF0B2D59),

            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white60,

            selectedFontSize: 11,
            unselectedFontSize: 10,

            showUnselectedLabels: true,
            elevation: 0,

            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Alerts',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.home_work),
                label: 'Shelters',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.shield),
                label: 'Guidelines',
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: 'More',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
