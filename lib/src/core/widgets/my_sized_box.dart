import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({super.key, this.height, this.width});

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h,
      width: width?.w,
    );
  }
}

class MySizedBox {
  static const CustomSizedBox height7 = CustomSizedBox(height: 7);
  static const CustomSizedBox height25 = CustomSizedBox(height: 25);
  static const CustomSizedBox height27 = CustomSizedBox(height: 27);
  static const CustomSizedBox height8 = CustomSizedBox(height: 8);
  static const CustomSizedBox height18 = CustomSizedBox(height: 18);
  static const CustomSizedBox height46 = CustomSizedBox(height: 46);
  static const CustomSizedBox height55 = CustomSizedBox(height: 55);
}
