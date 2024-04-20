import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';

class WavyCryTranslatorSvgImage extends StatelessWidget {
  const WavyCryTranslatorSvgImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      isDarkModeActive(context)
          ? AppAssets.svgsDarkCryTranslatorWave
          : AppAssets.svgsCryTranslatorWave,
      fit: BoxFit.fill,
    );
  }
}
