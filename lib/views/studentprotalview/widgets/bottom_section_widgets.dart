import 'package:flutter/material.dart';

class BottomSectionWidgets extends StatelessWidget {
  final Color bcolor, fcolor;
  final IconData eicon, ticon;
  final String title;
  final String subtitle1, subtitle2;

  const BottomSectionWidgets({
    super.key,
    required this.bcolor,
    required this.fcolor,
    required this.eicon,
    required this.ticon,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),

      tileColor: Colors.white,
      horizontalTitleGap: 0.0,
      contentPadding: EdgeInsets.only(left: 0.0, right: 16),
      leading: CircleAvatar(
        radius: 55,
        backgroundColor: bcolor,
        foregroundColor: fcolor,

        child: Icon(eicon as IconData?, size: 35),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(subtitle1), Text(subtitle2)],
      ),
      trailing: Icon(ticon as IconData?),
    );
  }
}
