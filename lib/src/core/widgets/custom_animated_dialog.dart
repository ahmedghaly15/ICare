import 'package:flutter/material.dart';

class CustomAnimatedDialog extends StatelessWidget {
  const CustomAnimatedDialog({
    super.key,
    required this.animation1,
    required this.child,
  });

  final Animation<double> animation1;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: ScaleTransition(
        scale: Tween<double>(begin: 0.5, end: 1.0).animate(animation1),
        child: FadeTransition(
          opacity: Tween<double>(begin: 0.5, end: 1.0).animate(animation1),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
