import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/utils/app_assets.dart';

class WavyCryTranslatorSvgImage extends StatelessWidget {
  const WavyCryTranslatorSvgImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      context.isDarkModeActive
          ? AppAssets.svgsDarkCryTranslatorWave
          : AppAssets.svgsCryTranslatorWave,
      fit: BoxFit.fill,
    );
  }
}
