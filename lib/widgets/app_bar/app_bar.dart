import 'package:flutter/material.dart';

Widget appBarLeading = Padding(
  padding: const EdgeInsets.all(5.0),
  child: Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color(0xff9E00FF)),
    child: const Center(
      child: Icon(
        Icons.add_location_alt,
        color: Colors.white,
      ),
    ),
  ),
);

Widget appBarTitle = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "Delivery Address",
      style: TextStyle(
          color: const Color(0xff3B3636).withOpacity(0.5), fontSize: 14),
    ),
    const Text("92, High Street, London",
        style: TextStyle(
            fontSize: 17,
            color: Color(0xff3B3636),
            fontWeight: FontWeight.w500)),
  ],
);

List<Widget>? appBarActions = [
  Padding(
    padding: const EdgeInsets.only(right: 5),
    child: Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color(0xffFF9900).withOpacity(0.59)),
      child: const Center(
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
      ),
    ),
  ),
];
