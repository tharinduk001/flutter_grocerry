import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  final String title;
  final String description;
  final Color largeContainerColor;
  final Color smallContainerColor;
  final Color textColor;

  const CategoryBox(
      {super.key,
      required this.title,
      required this.description,
      required this.largeContainerColor,
      required this.smallContainerColor, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 220,
      decoration: BoxDecoration(
        color: largeContainerColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:  TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              description,
              style:  TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 160,
              height: 80,
              decoration: BoxDecoration(
                color: smallContainerColor,
                borderRadius: BorderRadius.circular(20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
