import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/postes/state_events.dart';
import 'package:m3allah/blocs/postes/postes_bloc.dart';
import 'package:m3allah/views/videos/video_page_view.dart';

class VideosView extends StatelessWidget {
  const VideosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostesFetchingBloc, PostesFetchingState>(
      builder: (context, state) {
        return state.when(
          loaded: (value) => VideoPageView(urls: value),
          error: (error) => Center(child: Text(error.toString())),
          loading: () => const Center(
            child: LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.blue),
            ),
          ),
          initial: () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
