import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';

class CustomClassDescriptionText extends StatelessWidget {
  final String originalText;

  const CustomClassDescriptionText({super.key, required this.originalText});

  List<TextSpan> _parseText(BuildContext context) {
    List<TextSpan> textSpans = [];
    RegExp regex = RegExp(
        r'\b[A-Z]{3}\b'); // Regular expression to match three capital characters

    int start = 0;
    for (RegExpMatch match in regex.allMatches(originalText)) {
      // Add text before the match
      if (match.start > start) {
        textSpans.add(
          TextSpan(
            text: originalText.substring(start, match.start),
            style: AppTextStyles.textStyle14Regular.copyWith(
              color: isDarkModeActive(context) ? Colors.white : Colors.black,
            ),
          ),
        );
      }
      // Add the match with custom style
      textSpans.add(
        TextSpan(
          text: originalText.substring(match.start, match.end),
          style: AppTextStyles.textStyle14Regular.copyWith(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
      start = match.end;
    }

    // Add remaining text after the last match
    if (start < originalText.length) {
      textSpans.add(
        TextSpan(
          text: originalText.substring(start),
          style: AppTextStyles.textStyle14Regular.copyWith(
            color: isDarkModeActive(context) ? Colors.white : Colors.black,
          ),
        ),
      );
    }

    return textSpans;
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: _parseText(context),
      ),
    );
  }
}
