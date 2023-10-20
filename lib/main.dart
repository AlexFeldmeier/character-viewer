import 'package:character_viewer/data_sources/character_data_source.dart';
import 'package:character_viewer/repositories/character_repository.dart';
import 'package:character_viewer/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => CharacterDataSource(),
        ),
        Provider(
          create: (context) => CharacterRepository(context.read<CharacterDataSource>()),
        ),
      ],
      child: MaterialApp.router(
        title: 'Character Viewer',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
