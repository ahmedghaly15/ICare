import 'package:flutter/material.dart';
import 'package:icare/src/core/widgets/custom_circular_arrow_button.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    this.title,
    this.actions,
    this.titleWidget,
    this.leading,
    this.backOnPressed,
  });

  final String? title;
  final List<Widget>? actions;
  final Widget? titleWidget;
  final Widget? leading;
  final VoidCallback? backOnPressed;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: titleWidget ?? Text(title ?? ''),
      leading: leading ?? CustomCircularArrowButton(onPressed: backOnPressed),
      actions: actions,
    );
  }
}
