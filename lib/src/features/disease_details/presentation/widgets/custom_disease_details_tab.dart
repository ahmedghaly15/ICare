import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class CustomDiseaseDetailsTab extends StatelessWidget {
  const CustomDiseaseDetailsTab({super.key, required this.listOfStringData});

  final List<dynamic> listOfStringData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: listOfStringData.length,
        itemBuilder: (context, index) {
          final item = listOfStringData[index];
          if (item is String) {
            return FadeInUp(
              child: Text(
                '$item\n',
                style: AppTextStyles.textStyle18Bold(context),
              ),
            );
          } else if (item is Map<String, dynamic>) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: item.entries.map((entry) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeInUp(
                      child: Text(
                        '${entry.key}:',
                        style: AppTextStyles.textStyle25Bold(context).copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                    MySizedBox.height12,
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: (entry.value as List<dynamic>).length,
                      itemBuilder: (context, index) {
                        return FadeInUp(
                          child: Text(
                            '${(entry.value as List<dynamic>)[index]}\n',
                            style: AppTextStyles.textStyle18Bold(context),
                          ),
                        );
                      },
                    ),
                  ],
                );
              }).toList(),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
