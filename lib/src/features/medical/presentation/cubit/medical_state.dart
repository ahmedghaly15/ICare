import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_state.freezed.dart';

@freezed
class MedicalState<T> with _$MedicalState<T> {
  const factory MedicalState.initial() = _MedicalInitial;
  const factory MedicalState.getMedicalLoading() = GetMedicalLoading;
  const factory MedicalState.getMedicalSuccess(T data) = GetMedicalSuccess<T>;
  const factory MedicalState.getMedicalError(String error) = GetMedicalError;
}
