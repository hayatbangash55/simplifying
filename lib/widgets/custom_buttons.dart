import 'package:flutter/material.dart';

class CustomButton21 extends StatelessWidget {
  final String text;
  final Color buttonTextColor;
  final Color buttonColor;
  final VoidCallback onPressed;

  const CustomButton21({super.key,
    required this.text,
    this.buttonColor = Colors.black,
    this.buttonTextColor = Colors.white,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          color: buttonTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
