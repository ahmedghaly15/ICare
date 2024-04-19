import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/primary_button.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    required this.error,
    this.tryAgainOnPressed,
    this.hasTryAgainButton = true,
  });

  final String error;
  final VoidCallback? tryAgainOnPressed;
  final bool hasTryAgainButton;

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
          SvgPicture.asset(
            error == AppStrings.noInternetConnection
                ? AppAssets.svgsNoInternet
                : AppAssets.svgsError,
            fit: BoxFit.fill,
          ),
          const Spacer(),
          Text(
            error,
            style: AppTextStyles.textStyle16Bold,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          hasTryAgainButton
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: PrimaryButton(
                    onPressed: tryAgainOnPressed,
                    text: AppStrings.tryAgain,
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
