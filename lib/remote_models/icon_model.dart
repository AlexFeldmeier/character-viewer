import 'package:freezed_annotation/freezed_annotation.dart';

part 'icon_model.freezed.dart';
part 'icon_model.g.dart';

@freezed
class IconModel with _$IconModel {
  const factory IconModel({
    @JsonKey(name: 'URL') String? url,
  }) = _IconModel;

  factory IconModel.fromJson(Map<String, dynamic> json) => _$IconModelFromJson(json);
}
