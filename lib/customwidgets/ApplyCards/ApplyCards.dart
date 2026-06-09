import 'package:flutter/material.dart';

class Applycards extends StatelessWidget {
  const Applycards({
    super.key,
    required this.icons,
    required this.text,
    required this.desc, required this.onTaps,
  });
  final IconData icons;
  final String text;
  final String desc;
  final VoidCallback onTaps;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),

      width: 180,
      decoration: BoxDecoration(
        color: Color(0xffd9d9d9),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icons, color: Color(0xff2b1d4f), size: 32.0),
          Text(
            text,
            style: TextStyle(
              color: Color(0xff2b1d4f),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(child: Text(desc)),
          SizedBox(height: 30),
          InkWell(
            onTap: onTaps,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('APPLY'), Icon(Icons.arrow_right_alt)],
            ),
          ),
        ],
      ),
    );
  }
}
