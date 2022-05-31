import 'dart:async';

import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/video_player/state_events.dart';

class VideoPlayerBloc extends Bloc<VideoPlayerEvent, VideoPlayerState> {
  VideoPlayerBloc() : super(const VideoPlayerState.loading()) {
    on<VideoPlayerInit>(_initPlayer);
    on<VideoPlayerSeeking>(_onChanged);
    on<VideoPlayerSeekEnd>(_onChangeEnd);
    on<VideoPlayerToggle>(_togglePlayer);
    on<VideoPlayerSeekStart>(_onChangeStart);
    on<VideoPlayerAddListener>(_addListener);
  }

  static VideoPlayerBloc of(BuildContext context) {
    return BlocProvider.of<VideoPlayerBloc>(context);
  }

  late CachedVideoPlayerController controller;
  late double duration, position = 0;
  String error = '';
  Timer timer = Timer(const Duration(milliseconds: 500), () {});
  bool seeking = false;

  FutureOr<void> _initPlayer(VideoPlayerInit event, Emitter<VideoPlayerState> emit) async {
    controller = CachedVideoPlayerController.network(event.url);
    await controller.initialize().then(
      (_) {
        controller.setLooping(true);
        controller.play();
        duration = controller.value.duration.inSeconds.toDouble();
        error = '';
      },
    ).onError((error, stackTrace) {
      error = "Can't play video !";
    });
    emit(VideoPlayerState.loaded(controller: controller, duration: duration, position: position, isPlaying: controller.value.isPlaying));
  }

  FutureOr<void> _addListener(VideoPlayerAddListener event, Emitter<VideoPlayerState> emitt) async {
    controller.addListener(() {
      if ((controller.value.isPlaying && !timer.isActive) && !seeking) {
        controller.position.then((value) {
          position = value != null ? value.inSeconds.toDouble() : 0.0;
          timer = Timer(const Duration(milliseconds: 500), () {});
        }).whenComplete(() {
          emit(VideoPlayerState.loaded(controller: controller, duration: duration, position: position, isPlaying: controller.value.isPlaying));
        });
      }
    });
  }

  FutureOr<void> _togglePlayer(VideoPlayerToggle event, Emitter<VideoPlayerState> emit) {
    controller.value.isPlaying ? controller.pause() : controller.play();
    emit(VideoPlayerState.loaded(controller: controller, duration: duration, position: position, isPlaying: controller.value.isPlaying));
  }

  FutureOr<void> _onChanged(VideoPlayerSeeking event, Emitter<VideoPlayerState> emit) {
    position = event.value;
    emit(VideoPlayerState.loaded(controller: controller, duration: duration, position: position, isPlaying: controller.value.isPlaying));
  }

  FutureOr<void> _onChangeEnd(VideoPlayerSeekEnd event, Emitter<VideoPlayerState> emit) {
    controller.seekTo(Duration(seconds: event.value.toInt()));
    seeking = false;
    controller.play();
    emit(VideoPlayerState.loaded(controller: controller, duration: duration, position: position, isPlaying: controller.value.isPlaying));
  }

  FutureOr<void> _onChangeStart(VideoPlayerSeekStart event, Emitter<VideoPlayerState> emit) {
    seeking = true;
  }

  @override
  Future<void> close() {
    controller.dispose();
    timer.cancel();
    return super.close();
  }
}
