// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quran_player_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuranPlayerEventTearOff {
  const _$QuranPlayerEventTearOff();

  QuranPlayerPlayVers playVers(
      {required int versIndex, required String surahIndex}) {
    return QuranPlayerPlayVers(
      versIndex: versIndex,
      surahIndex: surahIndex,
    );
  }

  QuranPlayerPlayAllVers playAll(
      {required int versIndex, required FullSurah surah}) {
    return QuranPlayerPlayAllVers(
      versIndex: versIndex,
      surah: surah,
    );
  }

  QuranPlayerStopVers stopVers() {
    return const QuranPlayerStopVers();
  }

  QuranPlayerCancleSup cansleSub() {
    return const QuranPlayerCancleSup();
  }
}

/// @nodoc
const $QuranPlayerEvent = _$QuranPlayerEventTearOff();

/// @nodoc
mixin _$QuranPlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int versIndex, String surahIndex) playVers,
    required TResult Function(int versIndex, FullSurah surah) playAll,
    required TResult Function() stopVers,
    required TResult Function() cansleSub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int versIndex, String surahIndex)? playVers,
    TResult Function(int versIndex, FullSurah surah)? playAll,
    TResult Function()? stopVers,
    TResult Function()? cansleSub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int versIndex, String surahIndex)? playVers,
    TResult Function(int versIndex, FullSurah surah)? playAll,
    TResult Function()? stopVers,
    TResult Function()? cansleSub,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuranPlayerPlayVers value) playVers,
    required TResult Function(QuranPlayerPlayAllVers value) playAll,
    required TResult Function(QuranPlayerStopVers value) stopVers,
    required TResult Function(QuranPlayerCancleSup value) cansleSub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuranPlayerPlayVers value)? playVers,
    TResult Function(QuranPlayerPlayAllVers value)? playAll,
    TResult Function(QuranPlayerStopVers value)? stopVers,
    TResult Function(QuranPlayerCancleSup value)? cansleSub,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuranPlayerPlayVers value)? playVers,
    TResult Function(QuranPlayerPlayAllVers value)? playAll,
    TResult Function(QuranPlayerStopVers value)? stopVers,
    TResult Function(QuranPlayerCancleSup value)? cansleSub,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranPlayerEventCopyWith<$Res> {
  factory $QuranPlayerEventCopyWith(
          QuranPlayerEvent value, $Res Function(QuranPlayerEvent) then) =
      _$QuranPlayerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuranPlayerEventCopyWithImpl<$Res>
    implements $QuranPlayerEventCopyWith<$Res> {
  _$QuranPlayerEventCopyWithImpl(this._value, this._then);

  final QuranPlayerEvent _value;
  // ignore: unused_field
  final $Res Function(QuranPlayerEvent) _then;
}

/// @nodoc
abstract class $QuranPlayerPlayVersCopyWith<$Res> {
  factory $QuranPlayerPlayVersCopyWith(
          QuranPlayerPlayVers value, $Res Function(QuranPlayerPlayVers) then) =
      _$QuranPlayerPlayVersCopyWithImpl<$Res>;
  $Res call({int versIndex, String surahIndex});
}

/// @nodoc
class _$QuranPlayerPlayVersCopyWithImpl<$Res>
    extends _$QuranPlayerEventCopyWithImpl<$Res>
    implements $QuranPlayerPlayVersCopyWith<$Res> {
  _$QuranPlayerPlayVersCopyWithImpl(
      QuranPlayerPlayVers _value, $Res Function(QuranPlayerPlayVers) _then)
      : super(_value, (v) => _then(v as QuranPlayerPlayVers));

  @override
  QuranPlayerPlayVers get _value => super._value as QuranPlayerPlayVers;

  @override
  $Res call({
    Object? versIndex = freezed,
    Object? surahIndex = freezed,
  }) {
    return _then(QuranPlayerPlayVers(
      versIndex: versIndex == freezed
          ? _value.versIndex
          : versIndex // ignore: cast_nullable_to_non_nullable
              as int,
      surahIndex: surahIndex == freezed
          ? _value.surahIndex
          : surahIndex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuranPlayerPlayVers implements QuranPlayerPlayVers {
  const _$QuranPlayerPlayVers(
      {required this.versIndex, required this.surahIndex});

  @override
  final int versIndex;
  @override
  final String surahIndex;

  @override
  String toString() {
    return 'QuranPlayerEvent.playVers(versIndex: $versIndex, surahIndex: $surahIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuranPlayerPlayVers &&
            const DeepCollectionEquality().equals(other.versIndex, versIndex) &&
            const DeepCollectionEquality()
                .equals(other.surahIndex, surahIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(versIndex),
      const DeepCollectionEquality().hash(surahIndex));

  @JsonKey(ignore: true)
  @override
  $QuranPlayerPlayVersCopyWith<QuranPlayerPlayVers> get copyWith =>
      _$QuranPlayerPlayVersCopyWithImpl<QuranPlayerPlayVers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int versIndex, String surahIndex) playVers,
    required TResult Function(int versIndex, FullSurah surah) playAll,
    required TResult Function() stopVers,
    required TResult Function() cansleSub,
  }) {
    return playVers(versIndex, surahIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int versIndex, String surahIndex)? playVers,
    TResult Function(int versIndex, FullSurah surah)? playAll,
    TResult Function()? stopVers,
    TResult Function()? cansleSub,
  }) {
    return playVers?.call(versIndex, surahIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int versIndex, String surahIndex)? playVers,
    TResult Function(int versIndex, FullSurah surah)? playAll,
    TResult Function()? stopVers,
    TResult Function()? cansleSub,
    required TResult orElse(),
  }) {
    if (playVers != null) {
      return playVers(versIndex, surahIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuranPlayerPlayVers value) playVers,
    required TResult Function(QuranPlayerPlayAllVers value) playAll,
    required TResult Function(QuranPlayerStopVers value) stopVers,
    required TResult Function(QuranPlayerCancleSup value) cansleSub,
  }) {
    return playVers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuranPlayerPlayVers value)? playVers,
    TResult Function(QuranPlayerPlayAllVers value)? playAll,
    TResult Function(QuranPlayerStopVers value)? stopVers,
    TResult Function(QuranPlayerCancleSup value)? cansleSub,
  }) {
    return playVers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuranPlayerPlayVers value)? playVers,
    TResult Function(QuranPlayerPlayAllVers value)? playAll,
    TResult Function(QuranPlayerStopVers value)? stopVers,
    TResult Function(QuranPlayerCancleSup value)? cansleSub,
    required TResult orElse(),
  }) {
    if (playVers != null) {
      return playVers(this);
    }
    return orElse();
  }
}

