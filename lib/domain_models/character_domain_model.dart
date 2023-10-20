import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_domain_model.freezed.dart';
part 'character_domain_model.g.dart';

@freezed
class CharacterDomainModel with _$CharacterDomainModel {
  const factory CharacterDomainModel({
    String? imageUrl,
    String? name,
    String? details,
  }) = _CharacterDomainModel;

  factory CharacterDomainModel.fromJson(Map<String, dynamic> json) => _$CharacterDomainModelFromJson(json);
}
