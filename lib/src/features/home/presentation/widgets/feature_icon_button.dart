import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';

class FeatureIconButton extends StatelessWidget {
  const FeatureIconButton({
    super.key,
    required this.featureName,
    required this.featureIcon,
    required this.color,
    required this.onPressed,
  });

  final String featureName, featureIcon;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(featureIcon),
        ),
        Text(
          featureName,
          style: AppTextStyles.textStyle16Bold(context).copyWith(
            color: color,
          ),
        ),
      ],
    );
  }
}
