import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_ai_feature.freezed.dart';

@freezed
class HomeAIFeature with _$HomeAIFeature {
  const factory HomeAIFeature({
    required String title,
    required String icon,
    required String description,
    required String image,
    required VoidCallback onPressed,
  }) = _HomeAIFeature;
}
