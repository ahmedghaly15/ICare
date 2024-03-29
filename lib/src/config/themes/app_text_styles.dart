import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/functions/get_responsive_font_size.dart';

class AppTextStyles {
  static TextStyle textStyle30Bold(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 30),
        fontWeight: FontWeight.bold,
      );

  static TextStyle textStyle25Bold(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 25),
        fontWeight: FontWeight.bold,
      );

  static TextStyle textStyle24Medium(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.w500,
      );

  static TextStyle textStyle20Bold(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.bold,
      );

  static TextStyle textStyle18Regular(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.w400,
      );
  static TextStyle textStyle18Bold(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.bold,
      );

  static TextStyle textStyle16Light(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w300,
      );

  static TextStyle textStyle16Regular(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
      );

  static TextStyle textStyle16Medium(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w500,
      );

  static TextStyle textStyle16Bold(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.bold,
      );

  static TextStyle textStyle15Bold(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 15),
        fontWeight: FontWeight.bold,
      );

  static TextStyle textStyle14Medium(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w500,
      );

  static TextStyle textStyle13Bold(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 13),
        fontWeight: FontWeight.bold,
      );

  static TextStyle textStyle13Regular(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 13),
        fontWeight: FontWeight.w400,
      );

  static TextStyle textStyle13Light(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 13),
        fontWeight: FontWeight.w300,
      );
}
