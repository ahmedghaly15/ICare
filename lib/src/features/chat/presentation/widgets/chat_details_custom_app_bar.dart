import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/functions/navigate_to_user_profile.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class ChatDetailsCustomAppBar extends StatelessWidget {
  const ChatDetailsCustomAppBar({
    super.key,
    required this.receiver,
  });

  final ICareUser receiver;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          onPressed: () => context.maybePop(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.primaryColor,
          ),
        ),
        CustomCachedNetworkImage(
          imageUrl: receiver.profileImage!,
          imageBuilder: (_, image) {
            return InkWell(
              onTap: () {
                navigateToUserProfile(
                  context: context,
                  user: receiver,
                );
              },
              child: CircleAvatar(
                radius: 18.r,
                backgroundImage: image,
              ),
            );
          },
        ),
        MySizedBox.width10,
        Expanded(
          child: Text(
            receiver.name!,
            style: AppTextStyles.textStyle16Bold.copyWith(
              color: Colors.black,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
