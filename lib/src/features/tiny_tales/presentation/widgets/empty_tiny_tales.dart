import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/core/utils/app_assets.dart';

class EmptyTinyTales extends StatelessWidget {
  const EmptyTinyTales({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Center(
        child: FadeInDown(
          child: SvgPicture.asset(
            AppAssets.svgsNoTinyTales,
          ),
        ),
      ),
    );
  }
}
