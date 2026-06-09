import 'package:flutter/material.dart';

class Custombackground extends StatelessWidget {
  const Custombackground({super.key, required this.widget});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/rect.jpeg'),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
        ),
        child: widget,
      ),
    );
  }
}
