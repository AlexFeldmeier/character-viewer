// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_remote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterRemoteModel _$CharacterRemoteModelFromJson(Map<String, dynamic> json) {
  return _CharacterRemoteModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterRemoteModel {
  @JsonKey(name: 'Icon')
  IconModel? get icon => throw _privateConstructorUsedError;

  @JsonKey(name: 'Result')
  String? get result => throw _privateConstructorUsedError;

  @JsonKey(name: 'Text')
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterRemoteModelCopyWith<CharacterRemoteModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterRemoteModelCopyWith<$Res> {
  factory $CharacterRemoteModelCopyWith(CharacterRemoteModel value, $Res Function(CharacterRemoteModel) then) =
      _$CharacterRemoteModelCopyWithImpl<$Res, CharacterRemoteModel>;

  @useResult
  $Res call(
      {@JsonKey(name: 'Icon') IconModel? icon,
      @JsonKey(name: 'Result') String? result,
      @JsonKey(name: 'Text') String? text});

  $IconModelCopyWith<$Res>? get icon;
}

/// @nodoc
class _$CharacterRemoteModelCopyWithImpl<$Res, $Val extends CharacterRemoteModel>
    implements $CharacterRemoteModelCopyWith<$Res> {
  _$CharacterRemoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? result = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconModel?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IconModelCopyWith<$Res>? get icon {
    if (_value.icon == null) {
      return null;
    }

    return $IconModelCopyWith<$Res>(_value.icon!, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterRemoteModelImplCopyWith<$Res> implements $CharacterRemoteModelCopyWith<$Res> {
  factory _$$CharacterRemoteModelImplCopyWith(
          _$CharacterRemoteModelImpl value, $Res Function(_$CharacterRemoteModelImpl) then) =
      __$$CharacterRemoteModelImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Icon') IconModel? icon,
      @JsonKey(name: 'Result') String? result,
      @JsonKey(name: 'Text') String? text});

  @override
  $IconModelCopyWith<$Res>? get icon;
}

/// @nodoc
class __$$CharacterRemoteModelImplCopyWithImpl<$Res>
    extends _$CharacterRemoteModelCopyWithImpl<$Res, _$CharacterRemoteModelImpl>
    implements _$$CharacterRemoteModelImplCopyWith<$Res> {
  __$$CharacterRemoteModelImplCopyWithImpl(
      _$CharacterRemoteModelImpl _value, $Res Function(_$CharacterRemoteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? result = freezed,
    Object? text = freezed,
  }) {
    return _then(_$CharacterRemoteModelImpl(
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconModel?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterRemoteModelImpl implements _CharacterRemoteModel {
  const _$CharacterRemoteModelImpl(
      {@JsonKey(name: 'Icon') this.icon, @JsonKey(name: 'Result') this.result, @JsonKey(name: 'Text') this.text});

  factory _$CharacterRemoteModelImpl.fromJson(Map<String, dynamic> json) => _$$CharacterRemoteModelImplFromJson(json);

  @override
  @JsonKey(name: 'Icon')
  final IconModel? icon;
  @override
  @JsonKey(name: 'Result')
  final String? result;
  @override
  @JsonKey(name: 'Text')
  final String? text;

  @override
  String toString() {
    return 'CharacterRemoteModel(icon: $icon, result: $result, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterRemoteModelImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, icon, result, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterRemoteModelImplCopyWith<_$CharacterRemoteModelImpl> get copyWith =>
      __$$CharacterRemoteModelImplCopyWithImpl<_$CharacterRemoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterRemoteModelImplToJson(
      this,
    );
  }
}

abstract class _CharacterRemoteModel implements CharacterRemoteModel {
  const factory _CharacterRemoteModel(
      {@JsonKey(name: 'Icon') final IconModel? icon,
      @JsonKey(name: 'Result') final String? result,
      @JsonKey(name: 'Text') final String? text}) = _$CharacterRemoteModelImpl;

  factory _CharacterRemoteModel.fromJson(Map<String, dynamic> json) = _$CharacterRemoteModelImpl.fromJson;

  @override
  @JsonKey(name: 'Icon')
  IconModel? get icon;

  @override
  @JsonKey(name: 'Result')
  String? get result;

  @override
  @JsonKey(name: 'Text')
  String? get text;

  @override
  @JsonKey(ignore: true)
  _$$CharacterRemoteModelImplCopyWith<_$CharacterRemoteModelImpl> get copyWith => throw _privateConstructorUsedError;
}
