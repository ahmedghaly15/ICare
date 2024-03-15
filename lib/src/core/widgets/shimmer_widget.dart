import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    super.key,
    this.height,
    this.width,
    this.circularRadiusVal,
    this.margin,
    this.padding,
    this.borderRadius,
  });

  final double? height, width;
  final double? circularRadiusVal;
  final BorderRadius? borderRadius;
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
          borderRadius: borderRadius ??
              BorderRadius.circular(
                circularRadiusVal?.r ?? AppConstants.radius25.r,
              ),
        ),
      ),
    );
  }
}
