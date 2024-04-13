import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/animated_empty_view.dart';

class EmptyTinyTales extends StatelessWidget {
  const EmptyTinyTales({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnimatedEmptyView(
      svgImage: AppAssets.svgsNoTinyTales,
      text: AppStrings.noTinyTalesYet,
    );
  }
}
