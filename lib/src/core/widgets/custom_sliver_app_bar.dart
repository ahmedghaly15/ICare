import 'package:flutter/material.dart';
import 'package:icare/src/core/widgets/custom_circle_back_button.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.title,
    this.actions,
  });

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(title),
      leading: const CustomCircleBackButton(),
      actions: actions,
    );
  }
}
