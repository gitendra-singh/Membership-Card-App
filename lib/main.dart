import 'package:flutter/material.dart';
import 'package:membership_card_app/membership_card_screen.dart';
import 'package:membership_card_app/qr_data_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => QrDataProvider(),
      child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Membership Card App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF0D1B2A)),
      ),
      home: const MembershipCardScreen(),
    );
  }
}

