part of 'model.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DisplayScore {
  List<MatchDetails>? matchDetails;

  DisplayScore({this.matchDetails});

  factory DisplayScore.fromJson(Map<String, dynamic> json) =>
      _$DisplayScoreFromJson(json);

  Map<String, dynamic> toJson() => _$DisplayScoreToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MatchDetails {
  MatchInfo? matchInfo;
  List<Event>? event;
  List<VenueInfo>? venue;
  List<Tma>? tma;
  List<Tmb>? tmb;
  List<String>? nts;
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
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Event {
  @JsonKey(name: "_")
  String? seriesName;
  @JsonKey(name: "\$")
  List<EventInfo>? eventInfo;
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
}

//vanue

@JsonSerializable(fieldRename: FieldRename.snake)
class Venue {
  @JsonKey(name: "_")
  String? placeName;
  @JsonKey(name: "\$")
  List<VenueInfo>? venueInfo;

  Venue({this.placeName, this.venueInfo});
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
}

//tma

@JsonSerializable(fieldRename: FieldRename.snake)
class Tma {
  @JsonKey(name: "\$")
  TmaInfo? tmaInfo;
  List<AinFirst>? ainFirst;
  List<AinSecond>? ainSecond;

  Tma({this.tmaInfo, this.ainFirst, this.ainSecond});
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
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AinFirst {
  @JsonKey(name: "\$")
  AinFirstInfo? ainFirstInfo;

  AinFirst({this.ainFirstInfo});
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
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AinSecond {
  @JsonKey(name: "\$")
  AinSecondInfo? ainInfo;

  AinSecond({this.ainInfo});
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
}

//tmb

@JsonSerializable(fieldRename: FieldRename.snake)
class Tmb {
  @JsonKey(name: "\$")
  TmaInfo? tmaInfo;
  List<BinFirst>? ainFirst;
  List<BinSecond>? ainSecond;

  Tmb({this.tmaInfo, this.ainFirst, this.ainSecond});
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
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BinFirst {
  @JsonKey(name: "\$")
  BinFirstInfo? ainInfo;

  BinFirst({this.ainInfo});
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
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BinSecond {
  @JsonKey(name: "\$")
  BinSecondInfo? ainInfo;

  BinSecond({this.ainInfo});
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
}
