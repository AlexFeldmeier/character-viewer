import 'package:character_viewer/domain_models/character_domain_model.dart';
import 'package:character_viewer/repositories/character_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_cubit.freezed.dart';
part 'list_state.dart';

class ListCubit extends Cubit<ListState> {
  ListCubit(CharacterRepository characterRepository, String query) : super(const ListState.initial()) {
    init(characterRepository, query);
  }

  Future<void> init(CharacterRepository characterRepository, String query) async {
    final characters = await characterRepository.getCharacters(query);
    if (characters == null) {
      emit(const ListState.error());
    } else {
      emit(ListState.loaded(characters));
    }
  }
}
