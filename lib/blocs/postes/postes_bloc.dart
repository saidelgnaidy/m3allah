import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m3allah/blocs/postes/services.dart';
import 'package:m3allah/blocs/postes/state_events.dart';

class PostesFetchingBloc extends Bloc<PostesFetchingEvent, PostesFetchingState> {
  PostesFetchingBloc() : super(const PostesFetchingState.initial()) {
    on<FetchPostes>(_getVideos);
  }

  static PostesFetchingBloc of(BuildContext context) {
    return BlocProvider.of<PostesFetchingBloc>(context);
  }

  final DP _dp = DP();
  List<String> urls = [];

  FutureOr<void> _getVideos(FetchPostes event, Emitter<PostesFetchingState> emit) async {
    emit(const PostesFetchingState.loading());
    try {
      urls = await _dp.getPosts;
      emit(PostesFetchingState.loaded(urls));
    } catch (e) {
      emit(const PostesFetchingState.error('تأكد من أتصالك و حاول مجدداً'));
    }
  }
}
