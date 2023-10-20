part of 'list_cubit.dart';

@freezed
class ListState with _$ListState {
  const factory ListState.initial() = _Initial;

  const factory ListState.loaded(List<CharacterDomainModel> characters) = _Loaded;

  const factory ListState.error() = _Error;
}
