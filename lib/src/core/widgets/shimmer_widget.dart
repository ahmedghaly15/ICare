import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    super.key,
    this.height,
    this.width,
    this.radius,
    this.margin,
    this.padding,
  });

  final double? height, width;
  final double? radius;
  final EdgeInsetsGeometry? margin, padding;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        height: height?.h,
        width: width,
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(radius?.r ?? 50.r),
        ),
      ),
    );
  }
}
