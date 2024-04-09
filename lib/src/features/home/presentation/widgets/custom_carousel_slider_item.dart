import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.r),
        child: Image.asset(
          icon,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
