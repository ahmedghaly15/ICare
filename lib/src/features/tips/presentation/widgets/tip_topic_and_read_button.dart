import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_cubit.dart';

class TipTopicAndReadButton extends StatelessWidget {
  const TipTopicAndReadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        MySizedBox.height8,
        Align(
          alignment: Alignment.centerLeft,
          child: FadeInLeft(
            from: 30,
            child: Container(
              padding: EdgeInsets.all(8.h),
              decoration: BoxDecoration(
                color: isDarkModeActive(context)
                    ? AppColors.scaffoldDarkModeBackgroundColor
                    : Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(AppConstants.radius25.r),
                ),
              ),
              child: Text(
                context.read<TipsCubit>().randomTip!.whatToSay,
                style: AppTextStyles.textStyle10Bold.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ),
        MySizedBox.height18,
        FadeInDown(
          from: 30,
          child: Text(
            context.read<TipsCubit>().randomTip!.topic,
            style: AppTextStyles.textStyle18Bold,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              context.read<TipsCubit>().convertIsRandomTipRead();
            },
            child: const Text(AppStrings.read),
          ),
        ),
      ],
    );
  }
}
