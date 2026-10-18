import 'package:betopiatask/views/profileview/widgets/details_section_widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(250),

      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: Text(
          'My Profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,

        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(Icons.edit, size: 20),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 16),

            CircleAvatar(
              radius: 75, // Radius is half of the width/height (75 * 2 = 150)
              backgroundColor: Colors.blue.shade200,
              backgroundImage: const NetworkImage(
                'https://i.pinimg.com/474x/b9/e0/e3/b9e0e30ac1ec95077b7e1d0abd250e5d.jpg',
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Alexandar',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text('Student', style: TextStyle(fontSize: 16)),
            Padding(
              padding: const EdgeInsets.all(16),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      DetailsSectionWidgets(
                        icon: Icons.person,
                        title: 'Roll No',
                        subtitle: '2026357',
                      ),
                      Divider(height: 1),
                      DetailsSectionWidgets(
                        icon: Icons.school,
                        title: 'Deartment',
                        subtitle: 'Computer Science',
                      ),
                      Divider(height: 1),
                      DetailsSectionWidgets(
                        icon: Icons.mail,
                        title: 'Email',
                        subtitle: 'alexandar@itmo.ru',
                      ),
                      Divider(height: 1),
                      DetailsSectionWidgets(
                        icon: Icons.call,
                        title: 'Phone',
                        subtitle: '0123456789',
                      ),
                    ],
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
