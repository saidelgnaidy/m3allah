import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/quran_player/quran_player_event.dart';
import 'package:m3allah/modle/quran/surah_model.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class QuranPlayerBloc extends Bloc<QuranPlayerEvent, QuranPlayerState> {
  final AudioPlayer audioPlayer = AudioPlayer();
  bool playAll = false;
  String lastPlayed = '';
  FullSurah? currentSurah;
  int curentVers = 1;

  final ItemScrollController versScrollCtrl = ItemScrollController();
  final ItemScrollController surahScrollCtrl = ItemScrollController();
  final ItemPositionsListener versPositionsListener = ItemPositionsListener.create();
  final ItemPositionsListener surahPositionsListener = ItemPositionsListener.create();

  QuranPlayerBloc() : super(const QuranPlayerState.initial(nawPlayingPath: '')) {
    _playerStateStream();
    on<QuranPlayerPlayVers>(_playVers);
    on<QuranPlayerStopVers>(_stopVers);
    on<QuranPlayerPlayAllVers>(_playAllVers);
  }

  FutureOr<void> _playVers(QuranPlayerPlayVers event, Emitter<QuranPlayerState> emit) async {
    final String newVers = '${event.surahIndex}/${event.versIndex.toString().padLeft(3, '0')}';
    if (audioPlayer.state == PlayerState.PLAYING && newVers == lastPlayed) {
      emit(const QuranPlayerState.initial(nawPlayingPath: ''));
      audioPlayer.pause();
    } else if (audioPlayer.state == PlayerState.PAUSED && newVers == lastPlayed) {
      emit(QuranPlayerState.initial(nawPlayingPath: newVers));
      audioPlayer.resume();
    } else {
      try {
        audioPlayer.stop();
        emit(QuranPlayerState.initial(nawPlayingPath: newVers));
        lastPlayed = newVers;
        Reference storage = FirebaseStorage.instance.ref().child(newVers + '.mp3');
        var path = await storage.getDownloadURL();
        await audioPlayer.play(path);
      } catch (e) {
        debugPrint('playing audio error : $e');
      }
    }
  }

  _playerStateStream() {
    debugPrint('*** player State Stream listener is active *** ');
    audioPlayer.onPlayerStateChanged.listen((playerState) {
      if (playerState == PlayerState.COMPLETED && !playAll) {
        add(const QuranPlayerEvent.stopVers());
      } else if (playerState == PlayerState.COMPLETED && playAll && curentVers < currentSurah!.count) {
        curentVers++;
        add(QuranPlayerEvent.playVers(surahIndex: currentSurah!.index, versIndex: curentVers));
        debugPrint('scroll to ');
        versScrollCtrl.scrollTo(
          index: curentVers,
          duration: const Duration(milliseconds: 350),
          curve: Curves.ease,
          alignment: .15,
        );
      } else if (playerState == PlayerState.COMPLETED) {
        debugPrint('PlayerState.COMPLETED');

        add(const QuranPlayerEvent.stopVers());
      }
    });
  }

  FutureOr<void> _stopVers(QuranPlayerStopVers event, Emitter<QuranPlayerState> emit) {
    audioPlayer.pause();
    playAll = false;
    emit(const QuranPlayerState.initial(nawPlayingPath: ''));
  }

  FutureOr<void> _playAllVers(QuranPlayerPlayAllVers event, Emitter<QuranPlayerState> emit) {
    playAll = true;
    curentVers = event.versIndex;
    currentSurah = event.surah;

    add(QuranPlayerEvent.playVers(surahIndex: event.surah.index, versIndex: event.versIndex));
  }

  cancelSub() {
    debugPrint('*** Audio player disposed ***');
    audioPlayer.dispose();
  }

  @override
  Future<void> close() {
    cancelSub();
    return super.close();
  }
}
