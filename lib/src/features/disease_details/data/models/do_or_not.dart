import 'package:json_annotation/json_annotation.dart';

part 'do_or_not.g.dart';

@JsonSerializable()
class DoOrNot {
  @JsonKey(name: 'Do_Keys')
  final List<String> doKeys;
  @JsonKey(name: 'Do')
  final Do do_;
  @JsonKey(name: 'Do_Not_Keys')
  final List<String> doNotKeys;
  @JsonKey(name: 'Do_Not')
  final DoNot doNot;

  const DoOrNot({
    required this.doKeys,
    required this.do_,
    required this.doNotKeys,
    required this.doNot,
  });

  factory DoOrNot.fromJson(Map<String, dynamic> json) =>
      _$DoOrNotFromJson(json);
  Map<String, dynamic> toJson() => _$DoOrNotToJson(this);
}

@JsonSerializable()
class Do {
  @JsonKey(name: 'Stay Calm')
  final String stayCalm;
  @JsonKey(name: 'Provide a Safe Environment')
  final String provideASafeEnvironment;
  @JsonKey(name: 'Offer Fluids in Small Sips')
  final String offerFluidsInSmallSips;
  @JsonKey(name: 'Encourage Rest')
  final String encourageRest;
  @JsonKey(name: 'Monitor for Signs of Dehydration')
  final String monitorForSignsOfDehydration;
  @JsonKey(name: 'Maintain Good Hygiene')
  final String maintainGoodHygiene;
  @JsonKey(name: 'Observe for Other Symptoms')
  final String observeForOtherSymptoms;
  @JsonKey(name: 'Consult a Healthcare Provider')
  final String consultAHealthcareProvider;

  const Do({
    required this.stayCalm,
    required this.provideASafeEnvironment,
    required this.offerFluidsInSmallSips,
    required this.encourageRest,
    required this.monitorForSignsOfDehydration,
    required this.maintainGoodHygiene,
    required this.observeForOtherSymptoms,
    required this.consultAHealthcareProvider,
  });

  factory Do.fromJson(Map<String, dynamic> json) => _$DoFromJson(json);
  Map<String, dynamic> toJson() => _$DoToJson(this);
}

@JsonSerializable()
class DoNot {
  @JsonKey(name: 'Don\'t Panic')
  final String donTPanic;
  @JsonKey(name: 'Avoid Overfeeding')
  final String avoidOverfeeding;
  @JsonKey(name: 'Do Not Force Feed')
  final String doNotForceFeed;
  @JsonKey(name: 'Do Not Administer Medications without Professional Advice')
  final String doNotAdministerMedicationsWithoutProfessionalAdvice;
  @JsonKey(name: 'Don\'t Delay Medical Help')
  final String donTDelayMedicalHelp;
  @JsonKey(name: 'Do Not Neglect Hygiene')
  final String doNotNeglectHygiene;

  const DoNot({
    required this.donTPanic,
    required this.avoidOverfeeding,
    required this.doNotForceFeed,
    required this.doNotAdministerMedicationsWithoutProfessionalAdvice,
    required this.donTDelayMedicalHelp,
    required this.doNotNeglectHygiene,
  });

  factory DoNot.fromJson(Map<String, dynamic> json) => _$DoNotFromJson(json);
  Map<String, dynamic> toJson() => _$DoNotToJson(this);
}
