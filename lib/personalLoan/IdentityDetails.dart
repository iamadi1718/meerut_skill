import 'package:flutter/material.dart';

class Identitydetails extends StatefulWidget {
  const Identitydetails({super.key});

  @override
  State<Identitydetails> createState() => _IdentitydetailsState();
}

class _IdentitydetailsState extends State<Identitydetails> {
  String? selectedProof = "PAN";
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
            'Identity Details:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
              const Text("ID Proof Type:"),

              Row(
                children: [
                  Radio<String>(
                    value: "PAN",
                    groupValue: selectedProof,
                    visualDensity: VisualDensity.compact,
                    onChanged: (value) {
                      setState(() {
                        selectedProof = value!;
                      });
                    },
                  ),
                  const Text("PAN"),

                  Radio<String>(
                    value: "Aadhaar",
                    visualDensity: VisualDensity.compact,
                    groupValue: selectedProof,
                    onChanged: (value) {
                      setState(() {
                        selectedProof = value!;
                      });
                    },
                  ),
                  const Text("Aadhaar"),

                  Radio<String>(
                    value: "Passport",
                    groupValue: selectedProof,
                    visualDensity: VisualDensity.compact,
                    onChanged: (value) {
                      setState(() {
                        selectedProof = value!;
                      });
                    },
                  ),
                  const Text("Passport"),

                  // Radio<String>(
                  //   value: "License",
                  //   groupValue: selectedProof,
                  //   visualDensity: VisualDensity.compact,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       selectedProof = value!;
                  //     });
                  //   },
                  // ),
                  // const Text("License"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