abstract class QuranPlayerPlayVers implements QuranPlayerEvent {
  const factory QuranPlayerPlayVers(
      {required int versIndex,
      required String surahIndex}) = _$QuranPlayerPlayVers;

  int get versIndex;
  String get surahIndex;
  @JsonKey(ignore: true)
  $QuranPlayerPlayVersCopyWith<QuranPlayerPlayVers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranPlayerPlayAllVersCopyWith<$Res> {
  factory $QuranPlayerPlayAllVersCopyWith(QuranPlayerPlayAllVers value,
          $Res Function(QuranPlayerPlayAllVers) then) =
      _$QuranPlayerPlayAllVersCopyWithImpl<$Res>;
  $Res call({int versIndex, FullSurah surah});
}

/// @nodoc
class _$QuranPlayerPlayAllVersCopyWithImpl<$Res>
    extends _$QuranPlayerEventCopyWithImpl<$Res>
    implements $QuranPlayerPlayAllVersCopyWith<$Res> {
  _$QuranPlayerPlayAllVersCopyWithImpl(QuranPlayerPlayAllVers _value,
      $Res Function(QuranPlayerPlayAllVers) _then)
      : super(_value, (v) => _then(v as QuranPlayerPlayAllVers));

  @override
  QuranPlayerPlayAllVers get _value => super._value as QuranPlayerPlayAllVers;

  @override
  $Res call({
    Object? versIndex = freezed,
    Object? surah = freezed,
  }) {
    return _then(QuranPlayerPlayAllVers(
      versIndex: versIndex == freezed
          ? _value.versIndex
          : versIndex // ignore: cast_nullable_to_non_nullable
              as int,
      surah: surah == freezed
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as FullSurah,
    ));
  }
}

/// @nodoc

class _$QuranPlayerPlayAllVers implements QuranPlayerPlayAllVers {
  const _$QuranPlayerPlayAllVers(
      {required this.versIndex, required this.surah});

  @override
  final int versIndex;
  @override
  final FullSurah surah;

