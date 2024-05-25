import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_tiny_tale_params.freezed.dart';

@freezed
class CreateTinyTaleParams with _$CreateTinyTaleParams {
  const factory CreateTinyTaleParams({
    required String date,
    required String time,
    String? text,
    String? tinyTaleImage,
  }) = _CreateTinyTaleParams;
}
