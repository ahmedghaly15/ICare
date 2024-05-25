import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_miss_classifying_params.freezed.dart';

@freezed
class UploadMissClassifyingParams with _$UploadMissClassifyingParams {
  const factory UploadMissClassifyingParams({
    required File audioFile,
    required String className,
  }) = _UploadMissClassifyingParams;
}