  @override
  String toString() {
    return 'QuranPlayerEvent.playAll(versIndex: $versIndex, surah: $surah)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuranPlayerPlayAllVers &&
            const DeepCollectionEquality().equals(other.versIndex, versIndex) &&
            const DeepCollectionEquality().equals(other.surah, surah));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(versIndex),
      const DeepCollectionEquality().hash(surah));

  @JsonKey(ignore: true)
  @override
  $QuranPlayerPlayAllVersCopyWith<QuranPlayerPlayAllVers> get copyWith =>
      _$QuranPlayerPlayAllVersCopyWithImpl<QuranPlayerPlayAllVers>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int versIndex, String surahIndex) playVers,
    required TResult Function(int versIndex, FullSurah surah) playAll,
    required TResult Function() stopVers,
    required TResult Function() cansleSub,
  }) {
    return playAll(versIndex, surah);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int versIndex, String surahIndex)? playVers,
    TResult Function(int versIndex, FullSurah surah)? playAll,
    TResult Function()? stopVers,
    TResult Function()? cansleSub,
  }) {
    return playAll?.call(versIndex, surah);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int versIndex, String surahIndex)? playVers,
    TResult Function(int versIndex, FullSurah surah)? playAll,
    TResult Function()? stopVers,
    TResult Function()? cansleSub,
    required TResult orElse(),
  }) {
    if (playAll != null) {
      return playAll(versIndex, surah);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuranPlayerPlayVers value) playVers,
    required TResult Function(QuranPlayerPlayAllVers value) playAll,
    required TResult Function(QuranPlayerStopVers value) stopVers,
    required TResult Function(QuranPlayerCancleSup value) cansleSub,
  }) {
    return playAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuranPlayerPlayVers value)? playVers,
    TResult Function(QuranPlayerPlayAllVers value)? playAll,
    TResult Function(QuranPlayerStopVers value)? stopVers,
    TResult Function(QuranPlayerCancleSup value)? cansleSub,
  }) {
    return playAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuranPlayerPlayVers value)? playVers,
    TResult Function(QuranPlayerPlayAllVers value)? playAll,
    TResult Function(QuranPlayerStopVers value)? stopVers,
    TResult Function(QuranPlayerCancleSup value)? cansleSub,
    required TResult orElse(),
  }) {
    if (playAll != null) {
      return playAll(this);
    }
    return orElse();
  }
}

abstract class QuranPlayerPlayAllVers implements QuranPlayerEvent {
  const factory QuranPlayerPlayAllVers(
      {required int versIndex,
      required FullSurah surah}) = _$QuranPlayerPlayAllVers;

  int get versIndex;
  FullSurah get surah;
  @JsonKey(ignore: true)
  $QuranPlayerPlayAllVersCopyWith<QuranPlayerPlayAllVers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranPlayerStopVersCopyWith<$Res> {
  factory $QuranPlayerStopVersCopyWith(
          QuranPlayerStopVers value, $Res Function(QuranPlayerStopVers) then) =
      _$QuranPlayerStopVersCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuranPlayerStopVersCopyWithImpl<$Res>
    extends _$QuranPlayerEventCopyWithImpl<$Res>
    implements $QuranPlayerStopVersCopyWith<$Res> {
  _$QuranPlayerStopVersCopyWithImpl(
      QuranPlayerStopVers _value, $Res Function(QuranPlayerStopVers) _then)
      : super(_value, (v) => _then(v as QuranPlayerStopVers));

  @override
  QuranPlayerStopVers get _value => super._value as QuranPlayerStopVers;
}

/// @nodoc

class _$QuranPlayerStopVers implements QuranPlayerStopVers {
  const _$QuranPlayerStopVers();

  @override
  String toString() {
    return 'QuranPlayerEvent.stopVers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is QuranPlayerStopVers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int versIndex, String surahIndex) playVers,
    required TResult Function(int versIndex, FullSurah surah) playAll,
    required TResult Function() stopVers,
    required TResult Function() cansleSub,
  }) {
    return stopVers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int versIndex, String surahIndex)? playVers,
    TResult Function(int versIndex, FullSurah surah)? playAll,
    TResult Function()? stopVers,
    TResult Function()? cansleSub,
  }) {
    return stopVers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int versIndex, String surahIndex)? playVers,
    TResult Function(int versIndex, FullSurah surah)? playAll,
    TResult Function()? stopVers,
    TResult Function()? cansleSub,
    required TResult orElse(),
  }) {
    if (stopVers != null) {
      return stopVers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuranPlayerPlayVers value) playVers,
    required TResult Function(QuranPlayerPlayAllVers value) playAll,
    required TResult Function(QuranPlayerStopVers value) stopVers,
    required TResult Function(QuranPlayerCancleSup value) cansleSub,
  }) {
    return stopVers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuranPlayerPlayVers value)? playVers,
    TResult Function(QuranPlayerPlayAllVers value)? playAll,
    TResult Function(QuranPlayerStopVers value)? stopVers,
    TResult Function(QuranPlayerCancleSup value)? cansleSub,
  }) {
    return stopVers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuranPlayerPlayVers value)? playVers,
    TResult Function(QuranPlayerPlayAllVers value)? playAll,
    TResult Function(QuranPlayerStopVers value)? stopVers,
    TResult Function(QuranPlayerCancleSup value)? cansleSub,
    required TResult orElse(),
  }) {
    if (stopVers != null) {
      return stopVers(this);
    }
    return orElse();
  }
}

