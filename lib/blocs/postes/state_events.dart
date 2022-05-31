// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
part 'state_events.freezed.dart';

@freezed
class PostesFetchingEvent with _$PostesFetchingEvent {
  const factory PostesFetchingEvent.get() = FetchPostes;
}

@freezed
class PostesFetchingState with _$PostesFetchingState {
  const factory PostesFetchingState.initial() = _PostesPlayerStateInitial;
  const factory PostesFetchingState.loading() = _PostesPlayerStateLoading;
  const factory PostesFetchingState.loaded(List<String> urls) = _PostesPlayerStateLoaded;
  const factory PostesFetchingState.error(String error) = _PostesPlayerStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 