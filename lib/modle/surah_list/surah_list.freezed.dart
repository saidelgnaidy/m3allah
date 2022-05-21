// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'surah_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurahList _$SurahListFromJson(Map<String, dynamic> json) {
  return _SurahList.fromJson(json);
}

/// @nodoc
mixin _$SurahList {
  String get place => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get titleAr => throw _privateConstructorUsedError;
  String get index => throw _privateConstructorUsedError;
  String get pages => throw _privateConstructorUsedError;
  List<Juz> get juz => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahListCopyWith<SurahList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahListCopyWith<$Res> {
  factory $SurahListCopyWith(SurahList value, $Res Function(SurahList) then) =
      _$SurahListCopyWithImpl<$Res>;
  $Res call(
      {String place,
      String type,
      int count,
      String title,
      String titleAr,
      String index,
      String pages,
      List<Juz> juz});
}

/// @nodoc
class _$SurahListCopyWithImpl<$Res> implements $SurahListCopyWith<$Res> {
  _$SurahListCopyWithImpl(this._value, this._then);

  final SurahList _value;
  // ignore: unused_field
  final $Res Function(SurahList) _then;

  @override
  $Res call({
    Object? place = freezed,
    Object? type = freezed,
    Object? count = freezed,
    Object? title = freezed,
    Object? titleAr = freezed,
    Object? index = freezed,
    Object? pages = freezed,
    Object? juz = freezed,
  }) {
    return _then(_value.copyWith(
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleAr: titleAr == freezed
          ? _value.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as String,
      juz: juz == freezed
          ? _value.juz
          : juz // ignore: cast_nullable_to_non_nullable
              as List<Juz>,
    ));
  }
}

/// @nodoc
abstract class _$$_SurahListCopyWith<$Res> implements $SurahListCopyWith<$Res> {
  factory _$$_SurahListCopyWith(
          _$_SurahList value, $Res Function(_$_SurahList) then) =
      __$$_SurahListCopyWithImpl<$Res>;
  @override
  $Res call(
      {String place,
      String type,
      int count,
      String title,
      String titleAr,
      String index,
      String pages,
      List<Juz> juz});
}

/// @nodoc
class __$$_SurahListCopyWithImpl<$Res> extends _$SurahListCopyWithImpl<$Res>
    implements _$$_SurahListCopyWith<$Res> {
  __$$_SurahListCopyWithImpl(
      _$_SurahList _value, $Res Function(_$_SurahList) _then)
      : super(_value, (v) => _then(v as _$_SurahList));

  @override
  _$_SurahList get _value => super._value as _$_SurahList;

  @override
  $Res call({
    Object? place = freezed,
    Object? type = freezed,
    Object? count = freezed,
    Object? title = freezed,
    Object? titleAr = freezed,
    Object? index = freezed,
    Object? pages = freezed,
    Object? juz = freezed,
  }) {
    return _then(_$_SurahList(
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleAr: titleAr == freezed
          ? _value.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as String,
      juz: juz == freezed
          ? _value._juz
          : juz // ignore: cast_nullable_to_non_nullable
              as List<Juz>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurahList implements _SurahList {
  const _$_SurahList(
      {required this.place,
      required this.type,
      required this.count,
      required this.title,
      required this.titleAr,
      required this.index,
      required this.pages,
      required final List<Juz> juz})
      : _juz = juz;

  factory _$_SurahList.fromJson(Map<String, dynamic> json) =>
      _$$_SurahListFromJson(json);

  @override
  final String place;
  @override
  final String type;
  @override
  final int count;
  @override
  final String title;
  @override
  final String titleAr;
  @override
  final String index;
  @override
  final String pages;
  final List<Juz> _juz;
  @override
  List<Juz> get juz {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_juz);
  }

  @override
  String toString() {
    return 'SurahList(place: $place, type: $type, count: $count, title: $title, titleAr: $titleAr, index: $index, pages: $pages, juz: $juz)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurahList &&
            const DeepCollectionEquality().equals(other.place, place) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.titleAr, titleAr) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.pages, pages) &&
            const DeepCollectionEquality().equals(other._juz, _juz));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(place),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(titleAr),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(pages),
      const DeepCollectionEquality().hash(_juz));

  @JsonKey(ignore: true)
  @override
  _$$_SurahListCopyWith<_$_SurahList> get copyWith =>
      __$$_SurahListCopyWithImpl<_$_SurahList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurahListToJson(this);
  }
}

