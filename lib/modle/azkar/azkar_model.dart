import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'azkar_model.freezed.dart';
part 'azkar_model.g.dart';

List<AzkarList> azkarListFromJson(String str) => List<AzkarList>.from(json.decode(str).map((x) => AzkarList.fromJson(x)));

String azkarListToJson(List<AzkarList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
 class AzkarList with _$AzkarList {
  const factory AzkarList({
    required String category,
    required String count  ,
    required String description,
    required String reference,
    required String zekr,
  }) = _AzkarList;

  factory AzkarList.fromJson(Map<String, dynamic> json) => _$AzkarListFromJson(json);
}

