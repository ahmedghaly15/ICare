import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgBottomNavBarIcon extends StatelessWidget {
  const CustomSvgBottomNavBarIcon({
    super.key,
    required this.icon,
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0.h),
      child: SvgPicture.asset(icon),
    );
  }
}
