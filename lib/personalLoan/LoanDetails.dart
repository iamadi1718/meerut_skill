import 'package:flutter/material.dart';

class Loandetails extends StatelessWidget {
  const Loandetails({super.key});

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
            'Loan Details',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text('Amount Required'),
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
              Text('Loan Tenure'),
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
              Text('Loan Purpose'),
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
              Text('Interest Type'),
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
        ],
      ),
    );
  }
}
