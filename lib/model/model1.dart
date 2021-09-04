class DisplayScore {
  List<MatchDetails>? matchDetails;

  factory DisplayScore.fromJson(Map<String, dynamic> json) => DisplayScore(
        yellow:
            List<Yellow>.from(json["Yellow"].map((x) => Yellow.fromJson(x))),
        red: List<Map<String, List<String>>>.from(json["Red"].map((x) =>
            Map.from(x).map((k, v) => MapEntry<String, List<String>>(
                k, List<String>.from(v.map((x) => x)))))),
      );

  Map<String, dynamic> toJson() => {
        "Yellow": List<dynamic>.from(yellow!.map((x) => x.toJson())),
        "Red": List<dynamic>.from(red!.map((x) => Map.from(x).map((k, v) =>
            MapEntry<String, dynamic>(
                k, List<dynamic>.from(v.map((x) => x)))))),
      };
}

class MatchDetails {
  MatchInfo? matchInfo;
  List<Event>? event;
  List<VenueInfo>? venue;
  List<Tma>? tma;
  List<Tmb>? tmb;
  List<String>? nts;
}

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

class Event {
  String? seriesName;
  List<EventInfo>? eventInfo;

  Event({this.seriesName, this.eventInfo});
}

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

class Venue {
  String? placeName;
  List<VenueInfo>? venueInfo;

  Venue({this.placeName, this.venueInfo});
}

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

class Tma {
  TmaInfo? tmaInfo;
  List<AinFirst>? ainFirst;
  List<AinSecond>? ainSecond;

  Tma({this.tmaInfo, this.ainFirst, this.ainSecond});
}

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

class AinFirst {
  AinFirstInfo? ainFirstInfo;

  AinFirst({this.ainFirstInfo});
}

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

class AinSecond {
  AinSecondInfo? ainSecondInfo;

  AinSecond({this.ainSecondInfo});
}

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

class Tmb {
  TmaInfo? tmaInfo;
  List<BinFirst>? ainFirst;
  List<BinSecond>? ainSecond;

  Tmb({this.tmaInfo, this.ainFirst, this.ainSecond});
}

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

class BinFirst {
  BinFirstInfo? binFirstInfo;

  BinFirst({this.binFirstInfo});
}

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

class BinSecond {
  BinSecondInfo? binSecondInfo;

  BinSecond({this.binSecondInfo});
}

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
