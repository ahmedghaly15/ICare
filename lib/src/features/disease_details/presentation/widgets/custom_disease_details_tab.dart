import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/custom_disease_details_container.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/custom_title_container.dart';

class CustomDiseaseDetailsTab extends StatelessWidget {
  const CustomDiseaseDetailsTab({super.key, required this.listOfStringData});

  final List<dynamic> listOfStringData;

  @override
  Widget build(BuildContext context) {
    return CustomDiseaseDetailsContainer(
      child: FadeInUp(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: listOfStringData.length,
          itemBuilder: (context, index) {
            final item = listOfStringData[index];
            if (item is String) {
              return Text(
                '$item\n',
                style: AppTextStyles.textStyle18Bold(context),
              );
            } else if (item is Map<String, dynamic>) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: item.entries.map((entry) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CustomTitleContainer(
                        child: Text(
                          entry.key,
                          style: AppTextStyles.textStyle25Bold(context),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: (entry.value as List<dynamic>).length,
                        itemBuilder: (context, index) {
                          return Markdown(
                            data: '${(entry.value as List<dynamic>)[index]}\n',
                            styleSheet: MarkdownStyleSheet(
                              p: AppTextStyles.textStyle18Bold(context),
                            ),
                            padding: EdgeInsets.zero,
                            selectable: false,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
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
      ),
    );
  }
}
