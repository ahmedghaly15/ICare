import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class CustomDoOrNotTab extends StatelessWidget {
  const CustomDoOrNotTab({
    super.key,
    required this.doList,
    required this.notToDoList,
  });

  final List<String> doList;
  final List<String> notToDoList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      child: FadeInUp(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Do',
              style: AppTextStyles.textStyle18Bold(context),
            ),
            MySizedBox.height7,
            Text(
              doList.join('\n\n'),
              style: AppTextStyles.textStyle16Bold(context),
            ),
            MySizedBox.height12,
            Text(
              'Do Not',
              style: AppTextStyles.textStyle18Bold(context),
            ),
            MySizedBox.height7,
            Text(
              notToDoList.join('\n\n'),
              style: AppTextStyles.textStyle16Bold(context),
            ),
          ],
        ),
      ),
    );
  }
}
