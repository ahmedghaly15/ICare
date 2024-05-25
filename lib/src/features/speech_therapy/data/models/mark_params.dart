import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'mark_params.freezed.dart';

@freezed
class MarkParams with _$MarkParams {
  const factory MarkParams({
    int? level,
    int? ayahNum,
    required int id,
    required File audioFile,
    required String userId,
  }) = _MarkParams;
}
