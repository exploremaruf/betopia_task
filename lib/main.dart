import 'package:betopiatask/views/studentprotalview/student_protal_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(StudentProtal());


}

class StudentProtal extends StatelessWidget {
  const StudentProtal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentProtalScreen(),
    );
  }
}
