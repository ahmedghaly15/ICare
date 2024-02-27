import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/onboarding/data/models/onboarding_item.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.pageInfo,
  });

  final OnboardingItem pageInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 360 / 400,
          child: Image.asset(
            pageInfo.image,
            fit: BoxFit.fill,
          ),
        ),
        MySizedBox.height25,
        Text(
          pageInfo.title,
          style: AppTextStyles.textStyle25Bold(context).copyWith(
            color: AppColors.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        MySizedBox.height27,
        Text(
          pageInfo.description,
          style: AppTextStyles.textStyle16Medium(context),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
