import 'package:flutter/material.dart';

class Personalhomeloan extends StatefulWidget {
  const Personalhomeloan({super.key});

  @override
  State<Personalhomeloan> createState() => _PersonalhomeloanState();
}

class _PersonalhomeloanState extends State<Personalhomeloan> {
  String? employment = "Salaried";
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
            'Personal Information',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text('Full Name'),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  width: 280,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1),
                  ),
                  child: TextField(),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              const Text('Date of Birth', style: TextStyle(fontSize: 16)),
              const SizedBox(width: 10),

              SizedBox(
                width: 40,
                height: 35,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'DD',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('/'),
              ),

              SizedBox(
                width: 40,
                height: 35,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'MM',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('/'),
              ),

              SizedBox(
                width: 70,
                height: 35,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'YYYY',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text('Father"s Name'),
              SizedBox(width: 5),

              Expanded(
                child: Container(
                  width: 280,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1),
                  ),
                  child: TextField(),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text('Mother"s Name'),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  width: 280,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1),
                  ),
                  child: TextField(),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text('Spouse Name'),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  width: 280,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1),
                  ),
                  child: TextField(),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text('Phone Number'),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  width: 280,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1),
                  ),
                  child: TextField(),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text('Email Address'),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  width: 280,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1),
                  ),
                  child: TextField(),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text('Current Address'),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  width: 240,
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1),
                  ),
                  child: TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text('PAN Number'),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  width: 280,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1),
                  ),
                  child: TextField(),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text('Aadhar Number'),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  width: 280,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1),
                  ),
                  child: TextField(),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Employment Type:'),
              SizedBox(height: 5),
              Row(
                children: [
                  Radio<String>(
                    value: "Salaried",
                    groupValue: employment,
                    visualDensity: VisualDensity.compact,
                    onChanged: (value) {
                      setState(() {
                        employment = value!;
                      });
                    },
                  ),
                  const Text('Salaried'),
                  Radio<String>(
                    value: "Self-employeed",
                    groupValue: employment,
                    visualDensity: VisualDensity.compact,
                    onChanged: (value) {
                      setState(() {
                        employment = value!;
                      });
                    },
                  ),
                  const Text('Self-employeed'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
