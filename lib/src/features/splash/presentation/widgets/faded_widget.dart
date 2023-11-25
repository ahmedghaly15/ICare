import 'package:flutter/material.dart';

class FadedWidget extends StatefulWidget {
  const FadedWidget({
    super.key,
    required this.child,
    this.duration = const Duration(seconds: 2),
  });

  final Widget child;
  final Duration duration;

  @override
  State<FadedWidget> createState() => _FadedWidgetState();
}

class _FadedWidgetState extends State<FadedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  void _initAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _animationController.forward();
  }

  @override
  void initState() {
    _initAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _fadeAnimation,
      builder: (context, _) => FadeTransition(
        opacity: _fadeAnimation,
        child: widget.child,
      ),
    );
  }
}