abstract class _SurahList implements SurahList {
  const factory _SurahList(
      {required final String place,
      required final String type,
      required final int count,
      required final String title,
      required final String titleAr,
      required final String index,
      required final String pages,
      required final List<Juz> juz}) = _$_SurahList;

  factory _SurahList.fromJson(Map<String, dynamic> json) =
      _$_SurahList.fromJson;

  @override
  String get place => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get titleAr => throw _privateConstructorUsedError;
  @override
  String get index => throw _privateConstructorUsedError;
  @override
  String get pages => throw _privateConstructorUsedError;
  @override
  List<Juz> get juz => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SurahListCopyWith<_$_SurahList> get copyWith =>
      throw _privateConstructorUsedError;
}

Verse _$VerseFromJson(Map<String, dynamic> json) {
  return _Verse.fromJson(json);
}

/// @nodoc
mixin _$Verse {
  String get start => throw _privateConstructorUsedError;
  String get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerseCopyWith<Verse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerseCopyWith<$Res> {
  factory $VerseCopyWith(Verse value, $Res Function(Verse) then) =
      _$VerseCopyWithImpl<$Res>;
  $Res call({String start, String end});
}

/// @nodoc
class _$VerseCopyWithImpl<$Res> implements $VerseCopyWith<$Res> {
  _$VerseCopyWithImpl(this._value, this._then);

  final Verse _value;
  // ignore: unused_field
  final $Res Function(Verse) _then;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VerseCopyWith<$Res> implements $VerseCopyWith<$Res> {
  factory _$$_VerseCopyWith(_$_Verse value, $Res Function(_$_Verse) then) =
      __$$_VerseCopyWithImpl<$Res>;
  @override
  $Res call({String start, String end});
}

/// @nodoc
class __$$_VerseCopyWithImpl<$Res> extends _$VerseCopyWithImpl<$Res>
    implements _$$_VerseCopyWith<$Res> {
  __$$_VerseCopyWithImpl(_$_Verse _value, $Res Function(_$_Verse) _then)
      : super(_value, (v) => _then(v as _$_Verse));

  @override
  _$_Verse get _value => super._value as _$_Verse;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_Verse(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Verse implements _Verse {
  const _$_Verse({required this.start, required this.end});

  factory _$_Verse.fromJson(Map<String, dynamic> json) =>
      _$$_VerseFromJson(json);

  @override
  final String start;
  @override
  final String end;

  @override
  String toString() {
    return 'Verse(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Verse &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end));

  @JsonKey(ignore: true)
  @override
  _$$_VerseCopyWith<_$_Verse> get copyWith =>
      __$$_VerseCopyWithImpl<_$_Verse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerseToJson(this);
  }
}

abstract class _Verse implements Verse {
  const factory _Verse(
      {required final String start, required final String end}) = _$_Verse;

  factory _Verse.fromJson(Map<String, dynamic> json) = _$_Verse.fromJson;

  @override
  String get start => throw _privateConstructorUsedError;
  @override
  String get end => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VerseCopyWith<_$_Verse> get copyWith =>
      throw _privateConstructorUsedError;
}

Juz _$JuzFromJson(Map<String, dynamic> json) {
  return _Juz.fromJson(json);
}

/// @nodoc
mixin _$Juz {
  String get index => throw _privateConstructorUsedError;
  JuzVerse get verse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JuzCopyWith<Juz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JuzCopyWith<$Res> {
  factory $JuzCopyWith(Juz value, $Res Function(Juz) then) =
      _$JuzCopyWithImpl<$Res>;
  $Res call({String index, JuzVerse verse});

  $JuzVerseCopyWith<$Res> get verse;
}

/// @nodoc
class _$JuzCopyWithImpl<$Res> implements $JuzCopyWith<$Res> {
  _$JuzCopyWithImpl(this._value, this._then);

  final Juz _value;
  // ignore: unused_field
  final $Res Function(Juz) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? verse = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      verse: verse == freezed
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as JuzVerse,
    ));
  }

  @override
  $JuzVerseCopyWith<$Res> get verse {
    return $JuzVerseCopyWith<$Res>(_value.verse, (value) {
      return _then(_value.copyWith(verse: value));
    });
  }
}

/// @nodoc
abstract class _$$_JuzCopyWith<$Res> implements $JuzCopyWith<$Res> {
  factory _$$_JuzCopyWith(_$_Juz value, $Res Function(_$_Juz) then) =
      __$$_JuzCopyWithImpl<$Res>;
  @override
  $Res call({String index, JuzVerse verse});

  @override
  $JuzVerseCopyWith<$Res> get verse;
}

/// @nodoc
class __$$_JuzCopyWithImpl<$Res> extends _$JuzCopyWithImpl<$Res>
    implements _$$_JuzCopyWith<$Res> {
  __$$_JuzCopyWithImpl(_$_Juz _value, $Res Function(_$_Juz) _then)
      : super(_value, (v) => _then(v as _$_Juz));

  @override
  _$_Juz get _value => super._value as _$_Juz;

  @override
  $Res call({
    Object? index = freezed,
    Object? verse = freezed,
  }) {
    return _then(_$_Juz(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      verse: verse == freezed
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as JuzVerse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Juz implements _Juz {
  const _$_Juz({required this.index, required this.verse});

  factory _$_Juz.fromJson(Map<String, dynamic> json) => _$$_JuzFromJson(json);

  @override
  final String index;
  @override
  final JuzVerse verse;

  @override
  String toString() {
    return 'Juz(index: $index, verse: $verse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Juz &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.verse, verse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(verse));

  @JsonKey(ignore: true)
  @override
  _$$_JuzCopyWith<_$_Juz> get copyWith =>
      __$$_JuzCopyWithImpl<_$_Juz>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JuzToJson(this);
  }
}

abstract class _Juz implements Juz {
  const factory _Juz(
      {required final String index, required final JuzVerse verse}) = _$_Juz;

  factory _Juz.fromJson(Map<String, dynamic> json) = _$_Juz.fromJson;

  @override
  String get index => throw _privateConstructorUsedError;
  @override
  JuzVerse get verse => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_JuzCopyWith<_$_Juz> get copyWith => throw _privateConstructorUsedError;
}

JuzVerse _$JuzVerseFromJson(Map<String, dynamic> json) {
  return _JuzVerse.fromJson(json);
}

/// @nodoc
mixin _$JuzVerse {
  String get start => throw _privateConstructorUsedError;
  String get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JuzVerseCopyWith<JuzVerse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JuzVerseCopyWith<$Res> {
  factory $JuzVerseCopyWith(JuzVerse value, $Res Function(JuzVerse) then) =
      _$JuzVerseCopyWithImpl<$Res>;
  $Res call({String start, String end});
}

/// @nodoc
class _$JuzVerseCopyWithImpl<$Res> implements $JuzVerseCopyWith<$Res> {
  _$JuzVerseCopyWithImpl(this._value, this._then);

  final JuzVerse _value;
  // ignore: unused_field
  final $Res Function(JuzVerse) _then;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_JuzVerseCopyWith<$Res> implements $JuzVerseCopyWith<$Res> {
  factory _$$_JuzVerseCopyWith(
          _$_JuzVerse value, $Res Function(_$_JuzVerse) then) =
      __$$_JuzVerseCopyWithImpl<$Res>;
  @override
  $Res call({String start, String end});
}

/// @nodoc
class __$$_JuzVerseCopyWithImpl<$Res> extends _$JuzVerseCopyWithImpl<$Res>
    implements _$$_JuzVerseCopyWith<$Res> {
  __$$_JuzVerseCopyWithImpl(
      _$_JuzVerse _value, $Res Function(_$_JuzVerse) _then)
      : super(_value, (v) => _then(v as _$_JuzVerse));

  @override
  _$_JuzVerse get _value => super._value as _$_JuzVerse;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_JuzVerse(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JuzVerse implements _JuzVerse {
  const _$_JuzVerse({required this.start, required this.end});

  factory _$_JuzVerse.fromJson(Map<String, dynamic> json) =>
      _$$_JuzVerseFromJson(json);

  @override
  final String start;
  @override
  final String end;

  @override
  String toString() {
    return 'JuzVerse(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JuzVerse &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end));

  @JsonKey(ignore: true)
  @override
  _$$_JuzVerseCopyWith<_$_JuzVerse> get copyWith =>
      __$$_JuzVerseCopyWithImpl<_$_JuzVerse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JuzVerseToJson(this);
  }
}

abstract class _JuzVerse implements JuzVerse {
  const factory _JuzVerse(
      {required final String start, required final String end}) = _$_JuzVerse;

  factory _JuzVerse.fromJson(Map<String, dynamic> json) = _$_JuzVerse.fromJson;

  @override
  String get start => throw _privateConstructorUsedError;
  @override
  String get end => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_JuzVerseCopyWith<_$_JuzVerse> get copyWith =>
      throw _privateConstructorUsedError;
}
