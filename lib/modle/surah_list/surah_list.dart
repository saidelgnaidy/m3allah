// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'surah_list.freezed.dart';
part 'surah_list.g.dart';


List<SurahList> surahListFromJson(String str) => List<SurahList>.from(json.decode(str).map((x) => SurahList.fromJson(x)));

String surahListToJson(List<SurahList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
 class SurahList with _$SurahList {
  const factory SurahList({
    required String place,
    required String type,
    required int count,
    required String title,
    required String titleAr,
    required String index,
    required String pages,
    required List<Juz> juz,
  }) = _SurahList;

  factory SurahList.fromJson(Map<String, dynamic> json) => _$SurahListFromJson(json);
}


@freezed
 class Verse with _$Verse {
  const factory Verse({
    required String start,
    required String end,
  }) = _Verse;

  factory Verse.fromJson(Map<String, dynamic> json) => _$VerseFromJson(json);
}

@freezed
class Juz with _$Juz {
  const factory Juz({
    required String index,
    required JuzVerse verse,
  }) = _Juz;

  factory Juz.fromJson(Map<String, dynamic> json) => _$JuzFromJson(json);
}
@freezed
class JuzVerse with _$JuzVerse {
  const factory JuzVerse({
    required String start,
    required String end,
  }) = _JuzVerse;

  factory JuzVerse.fromJson(Map<String, dynamic> json) => _$JuzVerseFromJson(json);
}

