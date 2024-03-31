import 'package:flutter/material.dart';

class LikeParams {
  final String tinyTaleId;
  final String? commentId;
  final BuildContext context;

  const LikeParams({
    required this.tinyTaleId,
    required this.context,
    this.commentId,
  });
}
