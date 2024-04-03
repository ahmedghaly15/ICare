import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class ChatDetailsCustomSliverAppBar extends StatelessWidget {
  const ChatDetailsCustomSliverAppBar({
    super.key,
    required this.receiverName,
    required this.receiverProfileImage,
  });

  final String receiverName, receiverProfileImage;

  @override
  Widget build(BuildContext context) {
    return CustomSliverAppBar(
      leading: IconButton(
        onPressed: () => context.maybePop(),
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.primaryColor,
        ),
      ),
      titleWidget: Row(
        children: <Widget>[
          CustomCachedNetworkImage(
            imageUrl: receiverProfileImage,
            imageBuilder: (_, image) {
              return InkWell(
                onTap: () {
                  // TODO: navigate to user profile
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
              receiverName,
              style: AppTextStyles.textStyle20Bold(context).copyWith(
                color: Colors.black,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
