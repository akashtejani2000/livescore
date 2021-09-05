part of 'model.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CiResult {
  @JsonKey(name: "ci_rslt")
  String? ciResult;

  CiResult({this.ciResult});

  factory CiResult.fromJson(Map<String, dynamic> json) =>
      _$CiResultFromJson(json);

  Map<String, dynamic> toJson() => _$CiResultToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DisplayScore {
  @JsonKey(name: "mch")
  List<MatchDetails>? matchDetails;

  DisplayScore({this.matchDetails});

  factory DisplayScore.fromJson(Map<String, dynamic> json) =>
      _$DisplayScoreFromJson(json);

  Map<String, dynamic> toJson() => _$DisplayScoreToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MatchDetails {
  @JsonKey(name: "\$")
  MatchInfo? matchInfo;
  @JsonKey(name: "evt")
  List<EventData>? event;
  @JsonKey(name: "vnu")
  List<VenueInfo>? venue;
  List<Tma>? tma;
  List<Tmb>? tmb;
  List<String>? nts;

  MatchDetails(
      {this.matchInfo, this.event, this.venue, this.tma, this.tmb, this.nts});

  factory MatchDetails.fromJson(Map<String, dynamic> json) =>
      _$MatchDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$MatchDetailsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MatchInfo {
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

  MatchInfo(
      {this.id,
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
      this.tssn});

  factory MatchInfo.fromJson(Map<String, dynamic> json) =>
      _$MatchInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MatchInfoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class EventData {
  @JsonKey(name: "_")
  String? seriesName;
  @JsonKey(name: "\$")
  List<EventInfo>? eventInfo;

  EventData({this.seriesName, this.eventInfo});

  factory EventData.fromJson(Map<String, dynamic> json) =>
      _$EventDataFromJson(json);

  Map<String, dynamic> toJson() => _$EventDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class EventInfo {
  String? cd;
  String? lvl;
  String? sts;
  String? id;
  String? ikn;
  String? cat;
  String? sdt;
  String? edt;

  EventInfo(
      {this.cd,
      this.lvl,
      this.sts,
      this.id,
      this.ikn,
      this.cat,
      this.sdt,
      this.edt});

  factory EventInfo.fromJson(Map<String, dynamic> json) =>
      _$EventInfoFromJson(json);

  Map<String, dynamic> toJson() => _$EventInfoToJson(this);
}

//vanue

@JsonSerializable(fieldRename: FieldRename.snake)
class Venue {
  @JsonKey(name: "_")
  String? placeName;
  @JsonKey(name: "\$")
  List<VenueInfo>? venueInfo;

  Venue({this.placeName, this.venueInfo});

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);

  Map<String, dynamic> toJson() => _$VenueToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class VenueInfo {
  String? id;
  String? lat;
  String? lon;
  String? ikn;
  String? city;
  String? ctry;

  VenueInfo({this.id, this.lat, this.lon, this.ikn, this.city, this.ctry});

  factory VenueInfo.fromJson(Map<String, dynamic> json) =>
      _$VenueInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VenueInfoToJson(this);
}

//tma

@JsonSerializable(fieldRename: FieldRename.snake)
class Tma {
  @JsonKey(name: "\$")
  TmaInfo? tmaInfo;
  List<AinFirst>? ainFirst;
  List<AinSecond>? ainSecond;

  Tma({this.tmaInfo, this.ainFirst, this.ainSecond});

  factory Tma.fromJson(Map<String, dynamic> json) => _$TmaFromJson(json);

  Map<String, dynamic> toJson() => _$TmaToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TmaInfo {
  String? tname;
  String? ach;
  String? ikn;
  String? bigIkn;
  String? dnm;
  String? evtmid;
  String? bat;
  String? tos;
  String? won;

  TmaInfo(
      {this.tname,
      this.ach,
      this.ikn,
      this.bigIkn,
      this.dnm,
      this.evtmid,
      this.bat,
      this.tos,
      this.won});

  factory TmaInfo.fromJson(Map<String, dynamic> json) =>
      _$TmaInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TmaInfoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AinFirst {
  @JsonKey(name: "\$")
  AinFirstInfo? ainFirstInfo;

  AinFirst({this.ainFirstInfo});

  factory AinFirst.fromJson(Map<String, dynamic> json) =>
      _$AinFirstFromJson(json);

  Map<String, dynamic> toJson() => _$AinFirstToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AinFirstInfo {
  String? rns;
  String? fo;
  String? bat;
  String? ists;
  String? wkt;
  String? ovr;
  String? rr;
  String? ord;
  String? dcl;

  AinFirstInfo(
      {this.rns,
      this.fo,
      this.bat,
      this.ists,
      this.wkt,
      this.ovr,
      this.rr,
      this.ord,
      this.dcl});

  factory AinFirstInfo.fromJson(Map<String, dynamic> json) =>
      _$AinFirstInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AinFirstInfoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AinSecond {
  @JsonKey(name: "\$")
  AinSecondInfo? ainInfo;

  AinSecond({this.ainInfo});

  factory AinSecond.fromJson(Map<String, dynamic> json) =>
      _$AinSecondFromJson(json);

  Map<String, dynamic> toJson() => _$AinSecondToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AinSecondInfo {
  String? rns;
  String? fo;
  String? bat;
  String? ists;
  String? wkt;
  String? ovr;
  String? rr;
  String? ord;
  String? dcl;

  AinSecondInfo(
      {this.rns,
      this.fo,
      this.bat,
      this.ists,
      this.wkt,
      this.ovr,
      this.rr,
      this.ord,
      this.dcl});

  factory AinSecondInfo.fromJson(Map<String, dynamic> json) =>
      _$AinSecondInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AinSecondInfoToJson(this);
}

//tmb

@JsonSerializable(fieldRename: FieldRename.snake)
class Tmb {
  @JsonKey(name: "\$")
  TmaInfo? tmaInfo;
  List<BinFirst>? ainFirst;
  List<BinSecond>? ainSecond;

  Tmb({this.tmaInfo, this.ainFirst, this.ainSecond});

  factory Tmb.fromJson(Map<String, dynamic> json) => _$TmbFromJson(json);

  Map<String, dynamic> toJson() => _$TmbToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TmbInfo {
  String? tname;
  String? ach;
  String? ikn;
  String? bigIkn;
  String? dnm;
  String? evtmid;
  String? bat;
  String? tos;
  String? won;

  TmbInfo(
      {this.tname,
      this.ach,
      this.ikn,
      this.bigIkn,
      this.dnm,
      this.evtmid,
      this.bat,
      this.tos,
      this.won});

  factory TmbInfo.fromJson(Map<String, dynamic> json) =>
      _$TmbInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TmbInfoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BinFirst {
  @JsonKey(name: "\$")
  BinFirstInfo? ainInfo;

  BinFirst({this.ainInfo});

  factory BinFirst.fromJson(Map<String, dynamic> json) =>
      _$BinFirstFromJson(json);

  Map<String, dynamic> toJson() => _$BinFirstToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BinFirstInfo {
  String? rns;
  String? fo;
  String? bat;
  String? ists;
  String? wkt;
  String? ovr;
  String? rr;
  String? ord;
  String? dcl;

  BinFirstInfo(
      {this.rns,
      this.fo,
      this.bat,
      this.ists,
      this.wkt,
      this.ovr,
      this.rr,
      this.ord,
      this.dcl});

  factory BinFirstInfo.fromJson(Map<String, dynamic> json) =>
      _$BinFirstInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BinFirstInfoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BinSecond {
  @JsonKey(name: "\$")
  BinSecondInfo? ainInfo;

  BinSecond({this.ainInfo});

  factory BinSecond.fromJson(Map<String, dynamic> json) =>
      _$BinSecondFromJson(json);

  Map<String, dynamic> toJson() => _$BinSecondToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BinSecondInfo {
  String? rns;
  String? fo;
  String? bat;
  String? ists;
  String? wkt;
  String? ovr;
  String? rr;
  String? ord;
  String? dcl;

  BinSecondInfo(
      {this.rns,
      this.fo,
      this.bat,
      this.ists,
      this.wkt,
      this.ovr,
      this.rr,
      this.ord,
      this.dcl});

  factory BinSecondInfo.fromJson(Map<String, dynamic> json) =>
      _$BinSecondInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BinSecondInfoToJson(this);
}
