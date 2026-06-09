import 'package:flutter/material.dart';
import 'package:meerut_skill/customwidgets/Profiletextfield/ProfileTextfield.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Purple Header
              Container(
                height: 180,
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
                          Icons.menu,
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
                top: 80,
                left: 0,
                right: 0,
                child: Container(
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(140),
                    ),
                  ),
                ),
              ),

              // Floating Quick Stats Card
              Positioned(
                top: 45,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 150,
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
          Profiletextfield(
            first: 'Name',
            second: 'Anita Jindal',
            height: 80,
            width: 390,
          ),
          Row(
            children: [
              Expanded(
                child: Profiletextfield(
                  first: 'Age',
                  second: '30',
                  height: 80,
                  width: 165,
                ),
              ),
              Expanded(
                child: Profiletextfield(
                  first: 'Gender',
                  second: 'F',
                  height: 80,
                  width: 211,
                ),
              ),
            ],
          ),

          Profiletextfield(
            first: 'Phone Number',
            second: '9721 XXXXXX',
            height: 80,
            width: 390,
          ),
          Profiletextfield(
            first: 'Email',
            second: 'anita@gmail.com',
            height: 80,
            width: 390,
          ),
          Profiletextfield(
            first: 'Occupation',
            second: 'Business Owner',
            height: 80,
            width: 390,
          ),
          Profiletextfield(
            first: 'Aadhar Number',
            second: '123 456 789',
            height: 80,
            width: 390,
          ),
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
    );
  }
}
