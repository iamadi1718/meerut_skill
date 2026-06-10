import 'package:flutter/material.dart';
import 'package:meerut_skill/Drawer/Drawer.dart';
import 'package:meerut_skill/customwidgets/CustomDocuments/CustomDocuments.dart';
import 'package:meerut_skill/homepage/Homepage.dart';
import 'package:meerut_skill/profilescreen/Profilepage.dart';
import 'package:meerut_skill/chatscreen/chatscreen.dart';

class Managedocument extends StatelessWidget {
  const Managedocument({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      backgroundColor: const Color(0xFFF3F2F7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Purple Gradient Header
                Container(
                  height: 200,
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
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                  ),
                ),

                // White Curved Section
                Positioned(
                  top: 140,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF3F2F7),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(50),
                      ),
                    ),
                  ),
                ),

                // Floating "Manage Documents" Title Card
                Positioned(
                  top: 110,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 75,
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
                          "Manage Documents",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
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

            // Document List
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Column(
                children: [
                  Customdocuments(text: 'Aadhaar Card'),
                  Customdocuments(text: 'Address Proof'),
                  Customdocuments(text: 'Income Proof'),
                  Customdocuments(text: 'Bank Statements'),
                  Customdocuments(text: 'Purpose Letter'),
                  Customdocuments(text: 'Digital Signature'),
                  Customdocuments(text: 'Passport-size Photograph'),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          onTap: (index) {
            switch (index) {
              case 0:
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const DocumentsPage(),
                //   ),
                // );
                break;

              case 1:
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const NotificationPage(),
                //   ),
                // );
                break;

              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Homepage()),
                );
                break;

              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RecentChatsScreen(),
                  ),
                );
                break;

              case 4:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profilepage()),
                );
                break;
            }
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF2B1D4F),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.document_scanner_outlined, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_rounded, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_rounded, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
