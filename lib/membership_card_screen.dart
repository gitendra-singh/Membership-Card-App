import 'package:flutter/material.dart';
import 'package:membership_card_app/membership_card.dart';
import 'package:membership_card_app/refresh_button.dart';

class MembershipCardScreen extends StatelessWidget {
  const MembershipCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'Virtual Membership Card',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            Text(
              'Your Digital Access Pass',
              style: TextStyle(
                color: const Color.fromARGB(255, 92, 91, 91),
                fontSize: 13,
                height: 1.4,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
      
            MembershipCard(),
      
            SizedBox(height: 10),
      
            RefreshButton(),
      
            SizedBox(height: 10),
            Container(
              constraints: BoxConstraints(maxWidth: 320),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Click the refresh button to generate a new time-sensitive QR code for enhanced security.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 92, 91, 91),
                    fontSize: 13,
                    height: 1.4,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      )
    );
  }
}
