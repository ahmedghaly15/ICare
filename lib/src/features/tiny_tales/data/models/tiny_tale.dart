import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/models/icare_user.dart';

part 'tiny_tale.g.dart';
part 'tiny_tale.freezed.dart';

@freezed
class TinyTale with _$TinyTale {
  const factory TinyTale({
    ICareUser? user,
    TinyTaleData? tinyTaleData,
    String? tinyTaleId,
    Timestamp? dateTime,
  }) = _TinyTale;

  factory TinyTale.fromJson(Map<String, dynamic> json) =>
      _$TinyTaleFromJson(json);
}

@freezed
class TinyTaleData with _$TinyTaleData {
  const factory TinyTaleData({
    String? time,
    String? date,
    String? text,
    String? tinyTaleImage,
  }) = _TinyTaleData;

  factory TinyTaleData.fromJson(Map<String, dynamic> json) =>
      _$TinyTaleDataFromJson(json);
}
