import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/primary_button.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    required this.error,
    required this.tryAgainOnPressed,
  });

  final String error;
  final VoidCallback tryAgainOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 16.w,
        left: 16.w,
        bottom: 65.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Spacer(),
          Image.asset(
            error == AppStrings.noInternetConnection
                ? AppAssets.imagesNoInternet
                : AppAssets.imagesError,
            fit: BoxFit.fill,
          ),
          MySizedBox.height55,
          Text(
            error,
            style: AppTextStyles.textStyle20Bold(context),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: PrimaryButton(
              onPressed: tryAgainOnPressed,
              text: AppStrings.tryAgain,
            ),
          ),
        ],
      ),
    );
  }
}
