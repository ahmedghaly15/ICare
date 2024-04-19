import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class SurahInfoContainer extends StatelessWidget {
  const SurahInfoContainer({
    super.key,
    required this.icon,
    required this.label,
  });

  final String icon, label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(icon),
          MySizedBox.width6,
          Text(
            label,
            style: AppTextStyles.textStyle13Regular.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