abstract class QuranPlayerStopVers implements QuranPlayerEvent {
  const factory QuranPlayerStopVers() = _$QuranPlayerStopVers;
}

/// @nodoc
abstract class $QuranPlayerCancleSupCopyWith<$Res> {
  factory $QuranPlayerCancleSupCopyWith(QuranPlayerCancleSup value,
          $Res Function(QuranPlayerCancleSup) then) =
      _$QuranPlayerCancleSupCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuranPlayerCancleSupCopyWithImpl<$Res>
    extends _$QuranPlayerEventCopyWithImpl<$Res>
    implements $QuranPlayerCancleSupCopyWith<$Res> {
  _$QuranPlayerCancleSupCopyWithImpl(
      QuranPlayerCancleSup _value, $Res Function(QuranPlayerCancleSup) _then)
      : super(_value, (v) => _then(v as QuranPlayerCancleSup));

  @override
  QuranPlayerCancleSup get _value => super._value as QuranPlayerCancleSup;
}

/// @nodoc

class _$QuranPlayerCancleSup implements QuranPlayerCancleSup {
  const _$QuranPlayerCancleSup();

  @override
  String toString() {
    return 'QuranPlayerEvent.cansleSub()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is QuranPlayerCancleSup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int versIndex, String surahIndex) playVers,
    required TResult Function(int versIndex, FullSurah surah) playAll,
    required TResult Function() stopVers,
    required TResult Function() cansleSub,
  }) {
    return cansleSub();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int versIndex, String surahIndex)? playVers,
    TResult Function(int versIndex, FullSurah surah)? playAll,
    TResult Function()? stopVers,
    TResult Function()? cansleSub,
  }) {
    return cansleSub?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int versIndex, String surahIndex)? playVers,
    TResult Function(int versIndex, FullSurah surah)? playAll,
    TResult Function()? stopVers,
    TResult Function()? cansleSub,
    required TResult orElse(),
  }) {
    if (cansleSub != null) {
      return cansleSub();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuranPlayerPlayVers value) playVers,
    required TResult Function(QuranPlayerPlayAllVers value) playAll,
    required TResult Function(QuranPlayerStopVers value) stopVers,
    required TResult Function(QuranPlayerCancleSup value) cansleSub,
  }) {
    return cansleSub(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QuranPlayerPlayVers value)? playVers,
    TResult Function(QuranPlayerPlayAllVers value)? playAll,
    TResult Function(QuranPlayerStopVers value)? stopVers,
    TResult Function(QuranPlayerCancleSup value)? cansleSub,
  }) {
    return cansleSub?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuranPlayerPlayVers value)? playVers,
    TResult Function(QuranPlayerPlayAllVers value)? playAll,
    TResult Function(QuranPlayerStopVers value)? stopVers,
    TResult Function(QuranPlayerCancleSup value)? cansleSub,
    required TResult orElse(),
  }) {
    if (cansleSub != null) {
      return cansleSub(this);
    }
    return orElse();
  }
}

abstract class QuranPlayerCancleSup implements QuranPlayerEvent {
  const factory QuranPlayerCancleSup() = _$QuranPlayerCancleSup;
}

/// @nodoc
class _$QuranPlayerStateTearOff {
  const _$QuranPlayerStateTearOff();

