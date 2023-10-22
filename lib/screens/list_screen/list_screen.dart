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
                  loaded: (characters) => ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: characters.length,
                    separatorBuilder: (context, index) => const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final character = characters[index];
                      return Card(
                        child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(character.name ?? ''),
                          ),
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              '/details',
                              arguments: character,
                            );
                          },
                        ),
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
