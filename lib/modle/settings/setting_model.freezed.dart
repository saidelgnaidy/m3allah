// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsModel _$SettingsModelFromJson(Map<String, dynamic> json) {
  return _SettingsModel.fromJson(json);
}

/// @nodoc
mixin _$SettingsModel {
  bool get isLight => throw _privateConstructorUsedError;
  int get fontCode => throw _privateConstructorUsedError;
  double get fontSize => throw _privateConstructorUsedError;
  double get lastSurahOffset => throw _privateConstructorUsedError;
  SurahList? get lastSurah => throw _privateConstructorUsedError;
  double get lastJuzOffset => throw _privateConstructorUsedError;
  JuzList? get lastJuz => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsModelCopyWith<SettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsModelCopyWith<$Res> {
  factory $SettingsModelCopyWith(
          SettingsModel value, $Res Function(SettingsModel) then) =
      _$SettingsModelCopyWithImpl<$Res>;
  $Res call(
      {bool isLight,
      int fontCode,
      double fontSize,
      double lastSurahOffset,
      SurahList? lastSurah,
      double lastJuzOffset,
      JuzList? lastJuz});

  $SurahListCopyWith<$Res>? get lastSurah;
}

/// @nodoc
class _$SettingsModelCopyWithImpl<$Res>
    implements $SettingsModelCopyWith<$Res> {
  _$SettingsModelCopyWithImpl(this._value, this._then);

  final SettingsModel _value;
  // ignore: unused_field
  final $Res Function(SettingsModel) _then;

  @override
  $Res call({
    Object? isLight = freezed,
    Object? fontCode = freezed,
    Object? fontSize = freezed,
    Object? lastSurahOffset = freezed,
    Object? lastSurah = freezed,
    Object? lastJuzOffset = freezed,
    Object? lastJuz = freezed,
  }) {
    return _then(_value.copyWith(
      isLight: isLight == freezed
          ? _value.isLight
          : isLight // ignore: cast_nullable_to_non_nullable
              as bool,
      fontCode: fontCode == freezed
          ? _value.fontCode
          : fontCode // ignore: cast_nullable_to_non_nullable
              as int,
      fontSize: fontSize == freezed
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double,
      lastSurahOffset: lastSurahOffset == freezed
          ? _value.lastSurahOffset
          : lastSurahOffset // ignore: cast_nullable_to_non_nullable
              as double,
      lastSurah: lastSurah == freezed
          ? _value.lastSurah
          : lastSurah // ignore: cast_nullable_to_non_nullable
              as SurahList?,
      lastJuzOffset: lastJuzOffset == freezed
          ? _value.lastJuzOffset
          : lastJuzOffset // ignore: cast_nullable_to_non_nullable
              as double,
      lastJuz: lastJuz == freezed
          ? _value.lastJuz
          : lastJuz // ignore: cast_nullable_to_non_nullable
              as JuzList?,
    ));
  }

  @override
  $SurahListCopyWith<$Res>? get lastSurah {
    if (_value.lastSurah == null) {
      return null;
    }

    return $SurahListCopyWith<$Res>(_value.lastSurah!, (value) {
      return _then(_value.copyWith(lastSurah: value));
    });
  }
}

/// @nodoc
abstract class _$$_SettingsModelCopyWith<$Res>
    implements $SettingsModelCopyWith<$Res> {
  factory _$$_SettingsModelCopyWith(
          _$_SettingsModel value, $Res Function(_$_SettingsModel) then) =
      __$$_SettingsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLight,
      int fontCode,
      double fontSize,
      double lastSurahOffset,
      SurahList? lastSurah,
      double lastJuzOffset,
      JuzList? lastJuz});

  @override
  $SurahListCopyWith<$Res>? get lastSurah;
}

