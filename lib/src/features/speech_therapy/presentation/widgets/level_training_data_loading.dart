import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';

class LevelTrainingDataLoading extends StatelessWidget {
  const LevelTrainingDataLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, __) => ShimmerWidget(
        height: AppUtils.levelOneItemHeight,
        width: double.infinity,
      ),
      separatorBuilder: (_, __) => MySizedBox.height15,
      itemCount: 10,
    );
  }
}
