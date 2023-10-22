// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterDomainModel _$CharacterDomainModelFromJson(Map<String, dynamic> json) {
  return _CharacterDomainModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterDomainModel {
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterDomainModelCopyWith<CharacterDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDomainModelCopyWith<$Res> {
  factory $CharacterDomainModelCopyWith(CharacterDomainModel value,
          $Res Function(CharacterDomainModel) then) =
      _$CharacterDomainModelCopyWithImpl<$Res, CharacterDomainModel>;
  @useResult
  $Res call({String? imageUrl, String? name, String? details});
}

/// @nodoc
class _$CharacterDomainModelCopyWithImpl<$Res,
        $Val extends CharacterDomainModel>
    implements $CharacterDomainModelCopyWith<$Res> {
  _$CharacterDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterDomainModelImplCopyWith<$Res>
    implements $CharacterDomainModelCopyWith<$Res> {
  factory _$$CharacterDomainModelImplCopyWith(_$CharacterDomainModelImpl value,
          $Res Function(_$CharacterDomainModelImpl) then) =
      __$$CharacterDomainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageUrl, String? name, String? details});
}

/// @nodoc
class __$$CharacterDomainModelImplCopyWithImpl<$Res>
    extends _$CharacterDomainModelCopyWithImpl<$Res, _$CharacterDomainModelImpl>
    implements _$$CharacterDomainModelImplCopyWith<$Res> {
  __$$CharacterDomainModelImplCopyWithImpl(_$CharacterDomainModelImpl _value,
      $Res Function(_$CharacterDomainModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? details = freezed,
  }) {
    return _then(_$CharacterDomainModelImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterDomainModelImpl implements _CharacterDomainModel {
  const _$CharacterDomainModelImpl({this.imageUrl, this.name, this.details});

  factory _$CharacterDomainModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterDomainModelImplFromJson(json);

  @override
  final String? imageUrl;
  @override
  final String? name;
  @override
  final String? details;

  @override
  String toString() {
    return 'CharacterDomainModel(imageUrl: $imageUrl, name: $name, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDomainModelImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, name, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDomainModelImplCopyWith<_$CharacterDomainModelImpl>
      get copyWith =>
          __$$CharacterDomainModelImplCopyWithImpl<_$CharacterDomainModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterDomainModelImplToJson(
      this,
    );
  }
}

abstract class _CharacterDomainModel implements CharacterDomainModel {
  const factory _CharacterDomainModel(
      {final String? imageUrl,
      final String? name,
      final String? details}) = _$CharacterDomainModelImpl;

  factory _CharacterDomainModel.fromJson(Map<String, dynamic> json) =
      _$CharacterDomainModelImpl.fromJson;

  @override
  String? get imageUrl;
  @override
  String? get name;
  @override
  String? get details;
  @override
  @JsonKey(ignore: true)
  _$$CharacterDomainModelImplCopyWith<_$CharacterDomainModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
