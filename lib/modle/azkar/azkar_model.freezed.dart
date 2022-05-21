// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'azkar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AzkarList _$AzkarListFromJson(Map<String, dynamic> json) {
  return _AzkarList.fromJson(json);
}

/// @nodoc
mixin _$AzkarList {
  String get category => throw _privateConstructorUsedError;
  String get count => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get reference => throw _privateConstructorUsedError;
  String get zekr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AzkarListCopyWith<AzkarList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzkarListCopyWith<$Res> {
  factory $AzkarListCopyWith(AzkarList value, $Res Function(AzkarList) then) =
      _$AzkarListCopyWithImpl<$Res>;
  $Res call(
      {String category,
      String count,
      String description,
      String reference,
      String zekr});
}

/// @nodoc
class _$AzkarListCopyWithImpl<$Res> implements $AzkarListCopyWith<$Res> {
  _$AzkarListCopyWithImpl(this._value, this._then);

  final AzkarList _value;
  // ignore: unused_field
  final $Res Function(AzkarList) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? count = freezed,
    Object? description = freezed,
    Object? reference = freezed,
    Object? zekr = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      zekr: zekr == freezed
          ? _value.zekr
          : zekr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AzkarListCopyWith<$Res> implements $AzkarListCopyWith<$Res> {
  factory _$$_AzkarListCopyWith(
          _$_AzkarList value, $Res Function(_$_AzkarList) then) =
      __$$_AzkarListCopyWithImpl<$Res>;
  @override
  $Res call(
      {String category,
      String count,
      String description,
      String reference,
      String zekr});
}

/// @nodoc
class __$$_AzkarListCopyWithImpl<$Res> extends _$AzkarListCopyWithImpl<$Res>
    implements _$$_AzkarListCopyWith<$Res> {
  __$$_AzkarListCopyWithImpl(
      _$_AzkarList _value, $Res Function(_$_AzkarList) _then)
      : super(_value, (v) => _then(v as _$_AzkarList));

  @override
  _$_AzkarList get _value => super._value as _$_AzkarList;

  @override
  $Res call({
    Object? category = freezed,
    Object? count = freezed,
    Object? description = freezed,
    Object? reference = freezed,
    Object? zekr = freezed,
  }) {
    return _then(_$_AzkarList(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      zekr: zekr == freezed
          ? _value.zekr
          : zekr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AzkarList implements _AzkarList {
  const _$_AzkarList(
      {required this.category,
      required this.count,
      required this.description,
      required this.reference,
      required this.zekr});

  factory _$_AzkarList.fromJson(Map<String, dynamic> json) =>
      _$$_AzkarListFromJson(json);

  @override
  final String category;
  @override
  final String count;
  @override
  final String description;
  @override
  final String reference;
  @override
  final String zekr;

  @override
  String toString() {
    return 'AzkarList(category: $category, count: $count, description: $description, reference: $reference, zekr: $zekr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AzkarList &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.reference, reference) &&
            const DeepCollectionEquality().equals(other.zekr, zekr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(reference),
      const DeepCollectionEquality().hash(zekr));

  @JsonKey(ignore: true)
  @override
  _$$_AzkarListCopyWith<_$_AzkarList> get copyWith =>
      __$$_AzkarListCopyWithImpl<_$_AzkarList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AzkarListToJson(this);
  }
}

abstract class _AzkarList implements AzkarList {
  const factory _AzkarList(
      {required final String category,
      required final String count,
      required final String description,
      required final String reference,
      required final String zekr}) = _$_AzkarList;

  factory _AzkarList.fromJson(Map<String, dynamic> json) =
      _$_AzkarList.fromJson;

  @override
  String get category => throw _privateConstructorUsedError;
  @override
  String get count => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get reference => throw _privateConstructorUsedError;
  @override
  String get zekr => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AzkarListCopyWith<_$_AzkarList> get copyWith =>
      throw _privateConstructorUsedError;
}
