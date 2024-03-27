import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    super.key,
    this.height,
    this.width,
    this.circularRadiusVal = AppConstants.radius25,
    this.margin,
    this.padding,
    this.borderRadius,
    this.shape,
    this.constraints,
  });

  final double? height, width, circularRadiusVal;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? margin, padding;
  final BoxShape? shape;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        height: height,
        width: width,
        constraints: constraints,
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: shape == null
              ? borderRadius ?? BorderRadius.circular(circularRadiusVal!.r)
              : null,
          shape: shape ?? BoxShape.rectangle,
        ),
      ),
    );
  }
}
