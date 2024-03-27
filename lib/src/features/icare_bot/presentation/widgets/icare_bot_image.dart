import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/size_config.dart';

class ICareBotImage extends StatelessWidget {
  const ICareBotImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.imagesIcareBot,
      height: SizeConfig.height * 0.05,
      width: SizeConfig.height * 0.05,
    );
  }
}
