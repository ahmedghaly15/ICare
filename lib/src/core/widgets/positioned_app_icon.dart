import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_assets.dart';

class PositionedAppIcon extends StatelessWidget {
  const PositionedAppIcon({super.key, this.boxShadow});

  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -30.h,
      child: Container(
        height: 48.h,
        width: 48.h,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: boxShadow ??
              <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                  spreadRadius: 0,
                  blurStyle: BlurStyle.outer,
                ),
              ],
        ),
        child: Image.asset(
          AppAssets.imagesAppLogo,
        ),
      ),
    );
  }
}
