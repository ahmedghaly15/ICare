import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_assets.dart';

class PositionedAppIcon extends StatelessWidget {
  const PositionedAppIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -30.h,
      child: Container(
        height: 48.h,
        width: 48.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
            ),
          ],
        ),
        child: Image.asset(
          AppAssets.appIcon,
        ),
      ),
    );
  }
}
