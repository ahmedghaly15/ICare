import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecordingWaveWidget extends StatefulWidget {
  const RecordingWaveWidget({super.key});

  @override
  State<RecordingWaveWidget> createState() => _RecordingWaveWidgetState();
}

class _RecordingWaveWidgetState extends State<RecordingWaveWidget> {
  final List<double> _heights = [50, 70, 100, 70, 50];
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAnimating();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startAnimating() {
    _timer = Timer.periodic(const Duration(milliseconds: 150), (timer) {
      setState(() {
        // This is a simple way to rotate the list, creating a wave effect.
        _heights.add(_heights.removeAt(0));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _heights.map((height) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 20.w,
            height: height.h,
            margin: EdgeInsets.only(right: 10.w),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50.r),
            ),
          );
        }).toList(),
      ),
    );
  }
}
