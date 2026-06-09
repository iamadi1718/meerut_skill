import 'package:flutter/material.dart';

Widget buildItem(IconData icon, String title, VoidCallback onTaps) {
  return InkWell(
    onTap: onTaps,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 35, color: Colors.black87),

        const SizedBox(height: 8),

        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2D225A),
          ),
        ),
      ],
    ),
  );
}