  _QuranPlayerStateInitial initial({required String nawPlayingPath}) {
    return _QuranPlayerStateInitial(
      nawPlayingPath: nawPlayingPath,
    );
  }

  _QuranPlayerStateLoading loadingVers() {
    return const _QuranPlayerStateLoading();
  }

  _QuranPlayerStateLoaded loaded() {
    return const _QuranPlayerStateLoaded();
  }

  _QuranPlayerStateError error(String error) {
    return _QuranPlayerStateError(
      error,
    );
  }
}

/// @nodoc
const $QuranPlayerState = _$QuranPlayerStateTearOff();

/// @nodoc
mixin _$QuranPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nawPlayingPath) initial,
    required TResult Function() loadingVers,
    required TResult Function() loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nawPlayingPath)? initial,
    TResult Function()? loadingVers,
    TResult Function()? loaded,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nawPlayingPath)? initial,
    TResult Function()? loadingVers,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuranPlayerStateInitial value) initial,
    required TResult Function(_QuranPlayerStateLoading value) loadingVers,
    required TResult Function(_QuranPlayerStateLoaded value) loaded,
    required TResult Function(_QuranPlayerStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuranPlayerStateInitial value)? initial,
    TResult Function(_QuranPlayerStateLoading value)? loadingVers,
    TResult Function(_QuranPlayerStateLoaded value)? loaded,
    TResult Function(_QuranPlayerStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuranPlayerStateInitial value)? initial,
    TResult Function(_QuranPlayerStateLoading value)? loadingVers,
    TResult Function(_QuranPlayerStateLoaded value)? loaded,
    TResult Function(_QuranPlayerStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranPlayerStateCopyWith<$Res> {
  factory $QuranPlayerStateCopyWith(
          QuranPlayerState value, $Res Function(QuranPlayerState) then) =
      _$QuranPlayerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuranPlayerStateCopyWithImpl<$Res>
    implements $QuranPlayerStateCopyWith<$Res> {
  _$QuranPlayerStateCopyWithImpl(this._value, this._then);

  final QuranPlayerState _value;
  // ignore: unused_field
  final $Res Function(QuranPlayerState) _then;
}

/// @nodoc
abstract class _$QuranPlayerStateInitialCopyWith<$Res> {
  factory _$QuranPlayerStateInitialCopyWith(_QuranPlayerStateInitial value,
          $Res Function(_QuranPlayerStateInitial) then) =
      __$QuranPlayerStateInitialCopyWithImpl<$Res>;
  $Res call({String nawPlayingPath});
}

/// @nodoc
class __$QuranPlayerStateInitialCopyWithImpl<$Res>
    extends _$QuranPlayerStateCopyWithImpl<$Res>
    implements _$QuranPlayerStateInitialCopyWith<$Res> {
  __$QuranPlayerStateInitialCopyWithImpl(_QuranPlayerStateInitial _value,
      $Res Function(_QuranPlayerStateInitial) _then)
      : super(_value, (v) => _then(v as _QuranPlayerStateInitial));

  @override
  _QuranPlayerStateInitial get _value =>
      super._value as _QuranPlayerStateInitial;

  @override
  $Res call({
    Object? nawPlayingPath = freezed,
  }) {
    return _then(_QuranPlayerStateInitial(
      nawPlayingPath: nawPlayingPath == freezed
          ? _value.nawPlayingPath
          : nawPlayingPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuranPlayerStateInitial implements _QuranPlayerStateInitial {
  const _$_QuranPlayerStateInitial({required this.nawPlayingPath});

  @override
  final String nawPlayingPath;

  @override
  String toString() {
    return 'QuranPlayerState.initial(nawPlayingPath: $nawPlayingPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuranPlayerStateInitial &&
            const DeepCollectionEquality()
                .equals(other.nawPlayingPath, nawPlayingPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(nawPlayingPath));

  @JsonKey(ignore: true)
  @override
  _$QuranPlayerStateInitialCopyWith<_QuranPlayerStateInitial> get copyWith =>
      __$QuranPlayerStateInitialCopyWithImpl<_QuranPlayerStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nawPlayingPath) initial,
    required TResult Function() loadingVers,
    required TResult Function() loaded,
    required TResult Function(String error) error,
  }) {
    return initial(nawPlayingPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nawPlayingPath)? initial,
    TResult Function()? loadingVers,
    TResult Function()? loaded,
    TResult Function(String error)? error,
  }) {
    return initial?.call(nawPlayingPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nawPlayingPath)? initial,
    TResult Function()? loadingVers,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(nawPlayingPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuranPlayerStateInitial value) initial,
    required TResult Function(_QuranPlayerStateLoading value) loadingVers,
    required TResult Function(_QuranPlayerStateLoaded value) loaded,
    required TResult Function(_QuranPlayerStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuranPlayerStateInitial value)? initial,
    TResult Function(_QuranPlayerStateLoading value)? loadingVers,
    TResult Function(_QuranPlayerStateLoaded value)? loaded,
    TResult Function(_QuranPlayerStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuranPlayerStateInitial value)? initial,
    TResult Function(_QuranPlayerStateLoading value)? loadingVers,
    TResult Function(_QuranPlayerStateLoaded value)? loaded,
    TResult Function(_QuranPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _QuranPlayerStateInitial implements QuranPlayerState {
  const factory _QuranPlayerStateInitial({required String nawPlayingPath}) =
      _$_QuranPlayerStateInitial;

  String get nawPlayingPath;
  @JsonKey(ignore: true)
  _$QuranPlayerStateInitialCopyWith<_QuranPlayerStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QuranPlayerStateLoadingCopyWith<$Res> {
  factory _$QuranPlayerStateLoadingCopyWith(_QuranPlayerStateLoading value,
          $Res Function(_QuranPlayerStateLoading) then) =
      __$QuranPlayerStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$QuranPlayerStateLoadingCopyWithImpl<$Res>
    extends _$QuranPlayerStateCopyWithImpl<$Res>
    implements _$QuranPlayerStateLoadingCopyWith<$Res> {
  __$QuranPlayerStateLoadingCopyWithImpl(_QuranPlayerStateLoading _value,
      $Res Function(_QuranPlayerStateLoading) _then)
      : super(_value, (v) => _then(v as _QuranPlayerStateLoading));

  @override
  _QuranPlayerStateLoading get _value =>
      super._value as _QuranPlayerStateLoading;
}

/// @nodoc

class _$_QuranPlayerStateLoading implements _QuranPlayerStateLoading {
  const _$_QuranPlayerStateLoading();

  @override
  String toString() {
    return 'QuranPlayerState.loadingVers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _QuranPlayerStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nawPlayingPath) initial,
    required TResult Function() loadingVers,
    required TResult Function() loaded,
    required TResult Function(String error) error,
  }) {
    return loadingVers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nawPlayingPath)? initial,
    TResult Function()? loadingVers,
    TResult Function()? loaded,
    TResult Function(String error)? error,
  }) {
    return loadingVers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nawPlayingPath)? initial,
    TResult Function()? loadingVers,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loadingVers != null) {
      return loadingVers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuranPlayerStateInitial value) initial,
    required TResult Function(_QuranPlayerStateLoading value) loadingVers,
    required TResult Function(_QuranPlayerStateLoaded value) loaded,
    required TResult Function(_QuranPlayerStateError value) error,
  }) {
    return loadingVers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuranPlayerStateInitial value)? initial,
    TResult Function(_QuranPlayerStateLoading value)? loadingVers,
    TResult Function(_QuranPlayerStateLoaded value)? loaded,
    TResult Function(_QuranPlayerStateError value)? error,
  }) {
    return loadingVers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuranPlayerStateInitial value)? initial,
    TResult Function(_QuranPlayerStateLoading value)? loadingVers,
    TResult Function(_QuranPlayerStateLoaded value)? loaded,
    TResult Function(_QuranPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (loadingVers != null) {
      return loadingVers(this);
    }
    return orElse();
  }
}

