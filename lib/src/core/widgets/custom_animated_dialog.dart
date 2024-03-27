import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/positioned_app_icon.dart';

class CustomAnimatedDialog extends StatelessWidget {
  const CustomAnimatedDialog({
    super.key,
    required this.animation1,
    required this.child,
    this.backgroundColor = Colors.white,
    this.isBlurred = true,
  });

  final Animation<double> animation1;
  final Widget child;
  final Color backgroundColor;
  final bool isBlurred;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: ScaleTransition(
        scale: Tween<double>(begin: 0.5, end: 1.0).animate(animation1),
        child: FadeTransition(
          opacity: Tween<double>(begin: 0.5, end: 1.0).animate(animation1),
          child: Center(
            child: isBlurred
                ? Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 4,
                            sigmaY: 4,
                          ),
                          child: const SizedBox.shrink(),
                        ),
                      ),
                      ICareDialogContent(
                        backgroundColor: backgroundColor,
                        child: child,
                      ),
                    ],
                  )
                : ICareDialogContent(
                    backgroundColor: backgroundColor,
                    child: child,
                  ),
          ),
        ),
      ),
    );
  }
}

class ICareDialogContent extends StatelessWidget {
  const ICareDialogContent({
    super.key,
    required this.backgroundColor,
    required this.child,
  });

  final Color backgroundColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            right: 16.w,
            left: 16.w,
            top: 24.h,
            bottom: 8.h,
          ),
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.all(
              Radius.circular(AppConstants.radius25.r),
            ),
          ),
          child: child,
        ),
        const PositionedAppIcon(),
      ],
    );
  }
}
