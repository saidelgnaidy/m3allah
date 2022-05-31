import 'package:flutter/material.dart';
import 'package:m3allah/blocs/postes/state_events.dart';
import 'package:m3allah/blocs/postes/postes_bloc.dart';
import 'package:m3allah/views/videos/video_player_view.dart';

class VideoPageView extends StatefulWidget {
  final List<String> urls;
  const VideoPageView({Key? key, required this.urls}) : super(key: key);

  @override
  State<VideoPageView> createState() => _VideoPageViewState();
}

class _VideoPageViewState extends State<VideoPageView> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => PostesFetchingBloc.of(context).add(const FetchPostes()),
      child: PageView.builder(
        itemCount: widget.urls.length,
        controller: controller,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return VideoPlayerView(url: widget.urls[index]);
        },
      ),
    );
  }
}
