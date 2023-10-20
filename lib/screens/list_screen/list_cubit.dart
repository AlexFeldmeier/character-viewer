import 'package:character_viewer/domain_models/character_domain_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_cubit.freezed.dart';
part 'list_state.dart';

class ListCubit extends Cubit<ListState> {
  ListCubit() : super(const ListState.initial());
}
