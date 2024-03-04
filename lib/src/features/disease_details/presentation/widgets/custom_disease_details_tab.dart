import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';

class CustomDiseaseDetailsTab extends StatelessWidget {
  const CustomDiseaseDetailsTab({super.key, required this.listOfStringData});

  final List<String> listOfStringData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      child: FadeInUp(
        child: Text(
          listOfStringData.join('\n\n'),
          style: AppTextStyles.textStyle16Bold(context),
        ),
      ),
    );
  }
}
