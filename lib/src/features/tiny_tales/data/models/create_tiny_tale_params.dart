import 'package:flutter/material.dart';

class CreateTinyTaleParams {
  final String date;
  final String time;
  final String? text;
  final String? tinyTaleImage;
  final BuildContext context;

  const CreateTinyTaleParams({
    required this.context,
    required this.date,
    required this.time,
    this.text,
    this.tinyTaleImage,
  });
}
