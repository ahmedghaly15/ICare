import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/home/data/models/custom_drawer_item.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({
    super.key,
    required this.drawerItem,
  });

  final CustomDrawerItem drawerItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.r)),
        gradient: LinearGradient(
          colors: isDarkModeActive(context)
              ? <Color>[
                  AppColors.lightBlue,
                  AppColors.scaffoldDarkModeBackgroundColor,
                ]
              : <Color>[
                  AppColors.lightGrey,
                  Colors.white,
                ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
      child: MaterialButton(
        onPressed: () {
          Navigator.pop(context);
          drawerItem.onPressed();
        },
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
            Icon(drawerItem.icon),
            MySizedBox.width20,
            Expanded(
              child: Text(
                drawerItem.title,
                style: AppTextStyles.textStyle13Bold.copyWith(
                  color:
                      isDarkModeActive(context) ? Colors.white : Colors.black,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
