import 'package:flutter/material.dart';

class DetailsMenu extends StatelessWidget {
  final IconData icon;
  final String lebel;
  final String value;

  const DetailsMenu({
    super.key,
    required this.icon,
    required this.lebel,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(lebel, style: TextStyle(color: Colors.grey)),
      subtitle: Text(
        value,
        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
      ),
    );
  }
}
