import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';

@RoutePage()
class BabyView extends StatelessWidget {
  const BabyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Baby View',
        style: AppTextStyles.textStyle30Bold(context),
      ),
    );
  }
}
