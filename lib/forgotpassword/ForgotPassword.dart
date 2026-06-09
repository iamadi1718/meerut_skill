import 'package:flutter/material.dart';
import 'package:meerut_skill/authentication/login/Loginpage.dart';
import 'package:meerut_skill/customwidgets/customtextfield/CustomTextfield.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF24104D), Color(0xFF5B42B6)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),

                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  left: 25,
                  right: 25,
                  bottom: -20,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 5,
                          offset: Offset(0, 3),
                          color: Colors.black12,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Change Password',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3A2B6B),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 50),

            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Customtextfield(text: 'Email'),

                  const SizedBox(height: 15),

                  Customtextfield(text: 'Enter OTP'),

                  const SizedBox(height: 8),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                        children: [
                          TextSpan(
                            text:
                                'The OTP will expire in 10 min. Click here to ',
                          ),
                          TextSpan(
                            text: 'resend.',
                            style: TextStyle(
                              color: Color(0xFF5B42B6),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: height * 0.01),
                  Customtextfield(text: 'New Password'),

                  SizedBox(height: height * 0.01),

                  Customtextfield(text: "Confirm Password"),

                  SizedBox(height: height * 0.04),

                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: width * 0.35,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF3A2B6B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Loginpage(),
                            ),
                          );
                        },
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
          ],
        ),
      ),
    );
  }
}
