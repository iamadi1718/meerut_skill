import 'package:flutter/material.dart';
import 'package:meerut_skill/personalLoan/EmploymentDetails.dart';
import 'package:meerut_skill/personalLoan/IdentityDetails.dart';
import 'package:meerut_skill/personalLoan/LoanDetails.dart';
import 'package:meerut_skill/personalLoan/PersonalInformation.dart';
import 'package:meerut_skill/personalLoan/UploadDocuments.dart';

class Personalloan extends StatelessWidget {
  const Personalloan({super.key});

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
              Personalinformation(),
              Identitydetails(),
              Employmentdetails(),
              Loandetails(),
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
