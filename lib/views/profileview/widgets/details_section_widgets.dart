import 'package:flutter/material.dart';

class DetailsSectionWidgets extends StatelessWidget {
  final IconData icon;
  final String title, subtitle;

  const DetailsSectionWidgets({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
