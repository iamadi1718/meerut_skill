import 'package:flutter/material.dart';
import 'package:meerut_skill/authentication/login/Loginpage.dart';
import 'package:meerut_skill/profilescreen/Profilepage.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.70,
      backgroundColor: Color(0xFF2E1A5E),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF2E1A5E)),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profilepage()),
                );
              },
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/rect.jpeg'),
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Loginpage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
