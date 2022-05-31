// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsModel _$$_SettingsModelFromJson(Map<String, dynamic> json) =>
    _$_SettingsModel(
      isLight: json['isLight'] as bool,
      fontCode: json['fontCode'] as int,
      fontSize: (json['fontSize'] as num).toDouble(),
      lastSurahOffset: (json['lastSurahOffset'] as num).toDouble(),
      lastSurah: json['lastSurah'] == null
          ? null
          : SurahList.fromJson(json['lastSurah'] as Map<String, dynamic>),
      lastJuzOffset: (json['lastJuzOffset'] as num).toDouble(),
      lastJuz: json['lastJuz'] == null
          ? null
          : JuzList.fromJson(json['lastJuz'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SettingsModelToJson(_$_SettingsModel instance) =>
    <String, dynamic>{
      'isLight': instance.isLight,
      'fontCode': instance.fontCode,
      'fontSize': instance.fontSize,
      'lastSurahOffset': instance.lastSurahOffset,
      'lastSurah': instance.lastSurah,
      'lastJuzOffset': instance.lastJuzOffset,
      'lastJuz': instance.lastJuz,
    };
