import 'package:flutter/material.dart';
import 'package:meerut_skill/customwidgets/custombackground/CustomBackground.dart';
import 'package:meerut_skill/customwidgets/custombuttons/Button.dart';
import 'package:meerut_skill/customwidgets/customtextfield/CustomTextfield.dart';
import 'package:meerut_skill/forgotpassword/ForgotPassword.dart';
import 'package:meerut_skill/homepage/Homepage.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Custombackground(
      widget: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/app_logo.png'),

              SizedBox(height: height * 0.03),
              Customtextfield(text: 'Enter email'),
              Customtextfield(text: 'Enter Password'),
              SizedBox(height: height * 0.01),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotPasswordScreen(),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, right: 8),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text("Forgot Password?"),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),
              CustomButton(
                text: 'LOGIN',
                colors: Color(0xff2b1d4f),
                onTaps: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
