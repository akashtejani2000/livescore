// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CiResult _$CiResultFromJson(Map<String, dynamic> json) {
  return CiResult(
    ciResult: json['ci_rslt'] as String?,
  );
}

Map<String, dynamic> _$CiResultToJson(CiResult instance) => <String, dynamic>{
      'ci_rslt': instance.ciResult,
    };

DisplayScore _$DisplayScoreFromJson(Map<String, dynamic> json) {
  return DisplayScore(
    matchDetails: (json['mch'] as List<dynamic>?)
        ?.map((e) => MatchDetails.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DisplayScoreToJson(DisplayScore instance) =>
    <String, dynamic>{
      'mch': instance.matchDetails,
    };

MatchDetails _$MatchDetailsFromJson(Map<String, dynamic> json) {
  return MatchDetails(
    matchInfo: json[r'$'] == null
        ? null
        : MatchInfo.fromJson(json[r'$'] as Map<String, dynamic>),
    event: (json['evt'] as List<dynamic>?)
        ?.map((e) => EventData.fromJson(e as Map<String, dynamic>))
        .toList(),
    venue: (json['vnu'] as List<dynamic>?)
        ?.map((e) => VenueInfo.fromJson(e as Map<String, dynamic>))
        .toList(),
    tma: (json['tma'] as List<dynamic>?)
        ?.map((e) => Tma.fromJson(e as Map<String, dynamic>))
        .toList(),
    tmb: (json['tmb'] as List<dynamic>?)
        ?.map((e) => Tmb.fromJson(e as Map<String, dynamic>))
        .toList(),
    nts: (json['nts'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$MatchDetailsToJson(MatchDetails instance) =>
    <String, dynamic>{
      r'$': instance.matchInfo,
      'evt': instance.event,
      'vnu': instance.venue,
      'tma': instance.tma,
      'tmb': instance.tmb,
      'nts': instance.nts,
    };

MatchInfo _$MatchInfoFromJson(Map<String, dynamic> json) {
  return MatchInfo(
    id: json['id'] as String?,
    currSts: json['curr_sts'] as String?,
    gmtDt: json['gmt_dt'] as String?,
    localDt: json['local_dt'] as String?,
    rxo: json['rxo'] as String?,
    mxo: json['mxo'] as String?,
    typ: json['typ'] as String?,
    ord: json['ord'] as String?,
    lvl: json['lvl'] as String?,
    sts: json['sts'] as String?,
    dt: json['dt'] as String?,
    endDt: json['end_dt'] as String?,
    tday: json['tday'] as String?,
    tssn: json['tssn'] as String?,
  );
}

Map<String, dynamic> _$MatchInfoToJson(MatchInfo instance) => <String, dynamic>{
      'id': instance.id,
      'curr_sts': instance.currSts,
      'gmt_dt': instance.gmtDt,
      'local_dt': instance.localDt,
      'rxo': instance.rxo,
      'mxo': instance.mxo,
      'typ': instance.typ,
      'ord': instance.ord,
      'lvl': instance.lvl,
      'sts': instance.sts,
      'dt': instance.dt,
      'end_dt': instance.endDt,
      'tday': instance.tday,
      'tssn': instance.tssn,
    };

EventData _$EventDataFromJson(Map<String, dynamic> json) {
  return EventData(
    seriesName: json['_'] as String?,
    eventInfo: (json[r'$'] as List<dynamic>?)
        ?.map((e) => EventInfo.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$EventDataToJson(EventData instance) => <String, dynamic>{
      '_': instance.seriesName,
      r'$': instance.eventInfo,
    };

EventInfo _$EventInfoFromJson(Map<String, dynamic> json) {
  return EventInfo(
    cd: json['cd'] as String?,
    lvl: json['lvl'] as String?,
    sts: json['sts'] as String?,
    id: json['id'] as String?,
    ikn: json['ikn'] as String?,
    cat: json['cat'] as String?,
    sdt: json['sdt'] as String?,
    edt: json['edt'] as String?,
  );
}

Map<String, dynamic> _$EventInfoToJson(EventInfo instance) => <String, dynamic>{
      'cd': instance.cd,
      'lvl': instance.lvl,
      'sts': instance.sts,
      'id': instance.id,
      'ikn': instance.ikn,
      'cat': instance.cat,
      'sdt': instance.sdt,
      'edt': instance.edt,
    };

Venue _$VenueFromJson(Map<String, dynamic> json) {
  return Venue(
    placeName: json['_'] as String?,
    venueInfo: (json[r'$'] as List<dynamic>?)
        ?.map((e) => VenueInfo.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$VenueToJson(Venue instance) => <String, dynamic>{
      '_': instance.placeName,
      r'$': instance.venueInfo,
    };

VenueInfo _$VenueInfoFromJson(Map<String, dynamic> json) {
  return VenueInfo(
    id: json['id'] as String?,
    lat: json['lat'] as String?,
    lon: json['lon'] as String?,
    ikn: json['ikn'] as String?,
    city: json['city'] as String?,
    ctry: json['ctry'] as String?,
  );
}

Map<String, dynamic> _$VenueInfoToJson(VenueInfo instance) => <String, dynamic>{
      'id': instance.id,
      'lat': instance.lat,
      'lon': instance.lon,
      'ikn': instance.ikn,
      'city': instance.city,
      'ctry': instance.ctry,
    };

Tma _$TmaFromJson(Map<String, dynamic> json) {
  return Tma(
    tmaInfo: json[r'$'] == null
        ? null
        : TmaInfo.fromJson(json[r'$'] as Map<String, dynamic>),
    ainFirst: (json['ain_first'] as List<dynamic>?)
        ?.map((e) => AinFirst.fromJson(e as Map<String, dynamic>))
        .toList(),
    ainSecond: (json['ain_second'] as List<dynamic>?)
        ?.map((e) => AinSecond.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TmaToJson(Tma instance) => <String, dynamic>{
      r'$': instance.tmaInfo,
      'ain_first': instance.ainFirst,
      'ain_second': instance.ainSecond,
    };

TmaInfo _$TmaInfoFromJson(Map<String, dynamic> json) {
  return TmaInfo(
    tname: json['tname'] as String?,
    ach: json['ach'] as String?,
    ikn: json['ikn'] as String?,
    bigIkn: json['big_ikn'] as String?,
    dnm: json['dnm'] as String?,
    evtmid: json['evtmid'] as String?,
    bat: json['bat'] as String?,
    tos: json['tos'] as String?,
    won: json['won'] as String?,
  );
}

Map<String, dynamic> _$TmaInfoToJson(TmaInfo instance) => <String, dynamic>{
      'tname': instance.tname,
      'ach': instance.ach,
      'ikn': instance.ikn,
      'big_ikn': instance.bigIkn,
      'dnm': instance.dnm,
      'evtmid': instance.evtmid,
      'bat': instance.bat,
      'tos': instance.tos,
      'won': instance.won,
    };

AinFirst _$AinFirstFromJson(Map<String, dynamic> json) {
  return AinFirst(
    ainFirstInfo: json[r'$'] == null
        ? null
        : AinFirstInfo.fromJson(json[r'$'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AinFirstToJson(AinFirst instance) => <String, dynamic>{
      r'$': instance.ainFirstInfo,
    };

AinFirstInfo _$AinFirstInfoFromJson(Map<String, dynamic> json) {
  return AinFirstInfo(
    rns: json['rns'] as String?,
    fo: json['fo'] as String?,
    bat: json['bat'] as String?,
    ists: json['ists'] as String?,
    wkt: json['wkt'] as String?,
    ovr: json['ovr'] as String?,
    rr: json['rr'] as String?,
    ord: json['ord'] as String?,
    dcl: json['dcl'] as String?,
  );
}

Map<String, dynamic> _$AinFirstInfoToJson(AinFirstInfo instance) =>
    <String, dynamic>{
      'rns': instance.rns,
      'fo': instance.fo,
      'bat': instance.bat,
      'ists': instance.ists,
      'wkt': instance.wkt,
      'ovr': instance.ovr,
      'rr': instance.rr,
      'ord': instance.ord,
      'dcl': instance.dcl,
    };

AinSecond _$AinSecondFromJson(Map<String, dynamic> json) {
  return AinSecond(
    ainInfo: json[r'$'] == null
        ? null
        : AinSecondInfo.fromJson(json[r'$'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AinSecondToJson(AinSecond instance) => <String, dynamic>{
      r'$': instance.ainInfo,
    };

AinSecondInfo _$AinSecondInfoFromJson(Map<String, dynamic> json) {
  return AinSecondInfo(
    rns: json['rns'] as String?,
    fo: json['fo'] as String?,
    bat: json['bat'] as String?,
    ists: json['ists'] as String?,
    wkt: json['wkt'] as String?,
    ovr: json['ovr'] as String?,
    rr: json['rr'] as String?,
    ord: json['ord'] as String?,
    dcl: json['dcl'] as String?,
  );
}

Map<String, dynamic> _$AinSecondInfoToJson(AinSecondInfo instance) =>
    <String, dynamic>{
      'rns': instance.rns,
      'fo': instance.fo,
      'bat': instance.bat,
      'ists': instance.ists,
      'wkt': instance.wkt,
      'ovr': instance.ovr,
      'rr': instance.rr,
      'ord': instance.ord,
      'dcl': instance.dcl,
    };

Tmb _$TmbFromJson(Map<String, dynamic> json) {
  return Tmb(
    tmaInfo: json[r'$'] == null
        ? null
        : TmaInfo.fromJson(json[r'$'] as Map<String, dynamic>),
    ainFirst: (json['ain_first'] as List<dynamic>?)
        ?.map((e) => BinFirst.fromJson(e as Map<String, dynamic>))
        .toList(),
    ainSecond: (json['ain_second'] as List<dynamic>?)
        ?.map((e) => BinSecond.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TmbToJson(Tmb instance) => <String, dynamic>{
      r'$': instance.tmaInfo,
      'ain_first': instance.ainFirst,
      'ain_second': instance.ainSecond,
    };

TmbInfo _$TmbInfoFromJson(Map<String, dynamic> json) {
  return TmbInfo(
    tname: json['tname'] as String?,
    ach: json['ach'] as String?,
    ikn: json['ikn'] as String?,
    bigIkn: json['big_ikn'] as String?,
    dnm: json['dnm'] as String?,
    evtmid: json['evtmid'] as String?,
    bat: json['bat'] as String?,
    tos: json['tos'] as String?,
    won: json['won'] as String?,
  );
}

Map<String, dynamic> _$TmbInfoToJson(TmbInfo instance) => <String, dynamic>{
      'tname': instance.tname,
      'ach': instance.ach,
      'ikn': instance.ikn,
      'big_ikn': instance.bigIkn,
      'dnm': instance.dnm,
      'evtmid': instance.evtmid,
      'bat': instance.bat,
      'tos': instance.tos,
      'won': instance.won,
    };

BinFirst _$BinFirstFromJson(Map<String, dynamic> json) {
  return BinFirst(
    ainInfo: json[r'$'] == null
        ? null
        : BinFirstInfo.fromJson(json[r'$'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BinFirstToJson(BinFirst instance) => <String, dynamic>{
      r'$': instance.ainInfo,
    };

BinFirstInfo _$BinFirstInfoFromJson(Map<String, dynamic> json) {
  return BinFirstInfo(
    rns: json['rns'] as String?,
    fo: json['fo'] as String?,
    bat: json['bat'] as String?,
    ists: json['ists'] as String?,
    wkt: json['wkt'] as String?,
    ovr: json['ovr'] as String?,
    rr: json['rr'] as String?,
    ord: json['ord'] as String?,
    dcl: json['dcl'] as String?,
  );
}

Map<String, dynamic> _$BinFirstInfoToJson(BinFirstInfo instance) =>
    <String, dynamic>{
      'rns': instance.rns,
      'fo': instance.fo,
      'bat': instance.bat,
      'ists': instance.ists,
      'wkt': instance.wkt,
      'ovr': instance.ovr,
      'rr': instance.rr,
      'ord': instance.ord,
      'dcl': instance.dcl,
    };

BinSecond _$BinSecondFromJson(Map<String, dynamic> json) {
  return BinSecond(
    ainInfo: json[r'$'] == null
        ? null
        : BinSecondInfo.fromJson(json[r'$'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BinSecondToJson(BinSecond instance) => <String, dynamic>{
      r'$': instance.ainInfo,
    };

BinSecondInfo _$BinSecondInfoFromJson(Map<String, dynamic> json) {
  return BinSecondInfo(
    rns: json['rns'] as String?,
    fo: json['fo'] as String?,
    bat: json['bat'] as String?,
    ists: json['ists'] as String?,
    wkt: json['wkt'] as String?,
    ovr: json['ovr'] as String?,
    rr: json['rr'] as String?,
    ord: json['ord'] as String?,
    dcl: json['dcl'] as String?,
  );
}

Map<String, dynamic> _$BinSecondInfoToJson(BinSecondInfo instance) =>
    <String, dynamic>{
      'rns': instance.rns,
      'fo': instance.fo,
      'bat': instance.bat,
      'ists': instance.ists,
      'wkt': instance.wkt,
      'ovr': instance.ovr,
      'rr': instance.rr,
      'ord': instance.ord,
      'dcl': instance.dcl,
    };
