// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) {
  return Model(
    date: json['date'] as String,
    tradeCode: json['tradeCode'] as String,
    high: json['high'] as String,
    low: json['low'] as String,
    open: json['open'] as String,
    close: json['close'] as String,
    volume: json['volume'] as String,
  );
}

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'date': instance.date,
      'tradeCode': instance.tradeCode,
      'high': instance.high,
      'low': instance.low,
      'open': instance.open,
      'close': instance.close,
      'volume': instance.volume,
    };
