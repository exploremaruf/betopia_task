import 'package:flutter/material.dart';

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
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/021/770/056/non_2x/avatar-of-a-student-character-free-vector.jpg'),

                ),
                    SizedBox(height: 16,),
                    Text('Maruf Hasan',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    Text('Flutter Student',style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),



                  ])),
            ),
          ),
        ],
      ),
    );
  }
}
