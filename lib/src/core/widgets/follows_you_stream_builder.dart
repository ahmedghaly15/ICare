import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';

class FollowsYouStreamBuilder extends StatelessWidget {
  const FollowsYouStreamBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: context.read<UserCubit>().userIsInFollowers(),
      builder: (context, snapshot) {
        bool isInFollowers = snapshot.data ?? false;
        return isInFollowers
            ? Container(
                padding: EdgeInsets.all(2.h),
                color: Colors.black26,
                child: Text(
                  AppStrings.followsYou,
                  style: AppTextStyles.textStyle13Regular(context).copyWith(
                    color: Colors.white,
                  ),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
