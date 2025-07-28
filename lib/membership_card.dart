import 'package:flutter/material.dart';
import 'package:membership_card_app/qr_data_provider.dart';
import 'package:provider/provider.dart';
import 'qr_code_widget.dart';

class MembershipCard extends StatelessWidget {
  const MembershipCard({super.key});

  @override
  Widget build(BuildContext context) {
    final qrData = context.watch<QrDataProvider>().qrData;
    
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        elevation: 8,
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        clipBehavior: Clip.antiAlias,
        color: Color.fromRGBO(23, 32, 48, 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 44,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 36,
                  backgroundImage: AssetImage('images/image.png'),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Gitendra Singh",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 222, 163, 4),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  "Platinum Member",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ),
              const SizedBox(height: 12),
      
              Divider(
                color: Colors.white24,
                thickness: 1,
                height: 20,
                endIndent: 0,
                indent: 0,
              ),
      
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Member Since',
                        style: TextStyle(color: Colors.grey[300], fontSize: 14),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Jan 2025',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
      
                  Spacer(),
      
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'User ID',
                        style: TextStyle(color: Colors.grey[300], fontSize: 14),
                      ),
                      const SizedBox(height: 2),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 200),
                        child: Text(
                          qrData,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
      
              const SizedBox(height: 22),
              
              QrCodeWidget(data: qrData),
      
              const SizedBox(height: 20),
              Text(
                'Scan this code for quick access for your membership benefits',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
