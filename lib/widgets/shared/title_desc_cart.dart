import 'package:flutter/material.dart';

class TitleDescriptionCart extends StatelessWidget {
  final String title;
  final String description;

  const TitleDescriptionCart({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3B3636)),
            ),
            Text(
              description,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff3B3636).withOpacity(0.75)),
            ),
          ],
        ),
      ),
    );
  }
}
