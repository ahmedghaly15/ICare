import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class CustomHomeDrawerHeader extends StatelessWidget {
  const CustomHomeDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: <Widget>[
          CustomCachedNetworkImage(
            imageUrl: Helper.currentUser!.profileImage!,
            imageBuilder: (_, image) {
              return CircleAvatar(
                radius: 25.r,
                backgroundImage: image,
              );
            },
          ),
          MySizedBox.width10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                Helper.currentUser!.name!,
                style: AppTextStyles.textStyle16Bold(context),
              ),
              Text(
                Helper.currentUser!.email!,
                style: AppTextStyles.textStyle14Medium(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
