import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';

class NewTinyTaleLoadingDialog {
  static void show(BuildContext context) => showAdaptiveDialog(
        context: context,
        builder: (context) => const NewTinyTaleLoading(),
      );
}

class NewTinyTaleLoading extends StatelessWidget {
  const NewTinyTaleLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80.h,
        width: 80.h,
        padding: EdgeInsets.all(8.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16.r)),
        ),
        child: const CustomCircularProgressIndicator(),
      ),
    );
  }
}
