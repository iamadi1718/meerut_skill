import 'package:flutter/material.dart';
import 'package:meerut_skill/customwidgets/Profiletextfield/ProfileTextfield.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Purple Header
                Container(
                  height: 230,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF2E1A5E), Color(0xFF5B42B6)],
                    ),
                  ),
                ),

                // Menu Icon
                Positioned(
                  top: 50,
                  left: 20,
                  child: Builder(
                    builder:
                        (context) => IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 5,
                  child: Builder(
                    builder:
                        (context) => IconButton(
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                  ),
                ),

                // White Curved Section
                Positioned(
                  top: 150,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 80,

                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(100),
                      ),
                    ),
                  ),
                ),

                // Floating Quick Stats Card
                Positioned(
                  top: 100,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      width: 220,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          "Profile",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2E1A5E),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Profiletextfield(first: 'Name', second: 'Anita Jindal', width: 390),
            Row(
              children: [
                Expanded(
                  child: Profiletextfield(
                    first: 'Age',
                    second: '30',

                    width: 165,
                  ),
                ),
                Expanded(
                  child: Profiletextfield(
                    first: 'Gender',
                    second: 'F',

                    width: 211,
                  ),
                ),
              ],
            ),

            Profiletextfield(
              first: 'Phone Number',
              second: '9721 XXXXXX',

              width: 390,
            ),
            Profiletextfield(
              first: 'Email',
              second: 'anita@gmail.com',

              width: 390,
            ),
            Profiletextfield(
              first: 'Occupation',
              second: 'Business Owner',

              width: 390,
            ),
            Profiletextfield(
              first: 'Aadhar Number',
              second: '123 456 789',

              width: 390,
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Change Password',
                  style: TextStyle(color: Color(0xFF3A2B6B), fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Align(
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
                    onPressed: () {},
                    child: const Text(
                      'Done',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
