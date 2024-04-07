// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'do_or_not.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoOrNot _$DoOrNotFromJson(Map<String, dynamic> json) => DoOrNot(
      doKeys:
          (json['Do_Keys'] as List<dynamic>).map((e) => e as String).toList(),
      do_: Do.fromJson(json['Do'] as Map<String, dynamic>),
      doNotKeys: (json['Do_Not_Keys'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      doNot: DoNot.fromJson(json['Do_Not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DoOrNotToJson(DoOrNot instance) => <String, dynamic>{
      'Do_Keys': instance.doKeys,
      'Do': instance.do_.toJson(),
      'Do_Not_Keys': instance.doNotKeys,
      'Do_Not': instance.doNot.toJson(),
    };

Do _$DoFromJson(Map<String, dynamic> json) => Do(
      stayCalm: json['Stay Calm'] as String,
      provideASafeEnvironment: json['Provide a Safe Environment'] as String,
      offerFluidsInSmallSips: json['Offer Fluids in Small Sips'] as String,
      encourageRest: json['Encourage Rest'] as String,
      monitorForSignsOfDehydration:
          json['Monitor for Signs of Dehydration'] as String,
      maintainGoodHygiene: json['Maintain Good Hygiene'] as String,
      observeForOtherSymptoms: json['Observe for Other Symptoms'] as String,
      consultAHealthcareProvider:
          json['Consult a Healthcare Provider'] as String,
    );

Map<String, dynamic> _$DoToJson(Do instance) => <String, dynamic>{
      'Stay Calm': instance.stayCalm,
      'Provide a Safe Environment': instance.provideASafeEnvironment,
      'Offer Fluids in Small Sips': instance.offerFluidsInSmallSips,
      'Encourage Rest': instance.encourageRest,
      'Monitor for Signs of Dehydration': instance.monitorForSignsOfDehydration,
      'Maintain Good Hygiene': instance.maintainGoodHygiene,
      'Observe for Other Symptoms': instance.observeForOtherSymptoms,
      'Consult a Healthcare Provider': instance.consultAHealthcareProvider,
    };

DoNot _$DoNotFromJson(Map<String, dynamic> json) => DoNot(
      donTPanic: json["Don't Panic"] as String,
      avoidOverfeeding: json['Avoid Overfeeding'] as String,
      doNotForceFeed: json['Do Not Force Feed'] as String,
      doNotAdministerMedicationsWithoutProfessionalAdvice:
          json['Do Not Administer Medications without Professional Advice']
              as String,
      donTDelayMedicalHelp: json["Don't Delay Medical Help"] as String,
      doNotNeglectHygiene: json['Do Not Neglect Hygiene'] as String,
    );

Map<String, dynamic> _$DoNotToJson(DoNot instance) => <String, dynamic>{
      "Don't Panic": instance.donTPanic,
      'Avoid Overfeeding': instance.avoidOverfeeding,
      'Do Not Force Feed': instance.doNotForceFeed,
      'Do Not Administer Medications without Professional Advice':
          instance.doNotAdministerMedicationsWithoutProfessionalAdvice,
      "Don't Delay Medical Help": instance.donTDelayMedicalHelp,
      'Do Not Neglect Hygiene': instance.doNotNeglectHygiene,
    };
