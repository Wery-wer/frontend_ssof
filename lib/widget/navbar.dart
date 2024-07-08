import 'package:flutter/material.dart';
import 'package:frontend_ssof/themes/themes.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            Image.asset(
              'assets/LogoMrbos.png',
            ),
            ListTile(
              leading: Image.asset(
                'assets/create.png',
                width: 30,
              ),
              title: Text("Book Room"),
              onTap: () => print('book tapped'),
            ),
            ListTile(
              leading: Image.asset(
                'assets/booked.png',
                width: 30,
              ),
              title: Text("My Book"),
              onTap: () => print('book tapped'),
            ),
            ListTile(
              leading: Image.asset(
                'assets/Category.png',
                width: 30,
              ),
              title: Text("Meeting Roon List"),
              onTap: () => print('book tapped'),
            ),
            ListTile(
              leading: Image.asset(
                'assets/Document.png',
                width: 30,
              ),
              title: Text("All Booking"),
              onTap: () => print('book tapped'),
            )
          ],
        ));
  }
}
