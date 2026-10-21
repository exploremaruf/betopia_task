import 'package:flutter/material.dart';

class Studentdetatils extends StatelessWidget {
  final String lebel;
  final String value;
  final IconData icon;
  final Color iconcolor;
  final Color color;

  const Studentdetatils({
    super.key,
    required this.lebel,
    required this.value,
    required this.icon,
    required this.color,
    required this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Icon(icon, color: iconcolor, size: 35),
        ),
        title: Text(lebel),
        subtitle: Text(
          value,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
