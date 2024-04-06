import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.color = AppColors.greyColor,
    this.thickness = 1,
    this.isExpanded = true,
  });

  final Color color;
  final double thickness;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return isExpanded
        ? Expanded(
            child: Divider(
              color: color,
              thickness: thickness.h,
            ),
          )
        : Divider(
            color: color,
            thickness: thickness.h,
          );
  }
}
