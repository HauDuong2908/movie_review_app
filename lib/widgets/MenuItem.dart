// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.context,
    required this.icon,
    required this.label,
    required this.route,
    required this.selected,
  }) : super(key: key);

  final BuildContext context;
  final IconData icon;
  final String label;
  final String route;
  final double selected;
  final int? _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white70,
        ),
        title: Text(
          label,
          style: TextStyle(color: Colors.white70),
        ),
        selectedColor: Colors.pink,
        selected: _selectedIndex == selected,
        onTap: () {
          GoRouter.of(context).go(route);
          Navigator.pop(context);
        },
      ),
    );
  }
}
