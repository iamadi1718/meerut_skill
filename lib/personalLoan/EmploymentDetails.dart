import 'package:flutter/material.dart';

class Employmentdetails extends StatefulWidget {
  const Employmentdetails({super.key});

  @override
  State<Employmentdetails> createState() => _EmploymentdetailsState();
}

class _EmploymentdetailsState extends State<Employmentdetails> {
  String? selectedProof = "salaried";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      width: 406,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Colors.grey),
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
            'Employment Details',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Employment Type:"),

                  Row(
                    children: [
                      Radio<String>(
                        value: "salaried",
                        groupValue: selectedProof,
                        visualDensity: VisualDensity.compact,
                        onChanged: (value) {
                          setState(() {
                            selectedProof = value!;
                          });
                        },
                      ),
                      const Text("Salaried"),

                      Radio<String>(
                        value: "Self-employeed",
                        visualDensity: VisualDensity.compact,
                        groupValue: selectedProof,
                        onChanged: (value) {
                          setState(() {
                            selectedProof = value!;
                          });
                        },
                      ),
                      const Text("Self Employed"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Text('Company Name'),
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
              Text('Job Title'),
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
              Text('Work Experience'),
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
              Text('Monthly Income'),
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
