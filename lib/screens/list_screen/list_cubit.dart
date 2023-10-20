import 'package:character_viewer/domain_models/character_domain_model.dart';
import 'package:character_viewer/repositories/character_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_cubit.freezed.dart';
part 'list_state.dart';

class ListCubit extends Cubit<ListState> {
  ListCubit(CharacterRepository characterRepository) : super(const ListState.initial()) {
    init(characterRepository);
  }

  Future<void> init(CharacterRepository characterRepository) async {
    final characters = await characterRepository.getCharacters('simpsons+characters');
    if (characters == null) {
      emit(const ListState.error());
    } else {
      emit(ListState.loaded(characters));
    }
  }
}
