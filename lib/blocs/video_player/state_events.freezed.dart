// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoPlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) init,
    required TResult Function() addListener,
    required TResult Function() togglePlaye,
    required TResult Function(double value) seeking,
    required TResult Function(double value) seekStart,
    required TResult Function(double value) seekEnd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? init,
    TResult Function()? addListener,
    TResult Function()? togglePlaye,
    TResult Function(double value)? seeking,
    TResult Function(double value)? seekStart,
    TResult Function(double value)? seekEnd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? init,
    TResult Function()? addListener,
    TResult Function()? togglePlaye,
    TResult Function(double value)? seeking,
    TResult Function(double value)? seekStart,
    TResult Function(double value)? seekEnd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerInit value) init,
    required TResult Function(VideoPlayerAddListener value) addListener,
    required TResult Function(VideoPlayerToggle value) togglePlaye,
    required TResult Function(VideoPlayerSeeking value) seeking,
    required TResult Function(VideoPlayerSeekStart value) seekStart,
    required TResult Function(VideoPlayerSeekEnd value) seekEnd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VideoPlayerInit value)? init,
    TResult Function(VideoPlayerAddListener value)? addListener,
    TResult Function(VideoPlayerToggle value)? togglePlaye,
    TResult Function(VideoPlayerSeeking value)? seeking,
    TResult Function(VideoPlayerSeekStart value)? seekStart,
    TResult Function(VideoPlayerSeekEnd value)? seekEnd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInit value)? init,
    TResult Function(VideoPlayerAddListener value)? addListener,
    TResult Function(VideoPlayerToggle value)? togglePlaye,
    TResult Function(VideoPlayerSeeking value)? seeking,
    TResult Function(VideoPlayerSeekStart value)? seekStart,
    TResult Function(VideoPlayerSeekEnd value)? seekEnd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerEventCopyWith<$Res> {
  factory $VideoPlayerEventCopyWith(
          VideoPlayerEvent value, $Res Function(VideoPlayerEvent) then) =
      _$VideoPlayerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideoPlayerEventCopyWithImpl<$Res>
    implements $VideoPlayerEventCopyWith<$Res> {
  _$VideoPlayerEventCopyWithImpl(this._value, this._then);

  final VideoPlayerEvent _value;
  // ignore: unused_field
  final $Res Function(VideoPlayerEvent) _then;
}

/// @nodoc
abstract class _$$VideoPlayerInitCopyWith<$Res> {
  factory _$$VideoPlayerInitCopyWith(
          _$VideoPlayerInit value, $Res Function(_$VideoPlayerInit) then) =
      __$$VideoPlayerInitCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$$VideoPlayerInitCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res>
    implements _$$VideoPlayerInitCopyWith<$Res> {
  __$$VideoPlayerInitCopyWithImpl(
      _$VideoPlayerInit _value, $Res Function(_$VideoPlayerInit) _then)
      : super(_value, (v) => _then(v as _$VideoPlayerInit));

  @override
  _$VideoPlayerInit get _value => super._value as _$VideoPlayerInit;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$VideoPlayerInit(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VideoPlayerInit implements VideoPlayerInit {
  const _$VideoPlayerInit({required this.url});

  @override
  final String url;

  @override
  String toString() {
    return 'VideoPlayerEvent.init(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerInit &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$VideoPlayerInitCopyWith<_$VideoPlayerInit> get copyWith =>
      __$$VideoPlayerInitCopyWithImpl<_$VideoPlayerInit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) init,
    required TResult Function() addListener,
    required TResult Function() togglePlaye,
    required TResult Function(double value) seeking,
    required TResult Function(double value) seekStart,
    required TResult Function(double value) seekEnd,
  }) {
    return init(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? init,
    TResult Function()? addListener,
    TResult Function()? togglePlaye,
    TResult Function(double value)? seeking,
    TResult Function(double value)? seekStart,
    TResult Function(double value)? seekEnd,
  }) {
    return init?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? init,
    TResult Function()? addListener,
    TResult Function()? togglePlaye,
    TResult Function(double value)? seeking,
    TResult Function(double value)? seekStart,
    TResult Function(double value)? seekEnd,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerInit value) init,
    required TResult Function(VideoPlayerAddListener value) addListener,
    required TResult Function(VideoPlayerToggle value) togglePlaye,
    required TResult Function(VideoPlayerSeeking value) seeking,
    required TResult Function(VideoPlayerSeekStart value) seekStart,
    required TResult Function(VideoPlayerSeekEnd value) seekEnd,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VideoPlayerInit value)? init,
    TResult Function(VideoPlayerAddListener value)? addListener,
    TResult Function(VideoPlayerToggle value)? togglePlaye,
    TResult Function(VideoPlayerSeeking value)? seeking,
    TResult Function(VideoPlayerSeekStart value)? seekStart,
    TResult Function(VideoPlayerSeekEnd value)? seekEnd,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInit value)? init,
    TResult Function(VideoPlayerAddListener value)? addListener,
    TResult Function(VideoPlayerToggle value)? togglePlaye,
    TResult Function(VideoPlayerSeeking value)? seeking,
    TResult Function(VideoPlayerSeekStart value)? seekStart,
    TResult Function(VideoPlayerSeekEnd value)? seekEnd,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerInit implements VideoPlayerEvent {
  const factory VideoPlayerInit({required final String url}) =
      _$VideoPlayerInit;

  String get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$VideoPlayerInitCopyWith<_$VideoPlayerInit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoPlayerAddListenerCopyWith<$Res> {
  factory _$$VideoPlayerAddListenerCopyWith(_$VideoPlayerAddListener value,
          $Res Function(_$VideoPlayerAddListener) then) =
      __$$VideoPlayerAddListenerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoPlayerAddListenerCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res>
    implements _$$VideoPlayerAddListenerCopyWith<$Res> {
  __$$VideoPlayerAddListenerCopyWithImpl(_$VideoPlayerAddListener _value,
      $Res Function(_$VideoPlayerAddListener) _then)
      : super(_value, (v) => _then(v as _$VideoPlayerAddListener));

  @override
  _$VideoPlayerAddListener get _value =>
      super._value as _$VideoPlayerAddListener;
}

/// @nodoc

class _$VideoPlayerAddListener implements VideoPlayerAddListener {
  const _$VideoPlayerAddListener();

  @override
  String toString() {
    return 'VideoPlayerEvent.addListener()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VideoPlayerAddListener);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) init,
    required TResult Function() addListener,
    required TResult Function() togglePlaye,
    required TResult Function(double value) seeking,
    required TResult Function(double value) seekStart,
    required TResult Function(double value) seekEnd,
  }) {
    return addListener();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? init,
    TResult Function()? addListener,
    TResult Function()? togglePlaye,
    TResult Function(double value)? seeking,
    TResult Function(double value)? seekStart,
    TResult Function(double value)? seekEnd,
  }) {
    return addListener?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? init,
    TResult Function()? addListener,
    TResult Function()? togglePlaye,
    TResult Function(double value)? seeking,
    TResult Function(double value)? seekStart,
    TResult Function(double value)? seekEnd,
    required TResult orElse(),
  }) {
    if (addListener != null) {
      return addListener();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerInit value) init,
    required TResult Function(VideoPlayerAddListener value) addListener,
    required TResult Function(VideoPlayerToggle value) togglePlaye,
    required TResult Function(VideoPlayerSeeking value) seeking,
    required TResult Function(VideoPlayerSeekStart value) seekStart,
    required TResult Function(VideoPlayerSeekEnd value) seekEnd,
  }) {
    return addListener(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VideoPlayerInit value)? init,
    TResult Function(VideoPlayerAddListener value)? addListener,
    TResult Function(VideoPlayerToggle value)? togglePlaye,
    TResult Function(VideoPlayerSeeking value)? seeking,
    TResult Function(VideoPlayerSeekStart value)? seekStart,
    TResult Function(VideoPlayerSeekEnd value)? seekEnd,
  }) {
    return addListener?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInit value)? init,
    TResult Function(VideoPlayerAddListener value)? addListener,
    TResult Function(VideoPlayerToggle value)? togglePlaye,
    TResult Function(VideoPlayerSeeking value)? seeking,
    TResult Function(VideoPlayerSeekStart value)? seekStart,
    TResult Function(VideoPlayerSeekEnd value)? seekEnd,
    required TResult orElse(),
  }) {
    if (addListener != null) {
      return addListener(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerAddListener implements VideoPlayerEvent {
  const factory VideoPlayerAddListener() = _$VideoPlayerAddListener;
}

/// @nodoc
abstract class _$$VideoPlayerToggleCopyWith<$Res> {
  factory _$$VideoPlayerToggleCopyWith(
          _$VideoPlayerToggle value, $Res Function(_$VideoPlayerToggle) then) =
      __$$VideoPlayerToggleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoPlayerToggleCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res>
    implements _$$VideoPlayerToggleCopyWith<$Res> {
  __$$VideoPlayerToggleCopyWithImpl(
      _$VideoPlayerToggle _value, $Res Function(_$VideoPlayerToggle) _then)
      : super(_value, (v) => _then(v as _$VideoPlayerToggle));

  @override
  _$VideoPlayerToggle get _value => super._value as _$VideoPlayerToggle;
}

/// @nodoc

class _$VideoPlayerToggle implements VideoPlayerToggle {
  const _$VideoPlayerToggle();

  @override
  String toString() {
    return 'VideoPlayerEvent.togglePlaye()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VideoPlayerToggle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) init,
    required TResult Function() addListener,
    required TResult Function() togglePlaye,
    required TResult Function(double value) seeking,
    required TResult Function(double value) seekStart,
    required TResult Function(double value) seekEnd,
  }) {
    return togglePlaye();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? init,
    TResult Function()? addListener,
    TResult Function()? togglePlaye,
    TResult Function(double value)? seeking,
    TResult Function(double value)? seekStart,
    TResult Function(double value)? seekEnd,
  }) {
    return togglePlaye?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? init,
    TResult Function()? addListener,
    TResult Function()? togglePlaye,
    TResult Function(double value)? seeking,
    TResult Function(double value)? seekStart,
    TResult Function(double value)? seekEnd,
    required TResult orElse(),
  }) {
    if (togglePlaye != null) {
      return togglePlaye();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerInit value) init,
    required TResult Function(VideoPlayerAddListener value) addListener,
    required TResult Function(VideoPlayerToggle value) togglePlaye,
    required TResult Function(VideoPlayerSeeking value) seeking,
    required TResult Function(VideoPlayerSeekStart value) seekStart,
    required TResult Function(VideoPlayerSeekEnd value) seekEnd,
  }) {
    return togglePlaye(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VideoPlayerInit value)? init,
    TResult Function(VideoPlayerAddListener value)? addListener,
    TResult Function(VideoPlayerToggle value)? togglePlaye,
    TResult Function(VideoPlayerSeeking value)? seeking,
    TResult Function(VideoPlayerSeekStart value)? seekStart,
    TResult Function(VideoPlayerSeekEnd value)? seekEnd,
  }) {
    return togglePlaye?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInit value)? init,
    TResult Function(VideoPlayerAddListener value)? addListener,
    TResult Function(VideoPlayerToggle value)? togglePlaye,
    TResult Function(VideoPlayerSeeking value)? seeking,
    TResult Function(VideoPlayerSeekStart value)? seekStart,
    TResult Function(VideoPlayerSeekEnd value)? seekEnd,
    required TResult orElse(),
  }) {
    if (togglePlaye != null) {
      return togglePlaye(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerToggle implements VideoPlayerEvent {
  const factory VideoPlayerToggle() = _$VideoPlayerToggle;
}

/// @nodoc
abstract class _$$VideoPlayerSeekingCopyWith<$Res> {
  factory _$$VideoPlayerSeekingCopyWith(_$VideoPlayerSeeking value,
          $Res Function(_$VideoPlayerSeeking) then) =
      __$$VideoPlayerSeekingCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class __$$VideoPlayerSeekingCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res>
    implements _$$VideoPlayerSeekingCopyWith<$Res> {
  __$$VideoPlayerSeekingCopyWithImpl(
      _$VideoPlayerSeeking _value, $Res Function(_$VideoPlayerSeeking) _then)
      : super(_value, (v) => _then(v as _$VideoPlayerSeeking));

  @override
  _$VideoPlayerSeeking get _value => super._value as _$VideoPlayerSeeking;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$VideoPlayerSeeking(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$VideoPlayerSeeking implements VideoPlayerSeeking {
  const _$VideoPlayerSeeking({required this.value});

  @override
  final double value;

  @override
  String toString() {
    return 'VideoPlayerEvent.seeking(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerSeeking &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$VideoPlayerSeekingCopyWith<_$VideoPlayerSeeking> get copyWith =>
      __$$VideoPlayerSeekingCopyWithImpl<_$VideoPlayerSeeking>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) init,
    required TResult Function() addListener,
    required TResult Function() togglePlaye,
    required TResult Function(double value) seeking,
    required TResult Function(double value) seekStart,
    required TResult Function(double value) seekEnd,
  }) {
    return seeking(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? init,
    TResult Function()? addListener,
    TResult Function()? togglePlaye,
    TResult Function(double value)? seeking,
    TResult Function(double value)? seekStart,
    TResult Function(double value)? seekEnd,
  }) {
    return seeking?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? init,
    TResult Function()? addListener,
    TResult Function()? togglePlaye,
    TResult Function(double value)? seeking,
    TResult Function(double value)? seekStart,
    TResult Function(double value)? seekEnd,
    required TResult orElse(),
  }) {
    if (seeking != null) {
      return seeking(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerInit value) init,
    required TResult Function(VideoPlayerAddListener value) addListener,
    required TResult Function(VideoPlayerToggle value) togglePlaye,
    required TResult Function(VideoPlayerSeeking value) seeking,
    required TResult Function(VideoPlayerSeekStart value) seekStart,
    required TResult Function(VideoPlayerSeekEnd value) seekEnd,
  }) {
    return seeking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VideoPlayerInit value)? init,
    TResult Function(VideoPlayerAddListener value)? addListener,
    TResult Function(VideoPlayerToggle value)? togglePlaye,
    TResult Function(VideoPlayerSeeking value)? seeking,
    TResult Function(VideoPlayerSeekStart value)? seekStart,
    TResult Function(VideoPlayerSeekEnd value)? seekEnd,
  }) {
    return seeking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInit value)? init,
    TResult Function(VideoPlayerAddListener value)? addListener,
    TResult Function(VideoPlayerToggle value)? togglePlaye,
    TResult Function(VideoPlayerSeeking value)? seeking,
    TResult Function(VideoPlayerSeekStart value)? seekStart,
    TResult Function(VideoPlayerSeekEnd value)? seekEnd,
    required TResult orElse(),
  }) {
    if (seeking != null) {
      return seeking(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerSeeking implements VideoPlayerEvent {
  const factory VideoPlayerSeeking({required final double value}) =
      _$VideoPlayerSeeking;

  double get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$VideoPlayerSeekingCopyWith<_$VideoPlayerSeeking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoPlayerSeekStartCopyWith<$Res> {
  factory _$$VideoPlayerSeekStartCopyWith(_$VideoPlayerSeekStart value,
          $Res Function(_$VideoPlayerSeekStart) then) =
      __$$VideoPlayerSeekStartCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class __$$VideoPlayerSeekStartCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res>
    implements _$$VideoPlayerSeekStartCopyWith<$Res> {
  __$$VideoPlayerSeekStartCopyWithImpl(_$VideoPlayerSeekStart _value,
      $Res Function(_$VideoPlayerSeekStart) _then)
      : super(_value, (v) => _then(v as _$VideoPlayerSeekStart));

  @override
  _$VideoPlayerSeekStart get _value => super._value as _$VideoPlayerSeekStart;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$VideoPlayerSeekStart(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$VideoPlayerSeekStart implements VideoPlayerSeekStart {
  const _$VideoPlayerSeekStart({required this.value});

  @override
  final double value;

  @override
  String toString() {
    return 'VideoPlayerEvent.seekStart(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerSeekStart &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$VideoPlayerSeekStartCopyWith<_$VideoPlayerSeekStart> get copyWith =>
      __$$VideoPlayerSeekStartCopyWithImpl<_$VideoPlayerSeekStart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) init,
    required TResult Function() addListener,
    required TResult Function() togglePlaye,
    required TResult Function(double value) seeking,
    required TResult Function(double value) seekStart,
    required TResult Function(double value) seekEnd,
  }) {
    return seekStart(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? init,
    TResult Function()? addListener,
    TResult Function()? togglePlaye,
    TResult Function(double value)? seeking,
    TResult Function(double value)? seekStart,
    TResult Function(double value)? seekEnd,
  }) {
    return seekStart?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? init,
    TResult Function()? addListener,
    TResult Function()? togglePlaye,
    TResult Function(double value)? seeking,
    TResult Function(double value)? seekStart,
    TResult Function(double value)? seekEnd,
    required TResult orElse(),
  }) {
    if (seekStart != null) {
      return seekStart(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerInit value) init,
    required TResult Function(VideoPlayerAddListener value) addListener,
    required TResult Function(VideoPlayerToggle value) togglePlaye,
    required TResult Function(VideoPlayerSeeking value) seeking,
    required TResult Function(VideoPlayerSeekStart value) seekStart,
    required TResult Function(VideoPlayerSeekEnd value) seekEnd,
  }) {
    return seekStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VideoPlayerInit value)? init,
    TResult Function(VideoPlayerAddListener value)? addListener,
    TResult Function(VideoPlayerToggle value)? togglePlaye,
    TResult Function(VideoPlayerSeeking value)? seeking,
    TResult Function(VideoPlayerSeekStart value)? seekStart,
    TResult Function(VideoPlayerSeekEnd value)? seekEnd,
  }) {
    return seekStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInit value)? init,
    TResult Function(VideoPlayerAddListener value)? addListener,
    TResult Function(VideoPlayerToggle value)? togglePlaye,
    TResult Function(VideoPlayerSeeking value)? seeking,
    TResult Function(VideoPlayerSeekStart value)? seekStart,
    TResult Function(VideoPlayerSeekEnd value)? seekEnd,
    required TResult orElse(),
  }) {
    if (seekStart != null) {
      return seekStart(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerSeekStart implements VideoPlayerEvent {
  const factory VideoPlayerSeekStart({required final double value}) =
      _$VideoPlayerSeekStart;

  double get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$VideoPlayerSeekStartCopyWith<_$VideoPlayerSeekStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoPlayerSeekEndCopyWith<$Res> {
  factory _$$VideoPlayerSeekEndCopyWith(_$VideoPlayerSeekEnd value,
          $Res Function(_$VideoPlayerSeekEnd) then) =
      __$$VideoPlayerSeekEndCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class __$$VideoPlayerSeekEndCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res>
    implements _$$VideoPlayerSeekEndCopyWith<$Res> {
  __$$VideoPlayerSeekEndCopyWithImpl(
      _$VideoPlayerSeekEnd _value, $Res Function(_$VideoPlayerSeekEnd) _then)
      : super(_value, (v) => _then(v as _$VideoPlayerSeekEnd));

  @override
  _$VideoPlayerSeekEnd get _value => super._value as _$VideoPlayerSeekEnd;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$VideoPlayerSeekEnd(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$VideoPlayerSeekEnd implements VideoPlayerSeekEnd {
  const _$VideoPlayerSeekEnd({required this.value});

  @override
  final double value;

  @override
  String toString() {
    return 'VideoPlayerEvent.seekEnd(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerSeekEnd &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$VideoPlayerSeekEndCopyWith<_$VideoPlayerSeekEnd> get copyWith =>
      __$$VideoPlayerSeekEndCopyWithImpl<_$VideoPlayerSeekEnd>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) init,
    required TResult Function() addListener,
    required TResult Function() togglePlaye,
    required TResult Function(double value) seeking,
    required TResult Function(double value) seekStart,
    required TResult Function(double value) seekEnd,
  }) {
    return seekEnd(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? init,
    TResult Function()? addListener,
    TResult Function()? togglePlaye,
    TResult Function(double value)? seeking,
    TResult Function(double value)? seekStart,
    TResult Function(double value)? seekEnd,
  }) {
    return seekEnd?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? init,
    TResult Function()? addListener,
    TResult Function()? togglePlaye,
    TResult Function(double value)? seeking,
    TResult Function(double value)? seekStart,
    TResult Function(double value)? seekEnd,
    required TResult orElse(),
  }) {
    if (seekEnd != null) {
      return seekEnd(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerInit value) init,
    required TResult Function(VideoPlayerAddListener value) addListener,
    required TResult Function(VideoPlayerToggle value) togglePlaye,
    required TResult Function(VideoPlayerSeeking value) seeking,
    required TResult Function(VideoPlayerSeekStart value) seekStart,
    required TResult Function(VideoPlayerSeekEnd value) seekEnd,
  }) {
    return seekEnd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VideoPlayerInit value)? init,
    TResult Function(VideoPlayerAddListener value)? addListener,
    TResult Function(VideoPlayerToggle value)? togglePlaye,
    TResult Function(VideoPlayerSeeking value)? seeking,
    TResult Function(VideoPlayerSeekStart value)? seekStart,
    TResult Function(VideoPlayerSeekEnd value)? seekEnd,
  }) {
    return seekEnd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInit value)? init,
    TResult Function(VideoPlayerAddListener value)? addListener,
    TResult Function(VideoPlayerToggle value)? togglePlaye,
    TResult Function(VideoPlayerSeeking value)? seeking,
    TResult Function(VideoPlayerSeekStart value)? seekStart,
    TResult Function(VideoPlayerSeekEnd value)? seekEnd,
    required TResult orElse(),
  }) {
    if (seekEnd != null) {
      return seekEnd(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerSeekEnd implements VideoPlayerEvent {
  const factory VideoPlayerSeekEnd({required final double value}) =
      _$VideoPlayerSeekEnd;

  double get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$VideoPlayerSeekEndCopyWith<_$VideoPlayerSeekEnd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CachedVideoPlayerController controller,
            double duration, double position, bool isPlaying)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CachedVideoPlayerController controller, double duration,
            double position, bool isPlaying)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CachedVideoPlayerController controller, double duration,
            double position, bool isPlaying)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoPlayerStateLoading value) loading,
    required TResult Function(_VideoPlayerStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VideoPlayerStateLoading value)? loading,
    TResult Function(_VideoPlayerStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoPlayerStateLoading value)? loading,
    TResult Function(_VideoPlayerStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerStateCopyWith<$Res> {
  factory $VideoPlayerStateCopyWith(
          VideoPlayerState value, $Res Function(VideoPlayerState) then) =
      _$VideoPlayerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideoPlayerStateCopyWithImpl<$Res>
    implements $VideoPlayerStateCopyWith<$Res> {
  _$VideoPlayerStateCopyWithImpl(this._value, this._then);

  final VideoPlayerState _value;
  // ignore: unused_field
  final $Res Function(VideoPlayerState) _then;
}

/// @nodoc
abstract class _$$_VideoPlayerStateLoadingCopyWith<$Res> {
  factory _$$_VideoPlayerStateLoadingCopyWith(_$_VideoPlayerStateLoading value,
          $Res Function(_$_VideoPlayerStateLoading) then) =
      __$$_VideoPlayerStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VideoPlayerStateLoadingCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res>
    implements _$$_VideoPlayerStateLoadingCopyWith<$Res> {
  __$$_VideoPlayerStateLoadingCopyWithImpl(_$_VideoPlayerStateLoading _value,
      $Res Function(_$_VideoPlayerStateLoading) _then)
      : super(_value, (v) => _then(v as _$_VideoPlayerStateLoading));

  @override
  _$_VideoPlayerStateLoading get _value =>
      super._value as _$_VideoPlayerStateLoading;
}

/// @nodoc

class _$_VideoPlayerStateLoading implements _VideoPlayerStateLoading {
  const _$_VideoPlayerStateLoading();

  @override
  String toString() {
    return 'VideoPlayerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoPlayerStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CachedVideoPlayerController controller,
            double duration, double position, bool isPlaying)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CachedVideoPlayerController controller, double duration,
            double position, bool isPlaying)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CachedVideoPlayerController controller, double duration,
            double position, bool isPlaying)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoPlayerStateLoading value) loading,
    required TResult Function(_VideoPlayerStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VideoPlayerStateLoading value)? loading,
    TResult Function(_VideoPlayerStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoPlayerStateLoading value)? loading,
    TResult Function(_VideoPlayerStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _VideoPlayerStateLoading implements VideoPlayerState {
  const factory _VideoPlayerStateLoading() = _$_VideoPlayerStateLoading;
}

/// @nodoc
abstract class _$$_VideoPlayerStateLoadedCopyWith<$Res> {
  factory _$$_VideoPlayerStateLoadedCopyWith(_$_VideoPlayerStateLoaded value,
          $Res Function(_$_VideoPlayerStateLoaded) then) =
      __$$_VideoPlayerStateLoadedCopyWithImpl<$Res>;
  $Res call(
      {CachedVideoPlayerController controller,
      double duration,
      double position,
      bool isPlaying});
}

/// @nodoc
class __$$_VideoPlayerStateLoadedCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res>
    implements _$$_VideoPlayerStateLoadedCopyWith<$Res> {
  __$$_VideoPlayerStateLoadedCopyWithImpl(_$_VideoPlayerStateLoaded _value,
      $Res Function(_$_VideoPlayerStateLoaded) _then)
      : super(_value, (v) => _then(v as _$_VideoPlayerStateLoaded));

  @override
  _$_VideoPlayerStateLoaded get _value =>
      super._value as _$_VideoPlayerStateLoaded;

  @override
  $Res call({
    Object? controller = freezed,
    Object? duration = freezed,
    Object? position = freezed,
    Object? isPlaying = freezed,
  }) {
    return _then(_$_VideoPlayerStateLoaded(
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CachedVideoPlayerController,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as double,
      isPlaying: isPlaying == freezed
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VideoPlayerStateLoaded implements _VideoPlayerStateLoaded {
  const _$_VideoPlayerStateLoaded(
      {required this.controller,
      required this.duration,
      required this.position,
      required this.isPlaying});

  @override
  final CachedVideoPlayerController controller;
  @override
  final double duration;
  @override
  final double position;
  @override
  final bool isPlaying;

  @override
  String toString() {
    return 'VideoPlayerState.loaded(controller: $controller, duration: $duration, position: $position, isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoPlayerStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.controller, controller) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.isPlaying, isPlaying));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(controller),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(isPlaying));

  @JsonKey(ignore: true)
  @override
  _$$_VideoPlayerStateLoadedCopyWith<_$_VideoPlayerStateLoaded> get copyWith =>
      __$$_VideoPlayerStateLoadedCopyWithImpl<_$_VideoPlayerStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CachedVideoPlayerController controller,
            double duration, double position, bool isPlaying)
        loaded,
  }) {
    return loaded(controller, duration, position, isPlaying);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CachedVideoPlayerController controller, double duration,
            double position, bool isPlaying)?
        loaded,
  }) {
    return loaded?.call(controller, duration, position, isPlaying);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CachedVideoPlayerController controller, double duration,
            double position, bool isPlaying)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(controller, duration, position, isPlaying);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoPlayerStateLoading value) loading,
    required TResult Function(_VideoPlayerStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VideoPlayerStateLoading value)? loading,
    TResult Function(_VideoPlayerStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoPlayerStateLoading value)? loading,
    TResult Function(_VideoPlayerStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _VideoPlayerStateLoaded implements VideoPlayerState {
  const factory _VideoPlayerStateLoaded(
      {required final CachedVideoPlayerController controller,
      required final double duration,
      required final double position,
      required final bool isPlaying}) = _$_VideoPlayerStateLoaded;

  CachedVideoPlayerController get controller =>
      throw _privateConstructorUsedError;
  double get duration => throw _privateConstructorUsedError;
  double get position => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_VideoPlayerStateLoadedCopyWith<_$_VideoPlayerStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
