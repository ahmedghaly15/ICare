import 'package:json_annotation/json_annotation.dart';

part 'red_flags.g.dart';

@JsonSerializable()
class RedFlags {
  @JsonKey(name: 'Severe Dehydration')
  final String severeDehydration;
  @JsonKey(name: 'Blood in Vomit')
  final String bloodInVomit;
  @JsonKey(name: 'High Fever')
  final String highFever;
  @JsonKey(name: 'Head Injury and Vomiting')
  final String headInjuryAndVomiting;
  @JsonKey(name: 'Lethargy or Altered Mental State')
  final String lethargyOrAlteredMentalState;
  @JsonKey(name: 'Neck Stiffness and Vomiting')
  final String neckStiffnessAndVomiting;
  @JsonKey(name: 'Projectile Vomiting')
  final String projectileVomiting;
  @JsonKey(name: 'Prolonged or Recurrent Vomiting')
  final String prolongedOrRecurrentVomiting;
  @JsonKey(name: 'Ingestion of Harmful Substances')
  final String ingestionOfHarmfulSubstances;
  @JsonKey(name: 'Underlying Medical Conditions')
  final String underlyingMedicalConditions;

  const RedFlags({
    required this.severeDehydration,
    required this.bloodInVomit,
    required this.highFever,
    required this.headInjuryAndVomiting,
    required this.lethargyOrAlteredMentalState,
    required this.neckStiffnessAndVomiting,
    required this.projectileVomiting,
    required this.prolongedOrRecurrentVomiting,
    required this.ingestionOfHarmfulSubstances,
    required this.underlyingMedicalConditions,
  });

  factory RedFlags.fromJson(Map<String, dynamic> json) =>
      _$RedFlagsFromJson(json);
  Map<String, dynamic> toJson() => _$RedFlagsToJson(this);
}
