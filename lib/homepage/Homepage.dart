import 'package:flutter/material.dart';
import 'package:meerut_skill/Drawer/Drawer.dart';
import 'package:meerut_skill/applypage/Applypage.dart';
import 'package:meerut_skill/customwidgets/BuildBullet/buildBullet.dart';
import 'package:meerut_skill/customwidgets/BuildItem/buildItem.dart';
import 'package:meerut_skill/customwidgets/inquire/Inquirepage.dart';
import 'package:meerut_skill/manage%20document/managedocument.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
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
                  top: 40,
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
                  top: 130,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(85),
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
                          "Quick\nStats",
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
            SizedBox(height: 20),
            Container(
              width: 280,
              height: 180,
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: buildItem(Icons.edit_outlined, "Apply", () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Applypage(),
                              ),
                            );
                          }),
                        ),
                        Container(width: 1, color: Colors.deepPurple),
                        Expanded(
                          child: buildItem(
                            Icons.check_circle_outline,
                            "Status",
                            () {},
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(height: 1, color: Colors.deepPurple),

                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: buildItem(
                            Icons.description_outlined,
                            "Docs",
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Managedocument(),
                                ),
                     );
                            }
                              
                            
                            
                          ),
                        ),
                        Container(width: 1, color: Colors.deepPurple),
                        Expanded(
                          child: buildItem(Icons.send_outlined, "Inquire", () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Inquirepage(),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "Our Mission and Vision",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E255C),
              ),
            ),

            const SizedBox(height: 16),

            buildBullet(
              "To design intuitive, high-impact products that solve real business challenges with precision.",
            ),

            buildBullet(
              "To deliver secure, scalable, and efficient technology that enhances operational efficiency.",
            ),

            buildBullet(
              "To ensure customer success through continuous support, research, and data-driven improvements.",
            ),

            buildBullet(
              "To foster a culture of collaboration, skill development, and inclusive growth within our teams.",
            ),

            buildBullet(
              "To transform everyday workflows into seamless, automated experiences through smart solutions.",
            ),

            const SizedBox(height: 20),

            buildBullet(
              "To become a globally trusted leader in delivering innovative, people-centric digital solutions.",
            ),

            buildBullet(
              "To empower businesses with technology that simplifies work, accelerates growth, and inspires change.",
            ),

            buildBullet(
              "To create a future where intelligent systems improve productivity and decision-making for every team.",
            ),

            buildBullet(
              "To build a workplace where creativity, transparency, and excellence drive continuous improvement.",
            ),

            buildBullet(
              "To shape the digital ecosystem of tomorrow through innovation, ethics, and customer-first values.",
            ),
          ],
        ),
      ),
    );
  }
}
