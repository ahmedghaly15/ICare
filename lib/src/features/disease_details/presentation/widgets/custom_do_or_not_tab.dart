import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/custom_disease_details_container.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/custom_title_container.dart';

class CustomDoOrNotTab extends StatelessWidget {
  const CustomDoOrNotTab({
    super.key,
    required this.doList,
    required this.notToDoList,
  });

  final List<dynamic> doList;
  final List<dynamic> notToDoList;

  @override
  Widget build(BuildContext context) {
    return CustomDiseaseDetailsContainer(
      child: FadeInUp(
        child: SafeArea(
          top: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomTitleContainer(
                child: Text(
                  AppStrings.dO,
                  style: AppTextStyles.textStyle25Bold(context),
                ),
              ),
              MySizedBox.height7,
              Text(
                doList.join('\n\n'),
                style: AppTextStyles.textStyle18Bold(context),
              ),
              MySizedBox.height12,
              CustomTitleContainer(
                child: Text(
                  'Do Not',
                  style: AppTextStyles.textStyle25Bold(context),
                ),
              ),
              MySizedBox.height7,
              Text(
                notToDoList.join('\n\n'),
                style: AppTextStyles.textStyle18Bold(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
