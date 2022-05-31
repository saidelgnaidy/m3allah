import 'package:cached_video_player/cached_video_player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'state_events.freezed.dart';

@freezed
class VideoPlayerEvent with _$VideoPlayerEvent {
  const factory VideoPlayerEvent.init({required String url}) = VideoPlayerInit;
  const factory VideoPlayerEvent.addListener() = VideoPlayerAddListener;
  const factory VideoPlayerEvent.togglePlaye() = VideoPlayerToggle;
  const factory VideoPlayerEvent.seeking({required double value}) = VideoPlayerSeeking;
  const factory VideoPlayerEvent.seekStart({required double value}) = VideoPlayerSeekStart;
  const factory VideoPlayerEvent.seekEnd({required double value}) = VideoPlayerSeekEnd;
}

@freezed
class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState.loading() = _VideoPlayerStateLoading;
  const factory VideoPlayerState.loaded({required CachedVideoPlayerController controller, required double duration, required double position , required bool isPlaying}) =
      _VideoPlayerStateLoaded;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 