import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
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
            imageUrl: Helper.currentUser!.profileImage!,
            imageBuilder: (_, image) {
              return CircleAvatar(
                radius: 25.r,
                backgroundImage: image,
              );
            },
          ),
        ),
        title: Text(
          Helper.currentUser!.name!,
          style: AppTextStyles.textStyle15Bold.copyWith(
            color: isDarkModeActive(context) ? Colors.white : Colors.black,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          Helper.currentUser!.email!,
          style: AppTextStyles.textStyle12Regular.copyWith(
            color: isDarkModeActive(context) ? Colors.white : Colors.black,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
