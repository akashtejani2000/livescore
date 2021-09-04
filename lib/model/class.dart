// To parse this JSON data, do
//
//     final matchesIrecent = matchesIrecentFromJson(jsonString);

import 'dart:convert';

MatchesIrecent matchesIrecentFromJson(String str) =>
    MatchesIrecent.fromJson(json.decode(str));

String matchesIrecentToJson(MatchesIrecent data) => json.encode(data.toJson());

class MatchesIrecent {
  MatchesIrecent({
    this.ciRslt,
  });

  CiRslt? ciRslt;

  factory MatchesIrecent.fromJson(Map<String, dynamic> json) => MatchesIrecent(
        ciRslt: CiRslt.fromJson(json["ci_rslt"]),
      );

  Map<String, dynamic> toJson() => {
        "ci_rslt": ciRslt!.toJson(),
      };
}

class CiRslt {
  CiRslt({
    this.mch,
  });

  List<Mch>? mch;

  factory CiRslt.fromJson(Map<String, dynamic> json) => CiRslt(
        mch: List<Mch>.from(json["mch"].map((x) => Mch.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "mch": List<dynamic>.from(mch!.map((x) => x.toJson())),
      };
}

class Mch {
  Mch({
    this.empty,
    this.evt,
    this.vnu,
    this.tma,
    this.tmb,
    this.nts,
  });

  MchClass? empty;
  List<EvtElement>? evt;
  List<VnuElement>? vnu;
  List<TmaElement>? tma;
  List<Tmb>? tmb;
  List<String>? nts;

  factory Mch.fromJson(Map<String, dynamic> json) => Mch(
        empty: MchClass.fromJson(json["\u0024"]),
        evt: List<EvtElement>.from(
            json["evt"].map((x) => EvtElement.fromJson(x))),
        vnu: List<VnuElement>.from(
            json["vnu"].map((x) => VnuElement.fromJson(x))),
        tma: List<TmaElement>.from(
            json["tma"].map((x) => TmaElement.fromJson(x))),
        tmb: List<Tmb>.from(json["tmb"].map((x) => Tmb.fromJson(x))),
        nts: List<String>.from(json["nts"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "\u0024": empty!.toJson(),
        "evt": List<dynamic>.from(evt!.map((x) => x.toJson())),
        "vnu": List<dynamic>.from(vnu!.map((x) => x.toJson())),
        "tma": List<dynamic>.from(tma!.map((x) => x.toJson())),
        "tmb": List<dynamic>.from(tmb!.map((x) => x.toJson())),
        "nts": List<dynamic>.from(nts!.map((x) => x)),
      };
}

class MchClass {
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

  String? id;
  CurrSts? currSts;
  String? gmtDt;
  String? localDt;
  String? rxo;
  String? mxo;
  Typ? typ;
  String? ord;
  PurpleLvl? lvl;
  Sts? sts;
  String? dt;
  String? endDt;
  String? tday;
  String? tssn;

  factory MchClass.fromJson(Map<String, dynamic> json) => MchClass(
        id: json["id"],
        currSts: currStsValues.map![json["curr_sts"]],
        gmtDt: json["gmt_dt"],
        localDt: json["local_dt"],
        rxo: json["rxo"],
        mxo: json["mxo"],
        typ: typValues.map![json["typ"]],
        ord: json["ord"],
        lvl: purpleLvlValues.map![json["lvl"]],
        sts: stsValues.map![json["sts"]],
        dt: json["dt"],
        endDt: json["end_dt"],
        tday: json["tday"],
        tssn: json["tssn"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "curr_sts": currStsValues.reverse![currSts],
        "gmt_dt": gmtDt,
        "local_dt": localDt,
        "rxo": rxo,
        "mxo": mxo,
        "typ": typValues.reverse![typ],
        "ord": ord,
        "lvl": purpleLvlValues.reverse![lvl],
        "sts": stsValues.reverse![sts],
        "dt": dt,
        "end_dt": endDt,
        "tday": tday,
        "tssn": tssn,
      };
}

enum CurrSts { NORMAL_PLAY }

final currStsValues = EnumValues({"normal_play": CurrSts.NORMAL_PLAY});

enum PurpleLvl { GROUP }

final purpleLvlValues = EnumValues({"Group": PurpleLvl.GROUP});

enum Sts { LIVE, PAST }

final stsValues = EnumValues({"live": Sts.LIVE, "past": Sts.PAST});

enum Typ { TEST, ODI, T20_I, T20 }

final typValues = EnumValues(
    {"ODI": Typ.ODI, "T20": Typ.T20, "T20I": Typ.T20_I, "Test": Typ.TEST});

class EvtElement {
  EvtElement({
    this.evt,
    this.empty,
  });

  String? evt;
  Evt? empty;

  factory EvtElement.fromJson(Map<String, dynamic> json) => EvtElement(
        evt: json["_"],
        empty: Evt.fromJson(json["\u0024"]),
      );

  Map<String, dynamic> toJson() => {
        "_": evt,
        "\u0024": empty!.toJson(),
      };
}

class Evt {
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

  String? cd;
  WonEnum? lvl;
  Sts? sts;
  String? id;
  String? ikn;
  Cat? cat;
  String? sdt;
  String? edt;

  factory Evt.fromJson(Map<String, dynamic> json) => Evt(
        cd: json["cd"],
        lvl: wonEnumValues.map![json["lvl"]],
        sts: stsValues.map![json["sts"]],
        id: json["id"],
        ikn: json["ikn"],
        cat: catValues.map![json["cat"]],
        sdt: json["sdt"],
        edt: json["edt"],
      );

  Map<String, dynamic> toJson() => {
        "cd": cd,
        "lvl": wonEnumValues.reverse![lvl],
        "sts": stsValues.reverse![sts],
        "id": id,
        "ikn": ikn,
        "cat": catValues.reverse![cat],
        "sdt": sdt,
        "edt": edt,
      };
}

enum Cat { SERIES, TOURNAMENT }

final catValues =
    EnumValues({"series": Cat.SERIES, "tournament": Cat.TOURNAMENT});

enum WonEnum { N_A, WON, LOST }

final wonEnumValues =
    EnumValues({"lost": WonEnum.LOST, "n.a": WonEnum.N_A, "won": WonEnum.WON});

class TmaElement {
  TmaElement({
    this.empty,
    this.ain1,
    this.ain2,
    this.tma,
  });

  Tma? empty;
  List<Ain1Element>? ain1;
  List<Ain1Element>? ain2;
  String? tma;

  factory TmaElement.fromJson(Map<String, dynamic> json) => TmaElement(
        empty: Tma.fromJson(json["\u0024"]),
        ain1: json["ain1"] == null
            ? null
            : List<Ain1Element>.from(
                json["ain1"].map((x) => Ain1Element.fromJson(x))),
        ain2: json["ain2"] == null
            ? null
            : List<Ain1Element>.from(
                json["ain2"].map((x) => Ain1Element.fromJson(x))),
        tma: json["_"] == null ? null : json["_"],
      );

  Map<String, dynamic> toJson() => {
        "\u0024": empty!.toJson(),
        "ain1": ain1 == null
            ? null
            : List<dynamic>.from(ain1!.map((x) => x.toJson())),
        "ain2": ain2 == null
            ? null
            : List<dynamic>.from(ain2!.map((x) => x.toJson())),
        "_": tma == null ? null : tma,
      };
}

class Ain1Element {
  Ain1Element({
    this.empty,
  });

  Ain1? empty;

  factory Ain1Element.fromJson(Map<String, dynamic> json) => Ain1Element(
        empty: Ain1.fromJson(json["\u0024"]),
      );

  Map<String, dynamic> toJson() => {
        "\u0024": empty!.toJson(),
      };
}

class Ain1 {
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

  String? rns;
  String? fo;
  Bat? bat;
  Ists? ists;
  String? wkt;
  String? ovr;
  String? rr;
  String? ord;
  String? dcl;

  factory Ain1.fromJson(Map<String, dynamic> json) => Ain1(
        rns: json["rns"],
        fo: json["fo"],
        bat: batValues.map![json["bat"]],
        ists: istsValues.map![json["ists"]],
        wkt: json["wkt"],
        ovr: json["ovr"],
        rr: json["rr"],
        ord: json["ord"],
        dcl: json["dcl"],
      );

  Map<String, dynamic> toJson() => {
        "rns": rns,
        "fo": fo,
        "bat": batValues.reverse![bat],
        "ists": istsValues.reverse![ists],
        "wkt": wkt,
        "ovr": ovr,
        "rr": rr,
        "ord": ord,
        "dcl": dcl,
      };
}

enum Bat { YES, NO }

final batValues = EnumValues({"no": Bat.NO, "yes": Bat.YES});

enum Ists { ONGOING, COMPLETED, N_A }

final istsValues = EnumValues(
    {"completed": Ists.COMPLETED, "n.a": Ists.N_A, "ongoing": Ists.ONGOING});

class Tma {
  Tma({
    this.tname,
    this.ach,
    this.ikn,
    this.bigIkn,
    this.dnm,
    this.evtmid,
    this.bat,
    this.tos,
    this.won,
    this.ists,
    this.rns,
    this.wkt,
    this.ovr,
    this.rr,
  });

  String? tname;
  String? ach;
  String? ikn;
  String? bigIkn;
  String? dnm;
  String? evtmid;
  Bat? bat;
  Bat? tos;
  WonEnum? won;
  Ists? ists;
  String? rns;
  String? wkt;
  String? ovr;
  String? rr;

  factory Tma.fromJson(Map<String, dynamic> json) => Tma(
        tname: json["tname"],
        ach: json["ach"],
        ikn: json["ikn"],
        bigIkn: json["big_ikn"],
        dnm: json["dnm"],
        evtmid: json["evtmid"],
        bat: batValues.map![json["bat"]],
        tos: batValues.map![json["tos"]],
        won: wonEnumValues.map![json["won"]],
        ists: json["ists"] == null ? null : istsValues.map![json["ists"]],
        rns: json["rns"] == null ? null : json["rns"],
        wkt: json["wkt"] == null ? null : json["wkt"],
        ovr: json["ovr"] == null ? null : json["ovr"],
        rr: json["rr"] == null ? null : json["rr"],
      );

  Map<String, dynamic> toJson() => {
        "tname": tname,
        "ach": ach,
        "ikn": ikn,
        "big_ikn": bigIkn,
        "dnm": dnm,
        "evtmid": evtmid,
        "bat": batValues.reverse![bat],
        "tos": batValues.reverse![tos],
        "won": wonEnumValues.reverse![won],
        "ists": ists == null ? null : istsValues.reverse![ists],
        "rns": rns == null ? null : rns,
        "wkt": wkt == null ? null : wkt,
        "ovr": ovr == null ? null : ovr,
        "rr": rr == null ? null : rr,
      };
}

class Tmb {
  Tmb({
    this.empty,
    this.bin1,
    this.bin2,
    this.tmb,
  });

  Tma? empty;
  List<Ain1Element>? bin1;
  List<Ain1Element>? bin2;
  String? tmb;

  factory Tmb.fromJson(Map<String, dynamic> json) => Tmb(
        empty: Tma.fromJson(json["\u0024"]),
        bin1: json["bin1"] == null
            ? null
            : List<Ain1Element>.from(
                json["bin1"].map((x) => Ain1Element.fromJson(x))),
        bin2: json["bin2"] == null
            ? null
            : List<Ain1Element>.from(
                json["bin2"].map((x) => Ain1Element.fromJson(x))),
        tmb: json["_"] == null ? null : json["_"],
      );

  Map<String, dynamic> toJson() => {
        "\u0024": empty!.toJson(),
        "bin1": bin1 == null
            ? null
            : List<dynamic>.from(bin1!.map((x) => x.toJson())),
        "bin2": bin2 == null
            ? null
            : List<dynamic>.from(bin2!.map((x) => x.toJson())),
        "_": tmb == null ? null : tmb,
      };
}

class VnuElement {
  VnuElement({
    this.vnu,
    this.empty,
  });

  String? vnu;
  Vnu? empty;

  factory VnuElement.fromJson(Map<String, dynamic> json) => VnuElement(
        vnu: json["_"],
        empty: Vnu.fromJson(json["\u0024"]),
      );

  Map<String, dynamic> toJson() => {
        "_": vnu,
        "\u0024": empty!.toJson(),
      };
}

class Vnu {
  Vnu({
    this.id,
    this.lat,
    this.lon,
    this.ikn,
    this.city,
    this.ctry,
  });

  String? id;
  String? lat;
  String? lon;
  String? ikn;
  String? city;
  String? ctry;

  factory Vnu.fromJson(Map<String, dynamic> json) => Vnu(
        id: json["id"],
        lat: json["lat"],
        lon: json["lon"],
        ikn: json["ikn"],
        city: json["city"],
        ctry: json["ctry"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "lat": lat,
        "lon": lon,
        "ikn": ikn,
        "city": city,
        "ctry": ctry,
      };
}

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
      return reverseMap;
    }
  }
}