abstract class _QuranPlayerStateLoading implements QuranPlayerState {
  const factory _QuranPlayerStateLoading() = _$_QuranPlayerStateLoading;
}

/// @nodoc
abstract class _$QuranPlayerStateLoadedCopyWith<$Res> {
  factory _$QuranPlayerStateLoadedCopyWith(_QuranPlayerStateLoaded value,
          $Res Function(_QuranPlayerStateLoaded) then) =
      __$QuranPlayerStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$QuranPlayerStateLoadedCopyWithImpl<$Res>
    extends _$QuranPlayerStateCopyWithImpl<$Res>
    implements _$QuranPlayerStateLoadedCopyWith<$Res> {
  __$QuranPlayerStateLoadedCopyWithImpl(_QuranPlayerStateLoaded _value,
      $Res Function(_QuranPlayerStateLoaded) _then)
      : super(_value, (v) => _then(v as _QuranPlayerStateLoaded));

  @override
  _QuranPlayerStateLoaded get _value => super._value as _QuranPlayerStateLoaded;
}

/// @nodoc

class _$_QuranPlayerStateLoaded implements _QuranPlayerStateLoaded {
  const _$_QuranPlayerStateLoaded();

  @override
  String toString() {
    return 'QuranPlayerState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _QuranPlayerStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nawPlayingPath) initial,
    required TResult Function() loadingVers,
    required TResult Function() loaded,
    required TResult Function(String error) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nawPlayingPath)? initial,
    TResult Function()? loadingVers,
    TResult Function()? loaded,
    TResult Function(String error)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nawPlayingPath)? initial,
    TResult Function()? loadingVers,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuranPlayerStateInitial value) initial,
    required TResult Function(_QuranPlayerStateLoading value) loadingVers,
    required TResult Function(_QuranPlayerStateLoaded value) loaded,
    required TResult Function(_QuranPlayerStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuranPlayerStateInitial value)? initial,
    TResult Function(_QuranPlayerStateLoading value)? loadingVers,
    TResult Function(_QuranPlayerStateLoaded value)? loaded,
    TResult Function(_QuranPlayerStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuranPlayerStateInitial value)? initial,
    TResult Function(_QuranPlayerStateLoading value)? loadingVers,
    TResult Function(_QuranPlayerStateLoaded value)? loaded,
    TResult Function(_QuranPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _QuranPlayerStateLoaded implements QuranPlayerState {
  const factory _QuranPlayerStateLoaded() = _$_QuranPlayerStateLoaded;
}

/// @nodoc
abstract class _$QuranPlayerStateErrorCopyWith<$Res> {
  factory _$QuranPlayerStateErrorCopyWith(_QuranPlayerStateError value,
          $Res Function(_QuranPlayerStateError) then) =
      __$QuranPlayerStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$QuranPlayerStateErrorCopyWithImpl<$Res>
    extends _$QuranPlayerStateCopyWithImpl<$Res>
    implements _$QuranPlayerStateErrorCopyWith<$Res> {
  __$QuranPlayerStateErrorCopyWithImpl(_QuranPlayerStateError _value,
      $Res Function(_QuranPlayerStateError) _then)
      : super(_value, (v) => _then(v as _QuranPlayerStateError));

  @override
  _QuranPlayerStateError get _value => super._value as _QuranPlayerStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_QuranPlayerStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuranPlayerStateError implements _QuranPlayerStateError {
  const _$_QuranPlayerStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'QuranPlayerState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuranPlayerStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$QuranPlayerStateErrorCopyWith<_QuranPlayerStateError> get copyWith =>
      __$QuranPlayerStateErrorCopyWithImpl<_QuranPlayerStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nawPlayingPath) initial,
    required TResult Function() loadingVers,
    required TResult Function() loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nawPlayingPath)? initial,
    TResult Function()? loadingVers,
    TResult Function()? loaded,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nawPlayingPath)? initial,
    TResult Function()? loadingVers,
    TResult Function()? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuranPlayerStateInitial value) initial,
    required TResult Function(_QuranPlayerStateLoading value) loadingVers,
    required TResult Function(_QuranPlayerStateLoaded value) loaded,
    required TResult Function(_QuranPlayerStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuranPlayerStateInitial value)? initial,
    TResult Function(_QuranPlayerStateLoading value)? loadingVers,
    TResult Function(_QuranPlayerStateLoaded value)? loaded,
    TResult Function(_QuranPlayerStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuranPlayerStateInitial value)? initial,
    TResult Function(_QuranPlayerStateLoading value)? loadingVers,
    TResult Function(_QuranPlayerStateLoaded value)? loaded,
    TResult Function(_QuranPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _QuranPlayerStateError implements QuranPlayerState {
  const factory _QuranPlayerStateError(String error) = _$_QuranPlayerStateError;

  String get error;
  @JsonKey(ignore: true)
  _$QuranPlayerStateErrorCopyWith<_QuranPlayerStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
