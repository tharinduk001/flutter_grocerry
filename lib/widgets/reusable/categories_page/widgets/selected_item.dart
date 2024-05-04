import 'package:flutter/material.dart';
import 'package:flutter_grocerry/widgets/reusable/categories_page/widgets/item_desc_card.dart';
import 'package:flutter_grocerry/widgets/reusable/categories_page/widgets/ratings.dart';

class SelectedItem extends StatelessWidget {
  const SelectedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
          color: const Color(0xffE0DCD6).withOpacity(0.29),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              width: 10, color: const Color(0xffE0DCD6).withOpacity(0.4))),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Vegetables",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3B3636)),
            ),
            SizedBox(
              height: 15,
            ),
            ItemDescCard(
              number: 1,
              title:
                  "Vegetables are parts of plants that are consumed by humans...",
            ),
            ItemDescCard(
              number: 2,
              title:
                  "Vegetables are parts of plants that are consumed by humans...",
            ),
            ItemDescCard(
              number: 3,
              title:
                  "Vegetables are parts of plants that are consumed by humans...",
            ),
            ItemDescCard(
              number: 4,
              title:
                  "Vegetables are parts of plants that are consumed by humans...",
            ),
            SizedBox(
              height: 10,
            ),
            RatingsCard()
          ],
        ),
      ),
    );
  }
}
