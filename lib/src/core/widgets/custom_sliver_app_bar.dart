import 'package:flutter/material.dart';
import 'package:icare/src/core/widgets/custom_circle_back_button.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    this.title,
    this.actions,
    this.titleWidget,
    this.leading,
  });

  final String? title;
  final List<Widget>? actions;
  final Widget? titleWidget;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: titleWidget ?? Text(title ?? ''),
      leading: leading ?? const CustomCircleBackButton(),
      actions: actions,
    );
  }
}
