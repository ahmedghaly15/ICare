import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/app_text_styles.dart';
import 'package:icare/src/core/widgets/custom_arrow_back_button.dart';

class CustomAuthAppBar extends StatelessWidget {
  const CustomAuthAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 27.0.h, bottom: 36.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CustomArrowBackButton(),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0.r),
                ),
                child: Image.asset(
                  AppAssets.appIcon,
                  height: 100.h,
                  width: 100.w,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                AppStrings.appTitle,
                style: AppTextStyles.authTitleTextStyle,
              ),
            ],
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
