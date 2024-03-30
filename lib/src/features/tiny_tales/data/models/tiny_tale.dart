import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tiny_tale.g.dart';

@JsonSerializable()
class TinyTale {
  final ICareUser? user;
  final TinyTaleData? tinyTaleData;
  final String? tinyTaleId;
  final Timestamp? dateTime;

  const TinyTale({
    this.user,
    this.tinyTaleData,
    this.tinyTaleId,
    this.dateTime,
  });

  factory TinyTale.fromJson(Map<String, dynamic> json) =>
      _$TinyTaleFromJson(json);

  Map<String, dynamic> toJson() => _$TinyTaleToJson(this);
}
