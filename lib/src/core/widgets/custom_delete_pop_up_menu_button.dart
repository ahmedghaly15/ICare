import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';

class CustomDeletePopupMenuButton extends StatelessWidget {
  const CustomDeletePopupMenuButton({
    super.key,
    required this.deleteOnPressed,
    this.icon = Icons.more_horiz,
  });

  final VoidCallback deleteOnPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(icon),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: AppStrings.delete,
          child: Text(
            AppStrings.delete,
            style: AppTextStyles.textStyle15Bold,
          ),
        )
      ],
      onSelected: (value) {
        if (value == AppStrings.delete) {
          deleteOnPressed();
        }
      },
    );
  }
}
