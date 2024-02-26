// sacleFactor
// responsive font size
// (min , max) fontsize
import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_constants.dart';

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // To get the same width of Media query use below steps :

  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < AppConstants.tablet) {
    return width / 550;
  } else if (width < AppConstants.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
