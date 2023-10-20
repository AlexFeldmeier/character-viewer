import 'package:character_viewer/remote_models/character_remote_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_model.freezed.dart';
part 'page_model.g.dart';

@freezed
class PageModel with _$PageModel {
  const factory PageModel({
    @JsonKey(name: 'RelatedTopics') List<CharacterRemoteModel>? relatedTopics,
  }) = _PageModel;

  factory PageModel.fromJson(Map<String, dynamic> json) => _$PageModelFromJson(json);
}
