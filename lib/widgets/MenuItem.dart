import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.context,
    required this.icon,
    required this.label,
    required this.route,
  });

  final BuildContext context;
  final IconData icon;
  final String label;
  final String route;

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
        onTap: () {
          GoRouter.of(context).go(route);
          Navigator.pop(context);
        },
      ),
    );
  }
}
