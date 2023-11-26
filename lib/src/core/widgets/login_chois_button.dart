import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_colors.dart';

class LoginChoise extends StatelessWidget {
  const LoginChoise({
    super.key,

    required this.imageUrl,
    required this.onPressed,
    this.borderRadius,
    this.textStyle,
    this.backgroundColor,
    this.textColor,
  });

  final String imageUrl;
  final double? borderRadius;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50.0,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.secondaryColor,
        borderRadius: BorderRadiusDirectional.circular(borderRadius ?? 50.0),
      ),
      child: MaterialButton(
          onPressed: onPressed,
          child: Image.asset(
            imageUrl,
            // fit: BoxFit.cover,
          )
      ),
    );
  }
}