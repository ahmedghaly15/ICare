import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/onboarding/data/models/onboarding_item.dart';
import 'package:icare/src/features/onboarding/presentation/widgets/custom_dot_indicators_bloc_builder.dart';
import 'package:icare/src/features/onboarding/presentation/widgets/next_button_bloc_builder.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.pageInfo,
  });

  final OnboardingItem pageInfo;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Image.asset(
          pageInfo.image,
          fit: BoxFit.cover,
          height: SizeConfig.height,
          width: SizeConfig.width,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 25.w,
            right: 25.w,
            bottom: SizeConfig.height * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                pageInfo.description,
                style: AppTextStyles.textStyle16Bold.copyWith(
                  color: Colors.white,
                ),
              ),
              MySizedBox.height15,
              const Row(
                children: <Widget>[
                  Expanded(child: CustomDotsIndicatorsBlocBuilder()),
                  Expanded(child: NextButtonBlocBuilder()),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
