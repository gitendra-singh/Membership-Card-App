import 'package:flutter/material.dart';
import 'package:membership_card_app/qr_data_provider.dart';
import 'package:provider/provider.dart';

class RefreshButton extends StatelessWidget {
  const RefreshButton({super.key});

  @override
  Widget build(BuildContext context) {
    final qrDataProvider = context.read<QrDataProvider>();
    return ElevatedButton.icon(
      onPressed: qrDataProvider.refreshQR,
      icon: Icon(Icons.refresh_sharp, color: Colors.white),
      label: Text(
        'Refresh QR Code',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF12121C),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 2,
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
