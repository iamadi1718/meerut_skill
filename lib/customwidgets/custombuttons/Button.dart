import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.colors, required this.onTaps});
  final String text;
  final Color colors;
  final VoidCallback onTaps;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTaps,
      child: Container(
        height: 65,
        width: 300,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
