import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          width: 330,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffffffff),
            border: Border.all(width: 1),
          ),
          child: TextField(
            maxLines: 1,
            decoration: InputDecoration(
              hintText: text,
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 5),
            ),
          ),
        ),
        SizedBox(height: height * 0.01),
      ],
    );
  }
}
