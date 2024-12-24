// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Builmenuitem extends StatelessWidget {
  const Builmenuitem({
    Key? key,
    this.onClicked,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final VoidCallback? onClicked;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    const color = Colors.white70;
    const hoverColor = Color.fromRGBO(233, 166, 166, 1);

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}
