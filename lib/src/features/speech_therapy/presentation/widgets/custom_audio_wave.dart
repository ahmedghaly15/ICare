import 'package:audio_wave/audio_wave.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAudioWave extends StatelessWidget {
  const CustomAudioWave({
    super.key,
    this.height,
    this.width,
  });

  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return AudioWave(
      height: height?.h ?? 40.h,
      width: width?.w ?? 48.w,
      spacing: 2.5,
      animationLoop: 1000,
      bars: [
        AudioWaveBar(heightFactor: 0.7, color: Colors.white),
        AudioWaveBar(heightFactor: 1, color: Colors.white),
        AudioWaveBar(heightFactor: 0.7, color: Colors.white),
        AudioWaveBar(heightFactor: 0.4, color: Colors.white),
        AudioWaveBar(heightFactor: 0.1, color: Colors.white),
        AudioWaveBar(heightFactor: 0.4, color: Colors.white),
        AudioWaveBar(heightFactor: 0.7, color: Colors.white),
        AudioWaveBar(heightFactor: 1, color: Colors.white),
        AudioWaveBar(heightFactor: 0.7, color: Colors.white),
      ],
    );
  }
}
