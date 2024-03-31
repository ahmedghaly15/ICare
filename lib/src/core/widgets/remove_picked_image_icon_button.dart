import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';

class RemovePickedImageIconButton extends StatelessWidget {
  const RemovePickedImageIconButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10.h,
      right: 10.w,
      child: CircleAvatar(
        radius: 15.r,
        backgroundColor: AppColors.primaryColor,
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          icon: Icon(
            Icons.close,
            color: Colors.white,
            size: 20.w,
          ),
        ),
      ),
    );
  }
}
