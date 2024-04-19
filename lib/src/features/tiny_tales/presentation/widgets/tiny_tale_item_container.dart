import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';

class TinyTaleItemContainer extends StatelessWidget {
  const TinyTaleItemContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40.r)),
        color: isDarkModeActive(context) ? AppColors.lightBlue : Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: isDarkModeActive(context)
                ? Colors.black.withOpacity(0.4)
                : Colors.grey.withOpacity(0.5),
            spreadRadius: 2.r,
            blurRadius: 5.r,
            offset: Offset(0, 3.h),
          ),
        ],
      ),
      child: child,
    );
  }
}