/// @nodoc
class __$$_SettingsModelCopyWithImpl<$Res>
    extends _$SettingsModelCopyWithImpl<$Res>
    implements _$$_SettingsModelCopyWith<$Res> {
  __$$_SettingsModelCopyWithImpl(
      _$_SettingsModel _value, $Res Function(_$_SettingsModel) _then)
      : super(_value, (v) => _then(v as _$_SettingsModel));

  @override
  _$_SettingsModel get _value => super._value as _$_SettingsModel;

  @override
  $Res call({
    Object? isLight = freezed,
    Object? fontCode = freezed,
    Object? fontSize = freezed,
    Object? lastSurahOffset = freezed,
    Object? lastSurah = freezed,
    Object? lastJuzOffset = freezed,
    Object? lastJuz = freezed,
  }) {
    return _then(_$_SettingsModel(
      isLight: isLight == freezed
          ? _value.isLight
          : isLight // ignore: cast_nullable_to_non_nullable
              as bool,
      fontCode: fontCode == freezed
          ? _value.fontCode
          : fontCode // ignore: cast_nullable_to_non_nullable
              as int,
      fontSize: fontSize == freezed
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double,
      lastSurahOffset: lastSurahOffset == freezed
          ? _value.lastSurahOffset
          : lastSurahOffset // ignore: cast_nullable_to_non_nullable
              as double,
      lastSurah: lastSurah == freezed
          ? _value.lastSurah
          : lastSurah // ignore: cast_nullable_to_non_nullable
              as SurahList?,
      lastJuzOffset: lastJuzOffset == freezed
          ? _value.lastJuzOffset
          : lastJuzOffset // ignore: cast_nullable_to_non_nullable
              as double,
      lastJuz: lastJuz == freezed
          ? _value.lastJuz
          : lastJuz // ignore: cast_nullable_to_non_nullable
              as JuzList?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingsModel implements _SettingsModel {
  const _$_SettingsModel(
      {required this.isLight,
      required this.fontCode,
      required this.fontSize,
      required this.lastSurahOffset,
      required this.lastSurah,
      required this.lastJuzOffset,
      this.lastJuz});

  factory _$_SettingsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsModelFromJson(json);

  @override
  final bool isLight;
  @override
  final int fontCode;
  @override
  final double fontSize;
  @override
  final double lastSurahOffset;
  @override
  final SurahList? lastSurah;
  @override
  final double lastJuzOffset;
  @override
  final JuzList? lastJuz;

  @override
  String toString() {
    return 'SettingsModel(isLight: $isLight, fontCode: $fontCode, fontSize: $fontSize, lastSurahOffset: $lastSurahOffset, lastSurah: $lastSurah, lastJuzOffset: $lastJuzOffset, lastJuz: $lastJuz)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsModel &&
            const DeepCollectionEquality().equals(other.isLight, isLight) &&
            const DeepCollectionEquality().equals(other.fontCode, fontCode) &&
            const DeepCollectionEquality().equals(other.fontSize, fontSize) &&
            const DeepCollectionEquality()
                .equals(other.lastSurahOffset, lastSurahOffset) &&
            const DeepCollectionEquality().equals(other.lastSurah, lastSurah) &&
            const DeepCollectionEquality()
                .equals(other.lastJuzOffset, lastJuzOffset) &&
            const DeepCollectionEquality().equals(other.lastJuz, lastJuz));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLight),
      const DeepCollectionEquality().hash(fontCode),
      const DeepCollectionEquality().hash(fontSize),
      const DeepCollectionEquality().hash(lastSurahOffset),
      const DeepCollectionEquality().hash(lastSurah),
      const DeepCollectionEquality().hash(lastJuzOffset),
      const DeepCollectionEquality().hash(lastJuz));

  @JsonKey(ignore: true)
  @override
  _$$_SettingsModelCopyWith<_$_SettingsModel> get copyWith =>
      __$$_SettingsModelCopyWithImpl<_$_SettingsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsModelToJson(this);
  }
}

abstract class _SettingsModel implements SettingsModel {
  const factory _SettingsModel(
      {required final bool isLight,
      required final int fontCode,
      required final double fontSize,
      required final double lastSurahOffset,
      required final SurahList? lastSurah,
      required final double lastJuzOffset,
      final JuzList? lastJuz}) = _$_SettingsModel;

  factory _SettingsModel.fromJson(Map<String, dynamic> json) =
      _$_SettingsModel.fromJson;

  @override
  bool get isLight => throw _privateConstructorUsedError;
  @override
  int get fontCode => throw _privateConstructorUsedError;
  @override
  double get fontSize => throw _privateConstructorUsedError;
  @override
  double get lastSurahOffset => throw _privateConstructorUsedError;
  @override
  SurahList? get lastSurah => throw _privateConstructorUsedError;
  @override
  double get lastJuzOffset => throw _privateConstructorUsedError;
  @override
  JuzList? get lastJuz => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsModelCopyWith<_$_SettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
