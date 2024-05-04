import 'package:flutter/material.dart';

class CustomDrawerItem {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  const CustomDrawerItem({
    required this.title,
    required this.icon,
    required this.onPressed,
  });
}
