import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';

class FollowsYouStreamBuilder extends StatelessWidget {
  const FollowsYouStreamBuilder({super.key, required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: context.read<UserCubit>().userIsInFollowers(userId),
      builder: (context, snapshot) {
        bool isInFollowers = snapshot.data ?? false;
        return isInFollowers
            ? Expanded(
                child: Container(
                  padding: EdgeInsets.all(2.h),
                  color: isDarkModeActive(context)
                      ? AppColors.lightBlue
                      : Colors.black26,
                  child: Center(
                    child: Text(
                      AppStrings.followsYou,
                      style: AppTextStyles.textStyle10Regular.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
