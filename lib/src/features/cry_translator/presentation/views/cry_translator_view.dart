import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/cry_translator/presentation/cubit/cry_translator_cubit.dart';
import 'package:icare/src/features/cry_translator/presentation/cubit/cry_translator_state.dart';
import 'package:icare/src/features/cry_translator/presentation/widgets/recording_wave_widget.dart';

@RoutePage()
class CryTranslatorView extends StatelessWidget implements AutoRouteWrapper {
  const CryTranslatorView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<CryTranslatorCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CryTranslatorCubit, CryTranslatorState>(
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.symmetric(
              vertical:
                  context.read<CryTranslatorCubit>().isRecording ? 0 : 40.h,
              horizontal: 16.w,
            ),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (context.read<CryTranslatorCubit>().isRecording) ...[
                  const Spacer(),
                  CountdownTimer(
                      controller: context
                          .read<CryTranslatorCubit>()
                          .countDownController,
                      onEnd: context.read<CryTranslatorCubit>().onTimerEnd,
                      widgetBuilder: (_, time) {
                        if (time == null) {
                          return Text(
                            '00:00',
                            style: AppTextStyles.textStyle20Bold(context),
                          );
                        }
                        return Text(
                          '${time.min ?? '00'}:${time.sec.toString().padLeft(2, '0')}',
                          style: AppTextStyles.textStyle20Bold(context),
                        );
                      }),
                ],
                if (context.read<CryTranslatorCubit>().isRecording) ...[
                  const Spacer(),
                  FadeInDown(
                    duration: const Duration(milliseconds: 650),
                    child: const RecordingWaveWidget(),
                  )
                ],
                if (context.read<CryTranslatorCubit>().isRecording)
                  const Spacer(),
                AnimatedContainer(
                  height: 100.h,
                  width: 100.w,
                  duration: const Duration(milliseconds: 650),
                  padding: EdgeInsets.all(
                      context.read<CryTranslatorCubit>().isRecording
                          ? 25.h
                          : 15.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.primaryColor,
                      width: context.read<CryTranslatorCubit>().isRecording
                          ? 8.sp
                          : 3.sp,
                    ),
                  ),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 650),
                    height: 70.h,
                    width: 70.h,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: context.read<CryTranslatorCubit>().isRecording
                          ? BoxShape.rectangle
                          : BoxShape.circle,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        if (context.read<CryTranslatorCubit>().isRecording) {
                          context
                              .read<CryTranslatorCubit>()
                              .countDownController
                              .dispose();
                        } else {
                          context.read<CryTranslatorCubit>().startTimer();
                        }
                        context.read<CryTranslatorCubit>().convertIsRecording();
                      },
                      shape: const CircleBorder(),
                      child: const SizedBox.shrink(),
                    ),
                  ),
                ),
                if (context.read<CryTranslatorCubit>().isRecording ==
                    false) ...[
                  MySizedBox.height12,
                  Text(
                    'Please ensure your recording does not exceed 10 seconds.',
                    style: AppTextStyles.textStyle20Bold(context),
                    textAlign: TextAlign.center,
                  )
                ],
                if (context.read<CryTranslatorCubit>().isRecording)
                  const Spacer(),
              ],
            ),
          );
        },
      ),
    );
  }
}
