import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';

class CustomHomeDrawerHeader extends StatelessWidget {
  const CustomHomeDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: SizedBox(
          height: 50.h,
          width: 50.h,
          child: CustomCachedNetworkImage(
            imageUrl: Constants.currentUser!.profileImage!,
            imageBuilder: (_, image) {
              return CircleAvatar(
                radius: 25.r,
                backgroundImage: image,
              );
            },
          ),
        ),
        title: Text(
          Constants.currentUser!.name!,
          style: AppTextStyles.textStyle15Bold.copyWith(
            color: context.isDarkModeActive ? Colors.white : Colors.black,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          Constants.currentUser!.email!,
          style: AppTextStyles.textStyle12Regular.copyWith(
            color: context.isDarkModeActive ? Colors.white : Colors.black,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
