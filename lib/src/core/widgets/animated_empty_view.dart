import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class AnimatedEmptyView extends StatelessWidget {
  const AnimatedEmptyView({
    super.key,
    required this.svgImage,
    this.text = '',
  });

  final String svgImage, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FadeInDown(
            child: SvgPicture.asset(svgImage),
          ),
          MySizedBox.height25,
          FadeInUp(
            child: Text(
              text,
              style: AppTextStyles.textStyle14Regular.copyWith(
                color: isDarkModeActive(context) ? Colors.white : Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
