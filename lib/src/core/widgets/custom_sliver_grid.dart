import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      sliver: SliverGrid(
        gridDelegate: gridDelegate ??
            SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Ensure two items per row
              mainAxisSpacing: 16.h, // Main axis (vertical) spacing
              crossAxisSpacing: 16.w, // Cross axis (horizontal) spacing
              childAspectRatio: 1,
            ),
        delegate: delegate,
      ),
    );
  }
}
