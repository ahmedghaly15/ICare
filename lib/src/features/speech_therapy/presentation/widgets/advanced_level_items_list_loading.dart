import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';

class AdvancedLevelItemsListLoading extends StatelessWidget {
  const AdvancedLevelItemsListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (_, __) => ShimmerWidget(
        circularRadiusVal: 50,
        height: SizeConfig.height * 0.15,
        width: double.infinity,
      ),
      separatorBuilder: (_, __) => MySizedBox.height25,
      itemCount: 10,
    );
  }
}
