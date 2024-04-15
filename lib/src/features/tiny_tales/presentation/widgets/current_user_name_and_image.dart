import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/profile/presentation/widgets/current_user_name_bloc_builder.dart';

class CurrentUsernameAndImage extends StatelessWidget {
  const CurrentUsernameAndImage({super.key});

  @override
  Widget build(BuildContext context) {
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
        const Expanded(child: CurrentUserNameBlocBuilder()),
      ],
    );
  }
}
