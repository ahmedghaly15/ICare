import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';
import 'package:icare/src/features/user/presentation/cubit/user_state.dart';

class FollowButtonStreamBuilder extends StatelessWidget {
  const FollowButtonStreamBuilder({
    super.key,
    required this.user,
  });

  final ICareUser user;

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserCubit, UserState>(
      listenWhen: (_, current) =>
          current is FollowSuccess || current is UnFollowSuccess,
      listener: (context, state) => context
          .read<UserCubit>()
          .handleFollowUnfollowStates(state: state, user: user),
      child: StreamBuilder<bool>(
        stream: context.read<UserCubit>().userIsInFollowing(user.uId!),
        builder: (context, snapshot) {
          final bool isFollowed = snapshot.data ?? false;
          return OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: AppColors.primaryColor,
                width: 1.w,
              ),
              backgroundColor: isFollowed
                  ? (context.isDarkModeActive
                      ? AppColors.scaffoldDarkModeBackgroundColor
                      : Colors.white)
                  : AppColors.primaryColor,
              textStyle: AppTextStyles.textStyle15Bold,
              foregroundColor:
                  isFollowed ? AppColors.primaryColor : Colors.white,
            ),
            onPressed: isFollowed
                ? () => context.read<UserCubit>().unFollow(user)
                : () {
                    context.read<UserCubit>().follow(context, user: user);
                  },
            child: Text(isFollowed ? AppStrings.unFollow : AppStrings.follow),
          );
        },
      ),
    );
  }
}
