import 'package:flutter/material.dart';
import 'package:meerut_skill/authentication/login/Loginpage.dart';
import 'package:meerut_skill/authentication/signup/Signuppage.dart';
import 'package:meerut_skill/customwidgets/custombackground/CustomBackground.dart';
import 'package:meerut_skill/customwidgets/custombuttons/Button.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Custombackground(
      widget: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/app_logo.png'),
            SizedBox(height: height * 0.02),
            Text(
              'Welcome to Meerut Skills',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: height * 0.02),
            Text(
              'Fast and secure loan processing',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: height * 0.02),
            CustomButton(text: 'LOGIN', colors: Color(0xff2b1d4f), onTaps: () { 
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
             },),
            SizedBox(height: height * 0.02),
            CustomButton(text: 'SIGN UP', colors: Color(0xff949494), onTaps: () { 
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Signuppage()));
             },),
          ],
        ),
      ),
    );
  }
}
