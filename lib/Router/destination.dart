import 'package:flutter/material.dart';

class Destination {
  const Destination({
    required this.label,
    required this.icon,
  });

  final String label;
  final IconData icon;
}

const destinations = [
  Destination(label: 'Home', icon: Icons.home_outlined),
  Destination(label: 'Review', icon: Icons.reviews_outlined),
  Destination(label: 'Lists', icon: Icons.list_sharp),
  Destination(label: 'User', icon: Icons.person_2_outlined),
];
