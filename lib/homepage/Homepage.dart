import 'package:flutter/material.dart';
import 'package:meerut_skill/customwidgets/BuildBullet/buildBullet.dart';
import 'package:meerut_skill/profilescreen/Profilepage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.70,
        backgroundColor: Color(0xFF2E1A5E),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF2E1A5E)),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Profilepage()));
                },
                child: CircleAvatar(
                  radius: 25,
                
                  child: Icon(Icons.person, size: 40),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(15),
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Chat Support',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

            Divider(),
            Padding(
              padding: EdgeInsets.all(15),
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Contact Team',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

            Divider(),
            Padding(
              padding: EdgeInsets.all(15),
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Notification Center',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(15),
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Settings',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Divider(),
            SizedBox(height: 200),
            Divider(),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                            Scaffold.of(context).openDrawer();
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
                          child: _buildItem(Icons.edit_outlined, "Apply"),
                        ),
                        Container(width: 1, color: Colors.deepPurple),
                        Expanded(
                          child: _buildItem(
                            Icons.check_circle_outline,
                            "Status",
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
                          child: _buildItem(Icons.description_outlined, "Docs"),
                        ),
                        Container(width: 1, color: Colors.deepPurple),
                        Expanded(
                          child: _buildItem(Icons.send_outlined, "Inquire"),
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

Widget _buildItem(IconData icon, String title) {
  return InkWell(
    onTap: () {},
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 35, color: Colors.black87),

        const SizedBox(height: 8),

        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF2D225A),
          ),
        ),
      ],
    ),
  );
}
