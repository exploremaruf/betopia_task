import 'package:betopiatask/views/profileview/widgets/menu_bar.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Profile'),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 5),
            Container(
              height: 250,
              decoration: BoxDecoration(color: Colors.white),
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
                    Text(
                      'Maruf Hasan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Student ID: 101',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    DetailsMenu(
                      icon: Icons.mail,
                      lebel: 'Email',
                      value: 'maruf@gmail.com',
                    ),
                    Divider(),
                    DetailsMenu(
                      icon: Icons.school,
                      lebel: 'Department',
                      value: 'Computer Science',
                    ),
                    Divider(),
                    DetailsMenu(
                      icon: Icons.school,
                      lebel: 'Join Date',
                      value: '1 October 2026',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Text('My Counter', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsetsGeometry.symmetric(horizontal: 70),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(radius: 25, child: Icon(Icons.remove)),
                    ),
                    Text(
                      '0',
                      style: TextStyle(color: Colors.black, fontSize: 32),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                        radius: 25,
                        child: Icon(Icons.add, color: Colors.white),
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
