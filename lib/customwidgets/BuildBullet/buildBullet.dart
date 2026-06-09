import 'package:flutter/material.dart';

Widget buildBullet(String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10, left: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "•",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(text, style: const TextStyle(fontSize: 15, height: 1.4)),
        ),
      ],
    ),
  );
}
