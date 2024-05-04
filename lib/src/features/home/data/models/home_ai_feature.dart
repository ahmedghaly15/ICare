import 'package:flutter/material.dart';

class HomeAIFeature {
  final String title, icon, description, image;
  final VoidCallback onPressed;

  const HomeAIFeature({
    required this.title,
    required this.icon,
    required this.description,
    required this.image,
    required this.onPressed,
  });
}
