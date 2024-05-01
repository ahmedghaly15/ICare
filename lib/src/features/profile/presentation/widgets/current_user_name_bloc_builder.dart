import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';
import 'package:icare/src/features/user/presentation/cubit/user_state.dart';

class CurrentUserNameBlocBuilder extends StatelessWidget {
  const CurrentUserNameBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state is GetUserDataLoading) {
          return ShimmerWidget(
            height: 20.h,
            width: double.infinity,
          );
        }
        return Text(
          Helper.currentUser!.name!,
          style: AppTextStyles.textStyle15Bold.copyWith(
            color: isDarkModeActive(context) ? Colors.white : Colors.black,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        );
      },
    );
  }
}
