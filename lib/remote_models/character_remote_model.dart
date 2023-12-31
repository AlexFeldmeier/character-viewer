import 'package:character_viewer/remote_models/icon_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_remote_model.freezed.dart';
part 'character_remote_model.g.dart';

@freezed
class CharacterRemoteModel with _$CharacterRemoteModel {
  const factory CharacterRemoteModel({
    @JsonKey(name: 'Icon') IconModel? icon,
    @JsonKey(name: 'Result') String? result,
    @JsonKey(name: 'Text') String? text,
  }) = _CharacterRemoteModel;

  factory CharacterRemoteModel.fromJson(Map<String, dynamic> json) => _$CharacterRemoteModelFromJson(json);
}
