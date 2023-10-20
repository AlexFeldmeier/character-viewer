import 'package:character_viewer/repositories/character_repository.dart';
import 'package:character_viewer/screens/list_screen/list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Character Viewer'),
      ),
      body: BlocProvider(
        create: (context) => ListCubit(context.read<CharacterRepository>()),
        child: BlocBuilder<ListCubit, ListState>(
            builder: (context, state) => state.when(
                  initial: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (characters) => ListView.builder(
                    itemCount: characters.length,
                    itemBuilder: (context, index) {
                      final character = characters[index];
                      return ListTile(
                        title: Text(character.name ?? ''),
                      );
                    },
                  ),
                  error: () => const Center(
                    child: Text('Error'),
                  ),
                )),
      ),
    );
  }
}
