import 'package:json_annotation/json_annotation.dart';

part "match_list.g.dart";

@JsonSerializable(fieldRename: FieldRename.snake)
class CirResult {
  List<Match>? match = [];

  CirResult({this.match});

  factory CirResult.fromJson(Map<String, dynamic> json) =>
      _$CirResultFromJson(json);

  Map<String, dynamic> toJson() => _$CirResultToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Match {
  List<dynamic>? description = [];

  Match({this.description});

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);

  Map<String, dynamic> toJson() => _$MatchToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Description {
  String? id;
  String? currSts;
  String? gmt_dt;
  String? local_dt;
  String? rxo;
  String? mxo;
  String? typ;
  String? ord;
  String? lvl;
  String? sts;
  String? dt;
  String? end_dt;
  String? tday;
  String? tssn;

  Description(
      {this.id,
      this.currSts,
      this.gmt_dt,
      this.local_dt,
      this.rxo,
      this.mxo,
      this.typ,
      this.ord,
      this.lvl,
      this.sts,
      this.dt,
      this.end_dt,
      this.tday,
      this.tssn});

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$DescriptionToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Evt {}

@JsonSerializable(fieldRename: FieldRename.snake)
class Vnu {}

@JsonSerializable(fieldRename: FieldRename.snake)
class Tma {}

@JsonSerializable(fieldRename: FieldRename.snake)
class Tmb {}

@JsonSerializable(fieldRename: FieldRename.snake)
class Nts {}
