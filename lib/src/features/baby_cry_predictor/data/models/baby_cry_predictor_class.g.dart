// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baby_cry_predictor_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BabyCryPredictorClass _$BabyCryPredictorClassFromJson(
        Map<String, dynamic> json) =>
    BabyCryPredictorClass(
      className: json['Class'] as String,
      audio: json['audio'] as String,
      hint: json['hint'] as String,
    );

Map<String, dynamic> _$BabyCryPredictorClassToJson(
        BabyCryPredictorClass instance) =>
    <String, dynamic>{
      'Class': instance.className,
      'audio': instance.audio,
      'hint': instance.hint,
    };
