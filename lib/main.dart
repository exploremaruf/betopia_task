import 'package:betopiatask/views/studentprotalview/student_portal_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main(){
  runApp(StudentProtal());


}

class StudentProtal extends StatelessWidget {
  const StudentProtal({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:StudentPortalView() ,
    );
  }
}
