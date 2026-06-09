import 'package:flutter/material.dart';

class Profiletextfield extends StatelessWidget {
  const Profiletextfield({super.key, required this.first, required this.second, required this.height, required this.width});
  final String first;
  final String second;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        )
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: first,
          hintText: second,
        ),
      ),
    );
  }
}