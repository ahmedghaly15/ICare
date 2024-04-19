import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.isEvenIndex,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  final bool isEvenIndex;
  final String icon, title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.r)),
        gradient: LinearGradient(
          colors: <Color>[
            isEvenIndex ? AppColors.gradientOrange : AppColors.lightGrey,
            Colors.white,
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.r)),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 10.w,
        ),
        minWidth: 0,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Row(
          children: <Widget>[
            SvgPicture.asset(icon),
            MySizedBox.width27,
            Text(
              title,
              style: AppTextStyles.textStyle18Bold.copyWith(
                color: isEvenIndex ? AppColors.gradientOrange : Colors.black,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
