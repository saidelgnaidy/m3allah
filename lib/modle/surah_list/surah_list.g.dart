// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'surah_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurahList _$$_SurahListFromJson(Map<String, dynamic> json) => _$_SurahList(
      place: json['place'] as String,
      type: json['type'] as String,
      count: json['count'] as int,
      title: json['title'] as String,
      titleAr: json['titleAr'] as String,
      index: json['index'] as String,
      pages: json['pages'] as String,
      juz: (json['juz'] as List<dynamic>)
          .map((e) => Juz.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SurahListToJson(_$_SurahList instance) =>
    <String, dynamic>{
      'place': instance.place,
      'type': instance.type,
      'count': instance.count,
      'title': instance.title,
      'titleAr': instance.titleAr,
      'index': instance.index,
      'pages': instance.pages,
      'juz': instance.juz,
    };

_$_Verse _$$_VerseFromJson(Map<String, dynamic> json) => _$_Verse(
      start: json['start'] as String,
      end: json['end'] as String,
    );

Map<String, dynamic> _$$_VerseToJson(_$_Verse instance) => <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

_$_Juz _$$_JuzFromJson(Map<String, dynamic> json) => _$_Juz(
      index: json['index'] as String,
      verse: JuzVerse.fromJson(json['verse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_JuzToJson(_$_Juz instance) => <String, dynamic>{
      'index': instance.index,
      'verse': instance.verse,
    };

_$_JuzVerse _$$_JuzVerseFromJson(Map<String, dynamic> json) => _$_JuzVerse(
      start: json['start'] as String,
      end: json['end'] as String,
    );

Map<String, dynamic> _$$_JuzVerseToJson(_$_JuzVerse instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };
