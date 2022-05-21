

// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m3allah/modle/quran/surah_model.dart';
part 'quran_player_event.freezed.dart';


@freezed
class QuranPlayerEvent with _$QuranPlayerEvent {
  const factory QuranPlayerEvent.playVers({required int versIndex , required String surahIndex}) = QuranPlayerPlayVers ;
  const factory QuranPlayerEvent.playAll({required int versIndex , required FullSurah surah}) = QuranPlayerPlayAllVers ;
  const factory QuranPlayerEvent.stopVers() = QuranPlayerStopVers ;
  const factory QuranPlayerEvent.cansleSub() = QuranPlayerCancleSup ;
}
@freezed
class QuranPlayerState with _$QuranPlayerState {
  const factory QuranPlayerState.initial({required String nawPlayingPath}) = _QuranPlayerStateInitial ;
  const factory QuranPlayerState.loadingVers() = _QuranPlayerStateLoading ;
  const factory QuranPlayerState.loaded() = _QuranPlayerStateLoaded ;
  const factory QuranPlayerState.error(String error) = _QuranPlayerStateError ;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 

