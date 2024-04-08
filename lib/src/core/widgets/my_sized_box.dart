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
  static const CustomSizedBox height2 = CustomSizedBox(height: 2);
  static const CustomSizedBox height5 = CustomSizedBox(height: 5);
  static const CustomSizedBox height10 = CustomSizedBox(height: 10);
  static const CustomSizedBox height12 = CustomSizedBox(height: 12);
  static const CustomSizedBox height15 = CustomSizedBox(height: 15);
  static const CustomSizedBox height7 = CustomSizedBox(height: 7);
  static const CustomSizedBox height20 = CustomSizedBox(height: 20);
  static const CustomSizedBox height25 = CustomSizedBox(height: 25);
  static const CustomSizedBox height27 = CustomSizedBox(height: 27);
  static const CustomSizedBox height8 = CustomSizedBox(height: 8);
  static const CustomSizedBox height18 = CustomSizedBox(height: 18);
  static const CustomSizedBox height46 = CustomSizedBox(height: 46);
  static const CustomSizedBox height55 = CustomSizedBox(height: 55);
  static const CustomSizedBox height65 = CustomSizedBox(height: 65);
  static const CustomSizedBox width15 = CustomSizedBox(width: 15);
  static const CustomSizedBox width6 = CustomSizedBox(width: 6);
  static const CustomSizedBox width10 = CustomSizedBox(width: 10);
  static const CustomSizedBox width27 = CustomSizedBox(width: 27);
}
