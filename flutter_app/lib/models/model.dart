import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class Model {
  String date;
  String tradeCode;
  String high;
  String low;
  String open;
  String close;
  String volume;

  Model(
      {this.date,
        this.tradeCode,
        this.high,
        this.low,
        this.open,
        this.close,
        this.volume});

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
  Map<String, dynamic> toJson() => _$ModelToJson(this);

}