part of 'model.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MatchesIrecent {
  List<ciRslt> ciresult;

  MatchesIrecent({required this.ciresult});

  factory MatchesIrecent.fromJson(Map<String, dynamic> json) =>
      _$MatchesIrecentFromJson(json);

  Map<String, dynamic> toJson() => _$MatchesIrecentToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ciRslt {
  List<Mch>? mch;

  ciRslt({this.mch});

  factory ciRslt.fromJson(Map<String, dynamic> json) => _$ciRsltFromJson(json);

  Map<String, dynamic> toJson() => _$ciRsltToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Mch {
  MchClass? empty;
  List<EvtElement>? evt;
  List<VnuElement>? vnu;
  List<TmaElement>? tma;
  List<Tmb>? tmb;
  List<String>? nts;

  Mch({
    this.empty,
    this.evt,
    this.vnu,
    this.tma,
    this.tmb,
    this.nts,
  });

  factory Mch.fromJson(Map<String, dynamic> json) => _$MchFromJson(json);

  Map<String, dynamic> toJson() => _$MchToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MchClass {
  String? id;
  String? currSts;
  String? gmtDt;
  String? localDt;
  String? rxo;
  String? mxo;
  String? typ;
  String? ord;
  String? lvl;
  String? sts;
  String? dt;
  String? endDt;
  String? tday;
  String? tssn;

  MchClass({
    this.id,
    this.currSts,
    this.gmtDt,
    this.localDt,
    this.rxo,
    this.mxo,
    this.typ,
    this.ord,
    this.lvl,
    this.sts,
    this.dt,
    this.endDt,
    this.tday,
    this.tssn,
  });

  factory MchClass.fromJson(Map<String, dynamic> json) =>
      _$MchClassFromJson(json);

  Map<String, dynamic> toJson() => _$MchClassToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class EvtElement {
  String? evt;
  Evt? empty;

  EvtElement({
    this.evt,
    this.empty,
  });

  factory EvtElement.fromJson(Map<String, dynamic> json) =>
      _$EvtElementFromJson(json);

  Map<String, dynamic> toJson() => _$EvtElementToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Evt {
  String? cd;
  String? lvl;
  String? sts;
  String? id;
  String? ikn;
  String? cat;
  String? sdt;
  String? edt;

  Evt({
    this.cd,
    this.lvl,
    this.sts,
    this.id,
    this.ikn,
    this.cat,
    this.sdt,
    this.edt,
  });

  factory Evt.fromJson(Map<String, dynamic> json) => _$EvtFromJson(json);

  Map<String, dynamic> toJson() => _$EvtToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TmaElement {
  String? tma;
  Tma? empty;
  List<Ain1Element>? ain1;
  List<Ain1Element>? ain2;

  TmaElement({
    this.tma,
    this.empty,
    this.ain1,
    this.ain2,
  });

  factory TmaElement.fromJson(Map<String, dynamic> json) =>
      _$TmaElementFromJson(json);

  Map<String, dynamic> toJson() => _$TmaElementToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Ain1Element {
  Ain1? empty;

  Ain1Element({
    this.empty,
  });

  factory Ain1Element.fromJson(Map<String, dynamic> json) =>
      _$Ain1ElementFromJson(json);

  Map<String, dynamic> toJson() => _$Ain1ElementToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Ain1 {
  String? rns;
  String? fo;
  String? bat;
  String? ists;
  String? wkt;
  String? ovr;
  String? rr;
  String? ord;
  String? dcl;

  Ain1({
    this.rns,
    this.fo,
    this.bat,
    this.ists,
    this.wkt,
    this.ovr,
    this.rr,
    this.ord,
    this.dcl,
  });

  factory Ain1.fromJson(Map<String, dynamic> json) => _$Ain1FromJson(json);

  Map<String, dynamic> toJson() => _$Ain1ToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Tma {
  String? ach;
  String? tname;
  String? ists;
  String? ikn;
  String? bigIkn;
  String? dnm;
  String? evtmid;
  String? rns;
  String? wkt;
  String? ovr;
  String? rr;
  String? bat;
  String? tos;
  String? won;

  Tma({
    this.ach,
    this.tname,
    this.ists,
    this.ikn,
    this.bigIkn,
    this.dnm,
    this.evtmid,
    this.rns,
    this.wkt,
    this.ovr,
    this.rr,
    this.bat,
    this.tos,
    this.won,
  });

  factory Tma.fromJson(Map<String, dynamic> json) => _$TmaFromJson(json);

  Map<String, dynamic> toJson() => _$TmaToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Tmb {
  String? tmb;
  Tma? empty;
  List<Ain1Element>? bin1;
  List<Ain1Element>? bin2;

  Tmb({
    this.tmb,
    this.empty,
    this.bin1,
    this.bin2,
  });

  factory Tmb.fromJson(Map<String, dynamic> json) => _$TmbFromJson(json);

  Map<String, dynamic> toJson() => _$TmbToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class VnuElement {
  String? vnu;
  Vnu? empty;

  VnuElement({
    this.vnu,
    this.empty,
  });

  factory VnuElement.fromJson(Map<String, dynamic> json) =>
      _$VnuElementFromJson(json);

  Map<String, dynamic> toJson() => _$VnuElementToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Vnu {
  String? id;
  String? lat;
  String? lon;
  String? ikn;
  String? city;
  String? ctry;

  Vnu({
    this.id,
    this.lat,
    this.lon,
    this.ikn,
    this.city,
    this.ctry,
  });

  factory Vnu.fromJson(Map<String, dynamic> json) => _$VnuFromJson(json);

  Map<String, dynamic> toJson() => _$VnuToJson(this);
}
