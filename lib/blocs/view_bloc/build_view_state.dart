// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m3allah/modle/azkar/azkar_model.dart';
part 'build_view_state.freezed.dart';

@freezed
class BuildViewState with _$BuildViewState {
  const factory BuildViewState.initial() = _BuildViewStateIinitial;
  const factory BuildViewState.quran({required int initTap}) = _BuildViewStateQuran;
  const factory BuildViewState.azkar({required List<AzkarList> list}) = _BuildViewStateAzkar;
  const factory BuildViewState.readSurah() = _BuildViewStateReadSurah;
  const factory BuildViewState.sebha() = _BuildViewStateSebha;
  const factory BuildViewState.bookmarks() = _BuildViewStateBookmarks;
  const factory BuildViewState.videos() = _BuildViewStateVideos;
}

/// run this
// flutter pub run build_runner watch --delete-conflicting-outputs
