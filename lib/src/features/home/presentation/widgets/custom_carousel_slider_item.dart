import 'package:flutter/material.dart';

class CustomCarouselSliderItem extends StatelessWidget {
  const CustomCarouselSliderItem({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Image.asset(icon),
    );
  }
}
