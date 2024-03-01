import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/size_config.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({
    super.key,
    required this.delegate,
    this.gridDelegate,
  });

  final SliverChildDelegate delegate;
  final SliverGridDelegate? gridDelegate;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: gridDelegate ??
          SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: SizeConfig.width,
            mainAxisExtent: SizeConfig.height * 0.25,
            mainAxisSpacing: 16.h,
            childAspectRatio: 1,
          ),
      delegate: delegate,
    );
  }
}
