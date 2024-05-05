import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemDescCard extends StatelessWidget {
  final String title;
  final int number;
  const ItemDescCard({super.key, required this.title, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: const Color(0xffFFE500),
              borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Text(
              number.toString(),
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
        SizedBox(
            width: 260,
            child: Text(title,
                style: TextStyle(
                    color: const Color(0xff3B3636).withOpacity(0.75), fontSize: 15)))
      ],
    );
  }
}
