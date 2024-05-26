import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/features/home/presentation/widgets/ai_feature_item.dart';

class AIFeaturesSliverList extends StatelessWidget {
  const AIFeaturesSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) =>
          AIFeatureItem(homeAIFeature: AppUtils.homeAIFeatures(context)[index]),
      itemCount: AppUtils.homeAIFeatures(context).length,
    );
  }
}
