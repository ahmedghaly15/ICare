import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
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
                  style: AppTextStyles.textStyle16Bold.copyWith(
                    color:
                        isDarkModeActive(context) ? Colors.white : Colors.black,
                  ),
                ),
              ),
              MySizedBox.height7,
              Markdown(
                data: doList.join('\n\n'),
                styleSheet: MarkdownStyleSheet(
                  p: AppTextStyles.textStyle14Regular.copyWith(
                    color:
                        isDarkModeActive(context) ? Colors.white : Colors.black,
                  ),
                ),
                padding: EdgeInsets.zero,
                selectable: false,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
              MySizedBox.height12,
              CustomTitleContainer(
                child: Text(
                  'Do Not',
                  style: AppTextStyles.textStyle16Bold.copyWith(
                    color:
                        isDarkModeActive(context) ? Colors.white : Colors.black,
                  ),
                ),
              ),
              MySizedBox.height7,
              Markdown(
                data: notToDoList.join('\n\n'),
                styleSheet: MarkdownStyleSheet(
                  p: AppTextStyles.textStyle14Regular.copyWith(
                    color:
                        isDarkModeActive(context) ? Colors.white : Colors.black,
                  ),
                ),
                padding: EdgeInsets.zero,
                selectable: false,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
