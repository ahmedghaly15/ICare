import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/loading_user_item.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';
import 'package:icare/src/features/user/presentation/cubit/user_state.dart';

class CurrentUsernameAndImage extends StatelessWidget {
  const CurrentUsernameAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state is GetUserDataLoading) {
          return const LoadingUserItem();
        }
        return Row(
          children: <Widget>[
            CustomCachedNetworkImage(
              imageUrl: Helper.currentUser!.profileImage!,
              imageBuilder: (_, image) {
                return CircleAvatar(
                  backgroundImage: image,
                  radius: 25.r,
                  backgroundColor: AppColors.primaryColor,
                );
              },
            ),
            MySizedBox.width10,
            Expanded(
              child: Text(
                Helper.currentUser!.name!,
                style: AppTextStyles.textStyle16Bold,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        );
      },
    );
  }
}
