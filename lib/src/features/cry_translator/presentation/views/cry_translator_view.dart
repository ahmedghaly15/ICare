import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/cry_translator/presentation/widgets/recording_wave_widget.dart';

@RoutePage()
class CryTranslatorView extends StatefulWidget {
  const CryTranslatorView({super.key});

  @override
  State<CryTranslatorView> createState() => _CryTranslatorViewState();
}

class _CryTranslatorViewState extends State<CryTranslatorView> {
  bool isRecording = false;

  //TODO: use Cubit to handle converting isRecording to false or true

  late CountdownTimerController controller;

  void startTimer() {
    final endTime =
        DateTime.now().millisecondsSinceEpoch + 1000 * 10; // 10 seconds
    controller = CountdownTimerController(endTime: endTime, onEnd: onTimerEnd);
    controller.start();
  }

  void onTimerEnd() {
    if (mounted) {
      setState(() {
        isRecording = false;
      });
    }
    print('Timer ended');
  }

  @override
  void dispose() {
    if (isRecording) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: isRecording ? 0 : 40.h,
          horizontal: 16.w,
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (isRecording) ...[
              const Spacer(),
              CountdownTimer(
                  controller: controller,
                  onEnd: onTimerEnd,
                  widgetBuilder: (_, time) {
                    if (time == null) {
                      return Text(
                        '00:00',
                        style: AppTextStyles.textStyle20Bold(context)
                            .copyWith(color: const Color(0xff5E5E5E)),
                      );
                    }
                    return Text(
                      '${time.min ?? '00'}:${time.sec.toString().padLeft(2, '0')}',
                      style: AppTextStyles.textStyle20Bold(context)
                          .copyWith(color: const Color(0xff5E5E5E)),
                    );
                  }),
            ],
            if (isRecording) ...[
              const Spacer(),
              FadeInDown(
                duration: const Duration(milliseconds: 650),
                child: const RecordingWaveWidget(),
              )
            ],
            if (isRecording) const Spacer(),
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
                    if (isRecording) {
                      controller.dispose(); // Start or restart the timer here
                    } else {
                      startTimer();
                      // Dispose the controller if recording is stopped
                    }
                    setState(() {
                      isRecording = !isRecording;
                    });

                    // final int endTime = DateTime.now().millisecondsSinceEpoch +
                    //     1000 * 10; // 10 seconds

                    // controller = CountdownTimerController(
                    //     endTime: endTime,
                    //     onEnd: () {
                    //       setState(() {
                    //         isRecording = false;
                    //       });

                    //       print('object222');
                    //     });

                    // controller?.start();
                  },
                  shape: const CircleBorder(),
                  child: const SizedBox.shrink(),
                ),
              ),
            ),
            MySizedBox.height12,
            Text(
              'Please ensure your recording does not exceed 10 seconds.',
              style: AppTextStyles.textStyle20Bold(context),
              textAlign: TextAlign.center,
            ),
            if (isRecording) const Spacer(),
          ],
        ),
      ),
    );
  }
}
