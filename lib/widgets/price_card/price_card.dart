import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  final int productNumber;
  final String productName;
  final double productWeight;
  final String unit;

  const PriceCard(
      {super.key,
      required this.productNumber,
      required this.productName,
      required this.productWeight,
      required this.unit});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xffFFE500)),
                  child: Center(
                    child: Text(
                      productNumber.toString(),
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Text(
                    productName,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 50,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xffD9D9D9).withOpacity(0.40)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "${productWeight.toStringAsFixed(2)} $unit",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              color: const Color(0xff3B3636), width: 1.5),
                        ),
                        child: const Center(
                          child: Icon(Icons.add),
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              color: const Color(0xff3B3636), width: 1.5),
                        ),
                        child: const Center(
                          child: Icon(Icons.remove),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
