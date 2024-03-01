import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/custom_circle_back_button.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: AppTextStyles.textStyle25Bold(context),
      ),
      leading: const CustomCircleBackButton(),
    );
  }
}
