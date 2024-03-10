import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/features/cry_translator/presentation/widgets/recording_wave_widget.dart';

@RoutePage()
class CryTranslatorView extends StatefulWidget {
  const CryTranslatorView({super.key});

  @override
  State<CryTranslatorView> createState() => _CryTranslatorViewState();
}

class _CryTranslatorViewState extends State<CryTranslatorView> {
  bool isRecording = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 28.h),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            isRecording
                ? FadeInDown(
                    // duration: const Duration(milliseconds: 650),
                    child: const RecordingWaveWidget(),
                  )
                : const SizedBox.shrink(),
            AnimatedContainer(
              height: 100.h,
              width: 100.w,
              duration: const Duration(milliseconds: 300),
              padding: EdgeInsets.all(isRecording ? 25.h : 15.h),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.primaryColor,
                  width: isRecording ? 8.sp : 3.sp,
                ),
              ),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 70.h,
                width: 70.h,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: isRecording ? BoxShape.rectangle : BoxShape.circle,
                ),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      isRecording = !isRecording;
                    });
                  },
                  shape: const CircleBorder(),
                  child: const SizedBox.shrink(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
