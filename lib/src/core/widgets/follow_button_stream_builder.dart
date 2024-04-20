import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';

class FollowButtonStreamBuilder extends StatelessWidget {
  const FollowButtonStreamBuilder({
    super.key,
    required this.user,
  });

  final ICareUser user;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: context.read<UserCubit>().userIsInFollowing(user.uId!),
      builder: (context, snapshot) {
        bool isFollowed = snapshot.data ?? false;
        return OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: AppColors.primaryColor,
              width: 1.w,
            ),
            backgroundColor: isFollowed
                ? (isDarkModeActive(context)
                    ? AppColors.scaffoldDarkModeBackgroundColor
                    : Colors.white)
                : AppColors.primaryColor,
            textStyle: AppTextStyles.textStyle15Bold,
            foregroundColor: isFollowed ? AppColors.primaryColor : Colors.white,
          ),
          onPressed: () => isFollowed
              ? context.read<UserCubit>().unFollow(user)
              : context.read<UserCubit>().follow(user),
          child: Text(isFollowed ? AppStrings.unFollow : AppStrings.follow),
        );
      },
    );
  }
}
