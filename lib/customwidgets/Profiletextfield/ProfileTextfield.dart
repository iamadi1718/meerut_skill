import 'package:flutter/material.dart';

class Profiletextfield extends StatelessWidget {
  const Profiletextfield({
    super.key,
    required this.first,
    required this.second,

    required this.width,
  });
  final String first;
  final String second;

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 1.5),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 10),
            labelText: first,
            hintText: second,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
