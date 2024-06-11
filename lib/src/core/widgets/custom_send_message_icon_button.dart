import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/helpers/extensions.dart';

class CustomSendMessageIconButton extends StatelessWidget {
  const CustomSendMessageIconButton({
    super.key,
    required this.isEnabled,
    required this.onPressed,
  });

  final bool isEnabled;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.r,
      backgroundColor: isEnabled
          ? AppColors.primaryColor
          : (context.isDarkModeActive ? AppColors.lightBlue : Colors.grey),
      child: IconButton(
        style: IconButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
        ),
        icon: Center(
          child: Icon(
            Icons.send,
            color: isEnabled ? Colors.white : Colors.white30,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
