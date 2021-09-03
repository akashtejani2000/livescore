// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CirResult _$CirResultFromJson(Map<String, dynamic> json) {
  return CirResult(
    match: (json['match'] as List<dynamic>?)
        ?.map((e) => Match.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CirResultToJson(CirResult instance) => <String, dynamic>{
      'match': instance.match,
    };

Match _$MatchFromJson(Map<String, dynamic> json) {
  return Match(
    description: json['description'] as List<dynamic>?,
  );
}

Map<String, dynamic> _$MatchToJson(Match instance) => <String, dynamic>{
      'description': instance.description,
    };

Description _$DescriptionFromJson(Map<String, dynamic> json) {
  return Description(
    id: json['id'] as String?,
    currSts: json['curr_sts'] as String?,
    gmt_dt: json['gmt_dt'] as String?,
    local_dt: json['local_dt'] as String?,
    rxo: json['rxo'] as String?,
    mxo: json['mxo'] as String?,
    typ: json['typ'] as String?,
    ord: json['ord'] as String?,
    lvl: json['lvl'] as String?,
    sts: json['sts'] as String?,
    dt: json['dt'] as String?,
    end_dt: json['end_dt'] as String?,
    tday: json['tday'] as String?,
    tssn: json['tssn'] as String?,
  );
}

Map<String, dynamic> _$DescriptionToJson(Description instance) =>
    <String, dynamic>{
      'id': instance.id,
      'curr_sts': instance.currSts,
      'gmt_dt': instance.gmt_dt,
      'local_dt': instance.local_dt,
      'rxo': instance.rxo,
      'mxo': instance.mxo,
      'typ': instance.typ,
      'ord': instance.ord,
      'lvl': instance.lvl,
      'sts': instance.sts,
      'dt': instance.dt,
      'end_dt': instance.end_dt,
      'tday': instance.tday,
      'tssn': instance.tssn,
    };

Evt _$EvtFromJson(Map<String, dynamic> json) {
  return Evt();
}

Map<String, dynamic> _$EvtToJson(Evt instance) => <String, dynamic>{};

Vnu _$VnuFromJson(Map<String, dynamic> json) {
  return Vnu();
}

Map<String, dynamic> _$VnuToJson(Vnu instance) => <String, dynamic>{};

Tma _$TmaFromJson(Map<String, dynamic> json) {
  return Tma();
}

Map<String, dynamic> _$TmaToJson(Tma instance) => <String, dynamic>{};

Tmb _$TmbFromJson(Map<String, dynamic> json) {
  return Tmb();
}

Map<String, dynamic> _$TmbToJson(Tmb instance) => <String, dynamic>{};

Nts _$NtsFromJson(Map<String, dynamic> json) {
  return Nts();
}

Map<String, dynamic> _$NtsToJson(Nts instance) => <String, dynamic>{};
