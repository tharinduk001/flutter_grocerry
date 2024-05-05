import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  final double cardHeight = 80;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xffF2E4ce),
          border: Border.all(width: 1.1, color: const Color(0xffFF9900)),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Get 100% off on Groceries Plus T&C Apply",
              style: TextStyle(
                  fontSize: 13.2,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFF9900)),
            ),
            Text(
              "Speed payments with master and visa",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff3B3636).withOpacity(0.47)),
            ),
          ],
        ),
      ),
    );
  }
}
