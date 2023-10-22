// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterRemoteModelImpl _$$CharacterRemoteModelImplFromJson(Map<String, dynamic> json) => _$CharacterRemoteModelImpl(
      icon: json['Icon'] == null ? null : IconModel.fromJson(json['Icon'] as Map<String, dynamic>),
      result: json['Result'] as String?,
      text: json['Text'] as String?,
    );

Map<String, dynamic> _$$CharacterRemoteModelImplToJson(_$CharacterRemoteModelImpl instance) => <String, dynamic>{
      'Icon': instance.icon,
      'Result': instance.result,
      'Text': instance.text,
    };
