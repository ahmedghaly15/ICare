import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/features/cry_translator/presentation/widgets/recording_wave_widget.dart';

@RoutePage()
class CryTranslatorView extends StatelessWidget {
  const CryTranslatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RecordingWaveWidget(),
      ),
    );
  }
}
