import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class CurrentUsernameAndImage extends StatelessWidget {
  const CurrentUsernameAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CustomCachedNetworkImage(
          imageUrl: Constants.currentUser!.profileImage!,
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
            Constants.currentUser!.name!,
            style: AppTextStyles.textStyle16Bold.copyWith(
              color: context.isDarkModeActive ? Colors.white : Colors.black,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
