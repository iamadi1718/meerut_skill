import 'package:flutter/material.dart';
import 'package:meerut_skill/customwidgets/CustomDocuments/CustomDocuments.dart';

class Uploaddocuments extends StatefulWidget {
  const Uploaddocuments({super.key});

  @override
  State<Uploaddocuments> createState() => _UploaddocumentsState();
}

class _UploaddocumentsState extends State<Uploaddocuments> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      width: 406,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300, width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.25),
            blurRadius: 4,
            spreadRadius: 1,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Upload necessary\ndocuments',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Customdocuments(text: 'Aadhar Card'),
          Customdocuments(text: 'PAN Card'),
          Customdocuments(text: 'Property Papers'),
          Customdocuments(text: 'Salary slips'),
          Customdocuments(text: 'Bank Statements'),
          Customdocuments(text: 'NOC Certificates'),
          Customdocuments(text: 'Sale Deed'),
        ],
      ),
    );
  }
}
