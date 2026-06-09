import 'package:flutter/material.dart';
import 'package:meerut_skill/customwidgets/custombackground/CustomBackground.dart';
import 'package:meerut_skill/customwidgets/custombuttons/Button.dart';
import 'package:meerut_skill/customwidgets/customtextfield/CustomTextfield.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Custombackground(
      widget: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height * 0.10),
              Image.asset('assets/images/app_logo.png'),
              SizedBox(height: height * 0.01),
              Text('Sign up'),
              SizedBox(height: height * 0.01),
              Customtextfield(text: 'Enter Name'),

              Customtextfield(text: 'Enter email'),
              Customtextfield(text: 'Set password'),
              Customtextfield(text: 'Confirm password'),
              Customtextfield(text: 'Enter bank service'),
              Customtextfield(text: 'Enter account number'),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  SizedBox(width: width * 0.01),
                  const Text("I agree with company’s Privacy policy and T&C"),
                ],
              ),
              CustomButton(
                text: 'SIGN UP',
                colors: Color(0xff949494),
                onTaps: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signuppage()),
                  );
                },
              ),
              SizedBox(height: height * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
