import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/utils/functions/navigate_to_user_profile.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tale_more_icon_button_bloc_listener.dart';

class TinyTaleItemUpperSection extends StatelessWidget {
  const TinyTaleItemUpperSection({super.key, required this.tinyTale});

  final TinyTale tinyTale;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CustomCachedNetworkImage(
          imageUrl: tinyTale.user!.profileImage!,
          imageBuilder: (_, image) => InkWell(
            onTap: () {
              navigateToUserProfile(
                context: context,
                user: tinyTale.user!,
              );
            },
            child: CircleAvatar(
              backgroundColor: AppColors.lightGrey2,
              radius: 20.r,
              backgroundImage: image,
            ),
          ),
        ),
        MySizedBox.width10,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: () {
                  navigateToUserProfile(
                    context: context,
                    user: tinyTale.user!,
                  );
                },
                child: Text(
                  tinyTale.user!.name!,
                  style: AppTextStyles.textStyle15Bold.copyWith(
                    color:
                        context.isDarkModeActive ? Colors.white : Colors.black,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '${tinyTale.tinyTaleData!.date} at ${tinyTale.tinyTaleData!.time}',
                style: AppTextStyles.textStyle10Regular.copyWith(
                  color:
                      context.isDarkModeActive ? Colors.white54 : Colors.grey,
                ),
              ),
            ],
          ),
        ),
        MySizedBox.width15,
        if (tinyTale.user!.uId == Constants.uId)
          TinyTaleMoreIconButtonBlocListener(tinyTaleId: tinyTale.tinyTaleId!),
      ],
    );
  }
}
