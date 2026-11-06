import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(const CycloneEmergencyApp());
}

class CycloneEmergencyApp extends StatelessWidget {
  const CycloneEmergencyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cyclone Emergency',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
} 