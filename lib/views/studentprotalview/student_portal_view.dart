import 'package:betopiatask/views/profileview/profile_view.dart';
import 'package:betopiatask/views/studentprotalview/widgets/menu_bar_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentPortalView extends StatelessWidget {
  const StudentPortalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Student App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.defaultDialog(
                title: 'Alert!',
                middleText: 'Do you want to navigate to setting?',
                textConfirm: 'Yes',
                textCancel: 'Cancel',
                buttonColor: Colors.green,
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(
                        'https://static.vecteezy.com/system/resources/previews/021/770/056/non_2x/avatar-of-a-student-character-free-vector.jpg',
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Maruf Hasan',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Flutter Student',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Studentdetatils(
                    lebel: 'Student Name',
                    value: 'Maruf Hasan',
                    icon: Icons.person,
                    color: Colors.blue.shade100,
                    iconcolor: Colors.blue,
                  ),
                  Divider(),
                  Studentdetatils(
                    lebel: 'Student ID',
                    value: '101',
                    icon: Icons.contact_mail_rounded,
                    color: Colors.green.shade100,
                    iconcolor: Colors.green,
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                Get.off(ProfileView());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                fixedSize: Size(double.infinity, 60),
              ),
              child: Row(
                // mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('View Profile', style: TextStyle(fontSize: 18)),
                  SizedBox(width: 8), // Adds spacing between text and icon
                  Icon(Icons.arrow_forward, size: 24), // The suffix icon
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
