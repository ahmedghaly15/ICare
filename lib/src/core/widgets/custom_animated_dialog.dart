import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:icare/src/core/widgets/icare_dialog_content.dart';

class CustomAnimatedDialog extends StatelessWidget {
  const CustomAnimatedDialog({
    super.key,
    required this.animation1,
    required this.child,
    this.backgroundColor = Colors.white,
    this.isBlurred = true,
    this.appLogoBoxShadow,
    this.padding,
  });

  final Animation<double> animation1;
  final Widget child;
  final Color backgroundColor;
  final bool isBlurred;
  final List<BoxShadow>? appLogoBoxShadow;
  final EdgeInsetsGeometry? padding;

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
                        appLogoBoxShadow: appLogoBoxShadow,
                        padding: padding,
                        child: child,
                      ),
                    ],
                  )
                : ICareDialogContent(
                    backgroundColor: backgroundColor,
                    appLogoBoxShadow: appLogoBoxShadow,
                    padding: padding,
                    child: child,
                  ),
          ),
        ),
      ),
    );
  }
}
