import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m3allah/modle/juz_list_modle/juz_list_modle.dart';
import 'package:m3allah/modle/surah_list/surah_list.dart';

part 'setting_model.freezed.dart';
part 'setting_model.g.dart';

@freezed
class SettingsModel with _$SettingsModel {
  const factory SettingsModel({
    required bool isLight,
    required int fontCode,
    required double fontSize,
    required double lastSurahOffset,
    required SurahList? lastSurah ,
   required double lastJuzOffset,
     JuzList? lastJuz
  }) = _SettingsModel;
  factory SettingsModel.fromJson(Map<String, dynamic> json) => _$SettingsModelFromJson(json);
}

/// run this
// flutter pub run build_runner watch --delete-conflicting-outputs
