import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final int description;
  final Color cricleColor;
  final Color mainCategoryColor;
  final Color categoryBorderColor;

  const CategoryCard(
      {super.key,
      required this.title,
      required this.description,
      required this.cricleColor,
      required this.mainCategoryColor,
      required this.categoryBorderColor});

  final double cardWidth = 177;
  final double cardHeight = 95;
  final double circleRadius = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
          color: mainCategoryColor.withOpacity(0.29),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: categoryBorderColor)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: const Color(0xff3B3636).withOpacity(0.91),
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
                Text(
                  "$description+ more...",
                  style: TextStyle(
                      color: const Color(0xff3B3636).withOpacity(0.47),
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
              ],
            ),
            Container(
              width: circleRadius,
              height: circleRadius,
              decoration: BoxDecoration(
                color: cricleColor,
                borderRadius: BorderRadius.circular(50),
              ),
            )
          ],
        ),
      ),
    );
  }
}
