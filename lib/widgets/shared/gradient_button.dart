import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final double buttonWidth;
  final double buttonHeight;
  final Color topColor;
  final Color bottomColor;
  final String buttonText;

  const GradientButton(
      {super.key,
      required this.buttonWidth,
      required this.buttonHeight,
      required this.topColor,
      required this.bottomColor,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: LinearGradient(
              colors: [topColor, bottomColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Center(
        child: Text(
          buttonText,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
