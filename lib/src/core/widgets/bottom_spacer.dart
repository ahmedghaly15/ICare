import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSpacer extends StatelessWidget {
  const BottomSpacer({super.key, this.heightSpace = 8.0});

  final double heightSpace;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: heightSpace.h);
  }
}
