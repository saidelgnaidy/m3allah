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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$QuranPlayerPlayVersCopyWith<$Res> {
  factory _$$QuranPlayerPlayVersCopyWith(_$QuranPlayerPlayVers value,
          $Res Function(_$QuranPlayerPlayVers) then) =
      __$$QuranPlayerPlayVersCopyWithImpl<$Res>;
  $Res call({int versIndex, String surahIndex});
}

/// @nodoc
class __$$QuranPlayerPlayVersCopyWithImpl<$Res>
    extends _$QuranPlayerEventCopyWithImpl<$Res>
    implements _$$QuranPlayerPlayVersCopyWith<$Res> {
  __$$QuranPlayerPlayVersCopyWithImpl(
      _$QuranPlayerPlayVers _value, $Res Function(_$QuranPlayerPlayVers) _then)
      : super(_value, (v) => _then(v as _$QuranPlayerPlayVers));

  @override
  _$QuranPlayerPlayVers get _value => super._value as _$QuranPlayerPlayVers;

  @override
  $Res call({
    Object? versIndex = freezed,
    Object? surahIndex = freezed,
  }) {
    return _then(_$QuranPlayerPlayVers(
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
            other is _$QuranPlayerPlayVers &&
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
  _$$QuranPlayerPlayVersCopyWith<_$QuranPlayerPlayVers> get copyWith =>
      __$$QuranPlayerPlayVersCopyWithImpl<_$QuranPlayerPlayVers>(
          this, _$identity);

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
      {required final int versIndex,
      required final String surahIndex}) = _$QuranPlayerPlayVers;

  int get versIndex => throw _privateConstructorUsedError;
  String get surahIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuranPlayerPlayVersCopyWith<_$QuranPlayerPlayVers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuranPlayerPlayAllVersCopyWith<$Res> {
  factory _$$QuranPlayerPlayAllVersCopyWith(_$QuranPlayerPlayAllVers value,
          $Res Function(_$QuranPlayerPlayAllVers) then) =
      __$$QuranPlayerPlayAllVersCopyWithImpl<$Res>;
  $Res call({int versIndex, FullSurah surah});
}

/// @nodoc
class __$$QuranPlayerPlayAllVersCopyWithImpl<$Res>
    extends _$QuranPlayerEventCopyWithImpl<$Res>
    implements _$$QuranPlayerPlayAllVersCopyWith<$Res> {
  __$$QuranPlayerPlayAllVersCopyWithImpl(_$QuranPlayerPlayAllVers _value,
      $Res Function(_$QuranPlayerPlayAllVers) _then)
      : super(_value, (v) => _then(v as _$QuranPlayerPlayAllVers));

  @override
  _$QuranPlayerPlayAllVers get _value =>
      super._value as _$QuranPlayerPlayAllVers;

  @override
  $Res call({
    Object? versIndex = freezed,
    Object? surah = freezed,
  }) {
    return _then(_$QuranPlayerPlayAllVers(
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
            other is _$QuranPlayerPlayAllVers &&
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
  _$$QuranPlayerPlayAllVersCopyWith<_$QuranPlayerPlayAllVers> get copyWith =>
      __$$QuranPlayerPlayAllVersCopyWithImpl<_$QuranPlayerPlayAllVers>(
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
      {required final int versIndex,
      required final FullSurah surah}) = _$QuranPlayerPlayAllVers;

  int get versIndex => throw _privateConstructorUsedError;
  FullSurah get surah => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QuranPlayerPlayAllVersCopyWith<_$QuranPlayerPlayAllVers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuranPlayerStopVersCopyWith<$Res> {
  factory _$$QuranPlayerStopVersCopyWith(_$QuranPlayerStopVers value,
          $Res Function(_$QuranPlayerStopVers) then) =
      __$$QuranPlayerStopVersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuranPlayerStopVersCopyWithImpl<$Res>
    extends _$QuranPlayerEventCopyWithImpl<$Res>
    implements _$$QuranPlayerStopVersCopyWith<$Res> {
  __$$QuranPlayerStopVersCopyWithImpl(
      _$QuranPlayerStopVers _value, $Res Function(_$QuranPlayerStopVers) _then)
      : super(_value, (v) => _then(v as _$QuranPlayerStopVers));

  @override
  _$QuranPlayerStopVers get _value => super._value as _$QuranPlayerStopVers;
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
        (other.runtimeType == runtimeType && other is _$QuranPlayerStopVers);
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
abstract class _$$QuranPlayerCancleSupCopyWith<$Res> {
  factory _$$QuranPlayerCancleSupCopyWith(_$QuranPlayerCancleSup value,
          $Res Function(_$QuranPlayerCancleSup) then) =
      __$$QuranPlayerCancleSupCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuranPlayerCancleSupCopyWithImpl<$Res>
    extends _$QuranPlayerEventCopyWithImpl<$Res>
    implements _$$QuranPlayerCancleSupCopyWith<$Res> {
  __$$QuranPlayerCancleSupCopyWithImpl(_$QuranPlayerCancleSup _value,
      $Res Function(_$QuranPlayerCancleSup) _then)
      : super(_value, (v) => _then(v as _$QuranPlayerCancleSup));

  @override
  _$QuranPlayerCancleSup get _value => super._value as _$QuranPlayerCancleSup;
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
        (other.runtimeType == runtimeType && other is _$QuranPlayerCancleSup);
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
abstract class _$$_QuranPlayerStateInitialCopyWith<$Res> {
  factory _$$_QuranPlayerStateInitialCopyWith(_$_QuranPlayerStateInitial value,
          $Res Function(_$_QuranPlayerStateInitial) then) =
      __$$_QuranPlayerStateInitialCopyWithImpl<$Res>;
  $Res call({String nawPlayingPath});
}

/// @nodoc
class __$$_QuranPlayerStateInitialCopyWithImpl<$Res>
    extends _$QuranPlayerStateCopyWithImpl<$Res>
    implements _$$_QuranPlayerStateInitialCopyWith<$Res> {
  __$$_QuranPlayerStateInitialCopyWithImpl(_$_QuranPlayerStateInitial _value,
      $Res Function(_$_QuranPlayerStateInitial) _then)
      : super(_value, (v) => _then(v as _$_QuranPlayerStateInitial));

  @override
  _$_QuranPlayerStateInitial get _value =>
      super._value as _$_QuranPlayerStateInitial;

  @override
  $Res call({
    Object? nawPlayingPath = freezed,
  }) {
    return _then(_$_QuranPlayerStateInitial(
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
            other is _$_QuranPlayerStateInitial &&
            const DeepCollectionEquality()
                .equals(other.nawPlayingPath, nawPlayingPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(nawPlayingPath));

  @JsonKey(ignore: true)
  @override
  _$$_QuranPlayerStateInitialCopyWith<_$_QuranPlayerStateInitial>
      get copyWith =>
          __$$_QuranPlayerStateInitialCopyWithImpl<_$_QuranPlayerStateInitial>(
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
  const factory _QuranPlayerStateInitial(
      {required final String nawPlayingPath}) = _$_QuranPlayerStateInitial;

  String get nawPlayingPath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_QuranPlayerStateInitialCopyWith<_$_QuranPlayerStateInitial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuranPlayerStateLoadingCopyWith<$Res> {
  factory _$$_QuranPlayerStateLoadingCopyWith(_$_QuranPlayerStateLoading value,
          $Res Function(_$_QuranPlayerStateLoading) then) =
      __$$_QuranPlayerStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_QuranPlayerStateLoadingCopyWithImpl<$Res>
    extends _$QuranPlayerStateCopyWithImpl<$Res>
    implements _$$_QuranPlayerStateLoadingCopyWith<$Res> {
  __$$_QuranPlayerStateLoadingCopyWithImpl(_$_QuranPlayerStateLoading _value,
      $Res Function(_$_QuranPlayerStateLoading) _then)
      : super(_value, (v) => _then(v as _$_QuranPlayerStateLoading));

  @override
  _$_QuranPlayerStateLoading get _value =>
      super._value as _$_QuranPlayerStateLoading;
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
        (other.runtimeType == runtimeType &&
            other is _$_QuranPlayerStateLoading);
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
abstract class _$$_QuranPlayerStateLoadedCopyWith<$Res> {
  factory _$$_QuranPlayerStateLoadedCopyWith(_$_QuranPlayerStateLoaded value,
          $Res Function(_$_QuranPlayerStateLoaded) then) =
      __$$_QuranPlayerStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_QuranPlayerStateLoadedCopyWithImpl<$Res>
    extends _$QuranPlayerStateCopyWithImpl<$Res>
    implements _$$_QuranPlayerStateLoadedCopyWith<$Res> {
  __$$_QuranPlayerStateLoadedCopyWithImpl(_$_QuranPlayerStateLoaded _value,
      $Res Function(_$_QuranPlayerStateLoaded) _then)
      : super(_value, (v) => _then(v as _$_QuranPlayerStateLoaded));

  @override
  _$_QuranPlayerStateLoaded get _value =>
      super._value as _$_QuranPlayerStateLoaded;
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
        (other.runtimeType == runtimeType &&
            other is _$_QuranPlayerStateLoaded);
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
abstract class _$$_QuranPlayerStateErrorCopyWith<$Res> {
  factory _$$_QuranPlayerStateErrorCopyWith(_$_QuranPlayerStateError value,
          $Res Function(_$_QuranPlayerStateError) then) =
      __$$_QuranPlayerStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_QuranPlayerStateErrorCopyWithImpl<$Res>
    extends _$QuranPlayerStateCopyWithImpl<$Res>
    implements _$$_QuranPlayerStateErrorCopyWith<$Res> {
  __$$_QuranPlayerStateErrorCopyWithImpl(_$_QuranPlayerStateError _value,
      $Res Function(_$_QuranPlayerStateError) _then)
      : super(_value, (v) => _then(v as _$_QuranPlayerStateError));

  @override
  _$_QuranPlayerStateError get _value =>
      super._value as _$_QuranPlayerStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_QuranPlayerStateError(
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
            other is _$_QuranPlayerStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_QuranPlayerStateErrorCopyWith<_$_QuranPlayerStateError> get copyWith =>
      __$$_QuranPlayerStateErrorCopyWithImpl<_$_QuranPlayerStateError>(
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
  const factory _QuranPlayerStateError(final String error) =
      _$_QuranPlayerStateError;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_QuranPlayerStateErrorCopyWith<_$_QuranPlayerStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
