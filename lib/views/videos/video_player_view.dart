import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/video_player/state_events.dart';
import 'package:m3allah/blocs/video_player/video_player.dart';

class VideoPlayerView extends StatelessWidget {
  final String url;
  const VideoPlayerView({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VideoPlayerBloc()
        ..add(VideoPlayerEvent.init(url: url))
        ..add(const VideoPlayerEvent.addListener()),
      child: BlocBuilder<VideoPlayerBloc, VideoPlayerState>(
        builder: (context, state) {
          return state.map(
            loading: (_) => const Center(child: CircularProgressIndicator.adaptive()),
            loaded: (value) => Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
                  onTap: () => VideoPlayerBloc.of(context).add(const VideoPlayerEvent.togglePlaye()),
                  child: Column(
                    children: [
                      if (value.controller.value.isInitialized)
                        AspectRatio(
                          aspectRatio: VideoPlayerBloc.of(context).controller.value.aspectRatio,
                          child: LimitedBox(child: CachedVideoPlayer(VideoPlayerBloc.of(context).controller)),
                        ),
                      //if (value.controller.value.isInitialized)
                      Slider(
                        value: value.position,
                        max: value.duration,
                        min: 0,
                        onChangeEnd: (value) {
                          VideoPlayerBloc.of(context).add(VideoPlayerEvent.seekEnd(value: value));
                        },
                        onChangeStart: (value) {
                          VideoPlayerBloc.of(context).add(VideoPlayerEvent.seekStart(value: value));
                        },
                        onChanged: (value) {
                          VideoPlayerBloc.of(context).add(VideoPlayerEvent.seeking(value: value));
                        },
                      ),
                    ],
                  ),
                ),
                if (!value.controller.value.isPlaying && value.controller.value.isInitialized)
                  IgnorePointer(
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.grey.shade200.withOpacity(.5),
                      size: 80,
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
