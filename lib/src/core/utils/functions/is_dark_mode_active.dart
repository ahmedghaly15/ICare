import 'package:flutter/material.dart';

isDarkModeActive(BuildContext context) =>
    Theme.of(context).brightness == Brightness.dark;
