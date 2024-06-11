import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/helpers/extensions.dart';

class CustomRefreshIndicator extends StatelessWidget {
  const CustomRefreshIndicator({
    super.key,
    required this.child,
    required this.onRefresh,
  });

  final Widget child;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: context.isDarkModeActive
          ? AppColors.scaffoldDarkModeBackgroundColor
          : Colors.white,
      color: AppColors.primaryColor,
      onRefresh: onRefresh,
      child: child,
    );
  }
}
