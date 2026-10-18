import 'package:betopiatask/views/profileview/profile_screen.dart';
import 'package:betopiatask/views/studentprotalview/widgets/bottom_section_widgets.dart';
import 'package:betopiatask/views/studentprotalview/widgets/header_section_widgets.dart';
import 'package:betopiatask/views/studentprotalview/widgets/menu_bar_widgets.dart';
import 'package:flutter/material.dart';

class StudentProtalScreen extends StatefulWidget {
  const StudentProtalScreen({super.key});

  @override
  State<StudentProtalScreen> createState() => _StudentProtalScreenState();
}

class _StudentProtalScreenState extends State<StudentProtalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(250),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderSectionWidgets(),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MenuBarWidgets(
                      title: 'My Courses',
                      icon: Icons.menu_book_rounded,
                      color: Colors.blue,
                      onTap: () {},
                    ),
                    MenuBarWidgets(
                      title: 'Routine',
                      icon: Icons.date_range,
                      color: Colors.green,
                      onTap: () {},
                    ),
                    MenuBarWidgets(
                      title: 'Assignments',
                      icon: Icons.menu_book_rounded,
                      color: Colors.amber,
                      onTap: () {},
                    ),
                    MenuBarWidgets(
                      title: 'Profile',
                      icon: Icons.person,
                      color: Colors.deepPurpleAccent,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ProfileScreen();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Classes',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),

                child: BottomSectionWidgets(
                  bcolor: Colors.blue.shade100,
                  fcolor: Colors.blue,
                  eicon: Icons.monitor,
                  ticon: Icons.keyboard_arrow_right_outlined,
                  title: 'Flutter Development',
                  subtitle1: 'Room: 301',
                  subtitle2: '10:00 AM - 11:00 AM',
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),

                child: BottomSectionWidgets(
                  bcolor: Colors.red.shade100,
                  fcolor: Colors.red,
                  eicon: Icons.code,
                  ticon: Icons.keyboard_arrow_right_outlined,
                  title: 'Database System',
                  subtitle1: 'Room: 302',
                  subtitle2: '12:00 PM - 1:00 PM',
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),

                child: BottomSectionWidgets(
                  bcolor: Colors.green.shade100,
                  fcolor: Colors.green,
                  eicon: Icons.menu_book_rounded,
                  ticon: Icons.keyboard_arrow_right_outlined,
                  title: 'Web Technologies',
                  subtitle1: 'Room: 303',
                  subtitle2: '2:00 PM - 3:00 PM',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
