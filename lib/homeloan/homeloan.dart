import 'package:flutter/material.dart';
import 'package:meerut_skill/customwidgets/inquire/Inquirepage.dart';
import 'package:meerut_skill/homeloan/HomeLoanDetails.dart';
import 'package:meerut_skill/homeloan/IncomeDetails.dart';
import 'package:meerut_skill/homeloan/Personalhomeloan.dart';
import 'package:meerut_skill/homeloan/PropertyDetails.dart';

class Homeloan extends StatefulWidget {
  const Homeloan({super.key});

  @override
  State<Homeloan> createState() => _HomeloanState();
}

class _HomeloanState extends State<Homeloan> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E1A5E),
        title: Text(
          '  Personal Loan\nApplication Form',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Personalhomeloan(),
              Incomedetails(),
              Propertydetails(),
              Homeloandetails(),
              Uploaddocuments(),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3A2B6B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Done',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
   }
}