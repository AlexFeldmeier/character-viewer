import 'package:character_viewer/app_config.dart';
import 'package:character_viewer/constants/theme_constants.dart';
import 'package:character_viewer/repositories/character_repository.dart';
import 'package:character_viewer/router.dart';
import 'package:character_viewer/screens/list_screen/list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.read<AppConfig>().title),
      ),
      body: BlocProvider(
        create: (context) => ListCubit(context.read<CharacterRepository>(), context.read<AppConfig>().query),
        child: BlocBuilder<ListCubit, ListState>(
            builder: (context, state) => state.when(
                  initial: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loaded: (characters) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(ThemeConstants.padding),
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: 'Search',
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) => context.read<ListCubit>().filterCharacters(value),
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                          padding: const EdgeInsets.all(ThemeConstants.padding),
                          itemCount: characters.length,
                          separatorBuilder: (context, index) => const SizedBox(height: ThemeConstants.listTilePadding),
                          itemBuilder: (context, index) {
                            final character = characters[index];
                            return Card(
                              child: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(ThemeConstants.padding),
                                  child: Text(character.name ?? ''),
                                ),
                                onTap: () => AppRouter.goToCharacterDetails(context, character),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  error: () => const Center(
                    child: Text('Error'),
                  ),
                )),
      ),
    );
  }
}
