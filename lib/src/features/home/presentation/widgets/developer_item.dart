import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/home/data/models/developer.dart';
import 'package:url_launcher/link.dart';

class DeveloperItem extends StatelessWidget {
  const DeveloperItem({
    super.key,
    required this.developer,
  });

  final Developer developer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: isDarkModeActive(context)
            ? AppColors.scaffoldDarkModeBackgroundColor
            : Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: isDarkModeActive(context)
                ? Colors.black.withOpacity(0.4)
                : Colors.grey.withOpacity(0.5),
            spreadRadius: 2.r,
            blurRadius: 5.r,
            offset: Offset(0, 3.h),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  developer.name,
                  style: AppTextStyles.textStyle15Bold.copyWith(
                    color:
                        isDarkModeActive(context) ? Colors.white : Colors.black,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                MySizedBox.height2,
                Text(
                  developer.title,
                  style: AppTextStyles.textStyle12Regular.copyWith(
                    color:
                        isDarkModeActive(context) ? Colors.white : Colors.black,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          MySizedBox.width10,
          if (developer.linkedIn != null)
            Link(
              target: LinkTarget.self,
              uri: Uri.parse(developer.linkedIn!),
              builder: (context, followLink) => IconButton(
                onPressed: followLink,
                icon: SvgPicture.asset(
                  isDarkModeActive(context)
                      ? AppAssets.svgsWhiteLinkedinIcon
                      : AppAssets.svgsBlackLinkedinIcon,
                ),
              ),
            ),
          if (developer.gitHub != null)
            Link(
              target: LinkTarget.self,
              uri: Uri.parse(developer.gitHub!),
              builder: (context, followLink) => IconButton(
                onPressed: followLink,
                icon: SvgPicture.asset(
                  isDarkModeActive(context)
                      ? AppAssets.svgsWhiteGithubIcon
                      : AppAssets.svgsBlackGithubIcon,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
