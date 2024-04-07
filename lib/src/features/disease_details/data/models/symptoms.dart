import 'package:json_annotation/json_annotation.dart';

part 'symptoms.g.dart';

@JsonSerializable()
class Symptoms {
  @JsonKey(name: 'Dehydration')
  final String dehydration;
  @JsonKey(name: 'Blood in Vomit')
  final String bloodInVomit;
  @JsonKey(name: 'Severe Abdominal Pain')
  final String severeAbdominalPain;
  @JsonKey(name: 'Vomiting After Head Injury')
  final String vomitingAfterHeadInjury;
  @JsonKey(name: 'Vomiting After Ingesting a Harmful Substance')
  final String vomitingAfterIngestingAHarmfulSubstance;
  @JsonKey(name: 'Vomiting with High Fever')
  final String vomitingWithHighFever;
  @JsonKey(name: 'Projectile Vomiting')
  final String projectileVomiting;
  @JsonKey(name: 'Prolonged Vomiting')
  final String prolongedVomiting;
  @JsonKey(name: 'Signs of Meningitis')
  final String signsOfMeningitis;
  @JsonKey(name: 'Lethargy or Altered Mental State')
  final String lethargyOrAlteredMentalState;

  const Symptoms({
    required this.dehydration,
    required this.bloodInVomit,
    required this.severeAbdominalPain,
    required this.vomitingAfterHeadInjury,
    required this.vomitingAfterIngestingAHarmfulSubstance,
    required this.vomitingWithHighFever,
    required this.projectileVomiting,
    required this.prolongedVomiting,
    required this.signsOfMeningitis,
    required this.lethargyOrAlteredMentalState,
  });

  factory Symptoms.fromJson(Map<String, dynamic> json) =>
      _$SymptomsFromJson(json);
  Map<String, dynamic> toJson() => _$SymptomsToJson(this);
}
