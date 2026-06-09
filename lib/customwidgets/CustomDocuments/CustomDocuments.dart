import 'package:flutter/material.dart';

class Customdocuments extends StatefulWidget {
  const Customdocuments({super.key, required this.text});
  final String text;

  @override
  State<Customdocuments> createState() => _CustomdocumentsState();
}

class _CustomdocumentsState extends State<Customdocuments> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xFFD8D2F0),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset('assets/images/essay.png', height: 20, width: 30),

            const SizedBox(width: 8),

            Expanded(
              child: Text(
                widget.text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.upload_outlined, size: 28),
            ),

            const SizedBox(width: 4),

            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: isSelected ? const Icon(Icons.check, size: 16) : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
