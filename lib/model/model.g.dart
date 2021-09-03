// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchesIrecent _$MatchesIrecentFromJson(Map<String, dynamic> json) {
  return MatchesIrecent(
    ciresult: (json['ciresult'] as List<dynamic>)
        .map((e) => ciRslt.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$MatchesIrecentToJson(MatchesIrecent instance) =>
    <String, dynamic>{
      'ciresult': instance.ciresult,
    };

ciRslt _$ciRsltFromJson(Map<String, dynamic> json) {
  return ciRslt(
    mch: (json['mch'] as List<dynamic>?)
        ?.map((e) => Mch.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ciRsltToJson(ciRslt instance) => <String, dynamic>{
      'mch': instance.mch,
    };

Mch _$MchFromJson(Map<String, dynamic> json) {
  return Mch(
    empty: json['empty'] == null
        ? null
        : MchClass.fromJson(json['empty'] as Map<String, dynamic>),
    evt: (json['evt'] as List<dynamic>?)
        ?.map((e) => EvtElement.fromJson(e as Map<String, dynamic>))
        .toList(),
    vnu: (json['vnu'] as List<dynamic>?)
        ?.map((e) => VnuElement.fromJson(e as Map<String, dynamic>))
        .toList(),
    tma: (json['tma'] as List<dynamic>?)
        ?.map((e) => TmaElement.fromJson(e as Map<String, dynamic>))
        .toList(),
    tmb: (json['tmb'] as List<dynamic>?)
        ?.map((e) => Tmb.fromJson(e as Map<String, dynamic>))
        .toList(),
    nts: (json['nts'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$MchToJson(Mch instance) => <String, dynamic>{
      'empty': instance.empty,
      'evt': instance.evt,
      'vnu': instance.vnu,
      'tma': instance.tma,
      'tmb': instance.tmb,
      'nts': instance.nts,
    };

MchClass _$MchClassFromJson(Map<String, dynamic> json) {
  return MchClass(
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

Map<String, dynamic> _$MchClassToJson(MchClass instance) => <String, dynamic>{
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

EvtElement _$EvtElementFromJson(Map<String, dynamic> json) {
  return EvtElement(
    evt: json['evt'] as String?,
    empty: json['empty'] == null
        ? null
        : Evt.fromJson(json['empty'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EvtElementToJson(EvtElement instance) =>
    <String, dynamic>{
      'evt': instance.evt,
      'empty': instance.empty,
    };

Evt _$EvtFromJson(Map<String, dynamic> json) {
  return Evt(
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

Map<String, dynamic> _$EvtToJson(Evt instance) => <String, dynamic>{
      'cd': instance.cd,
      'lvl': instance.lvl,
      'sts': instance.sts,
      'id': instance.id,
      'ikn': instance.ikn,
      'cat': instance.cat,
      'sdt': instance.sdt,
      'edt': instance.edt,
    };

TmaElement _$TmaElementFromJson(Map<String, dynamic> json) {
  return TmaElement(
    tma: json['tma'] as String?,
    empty: json['empty'] == null
        ? null
        : Tma.fromJson(json['empty'] as Map<String, dynamic>),
    ain1: (json['ain1'] as List<dynamic>?)
        ?.map((e) => Ain1Element.fromJson(e as Map<String, dynamic>))
        .toList(),
    ain2: (json['ain2'] as List<dynamic>?)
        ?.map((e) => Ain1Element.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TmaElementToJson(TmaElement instance) =>
    <String, dynamic>{
      'tma': instance.tma,
      'empty': instance.empty,
      'ain1': instance.ain1,
      'ain2': instance.ain2,
    };

Ain1Element _$Ain1ElementFromJson(Map<String, dynamic> json) {
  return Ain1Element(
    empty: json['empty'] == null
        ? null
        : Ain1.fromJson(json['empty'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Ain1ElementToJson(Ain1Element instance) =>
    <String, dynamic>{
      'empty': instance.empty,
    };

Ain1 _$Ain1FromJson(Map<String, dynamic> json) {
  return Ain1(
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

Map<String, dynamic> _$Ain1ToJson(Ain1 instance) => <String, dynamic>{
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

Tma _$TmaFromJson(Map<String, dynamic> json) {
  return Tma(
    ach: json['ach'] as String?,
    tname: json['tname'] as String?,
    ists: json['ists'] as String?,
    ikn: json['ikn'] as String?,
    bigIkn: json['big_ikn'] as String?,
    dnm: json['dnm'] as String?,
    evtmid: json['evtmid'] as String?,
    rns: json['rns'] as String?,
    wkt: json['wkt'] as String?,
    ovr: json['ovr'] as String?,
    rr: json['rr'] as String?,
    bat: json['bat'] as String?,
    tos: json['tos'] as String?,
    won: json['won'] as String?,
  );
}

Map<String, dynamic> _$TmaToJson(Tma instance) => <String, dynamic>{
      'ach': instance.ach,
      'tname': instance.tname,
      'ists': instance.ists,
      'ikn': instance.ikn,
      'big_ikn': instance.bigIkn,
      'dnm': instance.dnm,
      'evtmid': instance.evtmid,
      'rns': instance.rns,
      'wkt': instance.wkt,
      'ovr': instance.ovr,
      'rr': instance.rr,
      'bat': instance.bat,
      'tos': instance.tos,
      'won': instance.won,
    };

Tmb _$TmbFromJson(Map<String, dynamic> json) {
  return Tmb(
    tmb: json['tmb'] as String?,
    empty: json['empty'] == null
        ? null
        : Tma.fromJson(json['empty'] as Map<String, dynamic>),
    bin1: (json['bin1'] as List<dynamic>?)
        ?.map((e) => Ain1Element.fromJson(e as Map<String, dynamic>))
        .toList(),
    bin2: (json['bin2'] as List<dynamic>?)
        ?.map((e) => Ain1Element.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TmbToJson(Tmb instance) => <String, dynamic>{
      'tmb': instance.tmb,
      'empty': instance.empty,
      'bin1': instance.bin1,
      'bin2': instance.bin2,
    };

VnuElement _$VnuElementFromJson(Map<String, dynamic> json) {
  return VnuElement(
    vnu: json['vnu'] as String?,
    empty: json['empty'] == null
        ? null
        : Vnu.fromJson(json['empty'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VnuElementToJson(VnuElement instance) =>
    <String, dynamic>{
      'vnu': instance.vnu,
      'empty': instance.empty,
    };

Vnu _$VnuFromJson(Map<String, dynamic> json) {
  return Vnu(
    id: json['id'] as String?,
    lat: json['lat'] as String?,
    lon: json['lon'] as String?,
    ikn: json['ikn'] as String?,
    city: json['city'] as String?,
    ctry: json['ctry'] as String?,
  );
}

Map<String, dynamic> _$VnuToJson(Vnu instance) => <String, dynamic>{
      'id': instance.id,
      'lat': instance.lat,
      'lon': instance.lon,
      'ikn': instance.ikn,
      'city': instance.city,
      'ctry': instance.ctry,
    };
