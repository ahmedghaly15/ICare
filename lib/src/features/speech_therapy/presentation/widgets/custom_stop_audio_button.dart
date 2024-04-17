import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/custom_audio_wave.dart';

class CustomStopAudioButton extends StatelessWidget {
  const CustomStopAudioButton({
    super.key,
    this.width,
    this.hasShadow,
  });

  final double? width;
  final bool? hasShadow;

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      onPressed: () {},
      hasShadow: hasShadow ?? true,
      width: width ?? SizeConfig.width * 0.45,
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 30.w),
      child: Row(
        children: <Widget>[
          const Expanded(child: CustomAudioWave()),
          MySizedBox.width20,
          Container(
            height: 40.h,
            width: 40.h,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.white,
                width: 2.w,
              ),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Container(
                height: 10.h,
                width: 10.h,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.white,
                    width: 2.w,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
