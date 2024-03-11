import 'package:freezed_annotation/freezed_annotation.dart';

part 'cry_translator_state.freezed.dart';

@freezed
class CryTranslatorState<T> with _$CryTranslatorState<T> {
  const factory CryTranslatorState.initial() = _CryTranslatorInitial;
  const factory CryTranslatorState.convertIsRecording(bool isRecording) =
      _ConvertIsRecording<T>;

  const factory CryTranslatorState.assignAudioPathVal(String path) =
      _AssignAudioPathVal<T>;
}
