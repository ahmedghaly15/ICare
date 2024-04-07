import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({
    super.key,
    required this.delegate,
    this.gridDelegate,
    this.crossAxisCount = 2,
    this.mainAxisSpacing = 16,
    this.crossAxisSpacing = 16,
  });

  final SliverChildDelegate delegate;
  final SliverGridDelegate? gridDelegate;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      sliver: SliverGrid(
        gridDelegate: gridDelegate ??
            SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount, // Ensure two items per row
              mainAxisSpacing:
                  mainAxisSpacing.h, // Main axis (vertical) spacing
              crossAxisSpacing:
                  crossAxisSpacing.w, // Cross axis (horizontal) spacing
              childAspectRatio: 1,
            ),
        delegate: delegate,
      ),
    );
  }
}
