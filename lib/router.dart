import 'package:character_viewer/screens/details_screen/details_screen.dart';
import 'package:character_viewer/screens/list_screen/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'domain_models/character_domain_model.dart';

bool _isTablet(BuildContext context) {
  return MediaQuery.of(context).size.width > 600;
}

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) {
          if (_isTablet(context)) {
            return const MaterialPage(child: _TabletMasterDetailView());
          }
          return const MaterialPage(child: ListScreen());
        },
        routes: [
          GoRoute(
            path: 'character',
            pageBuilder: (context, state) {
              if (_isTablet(context)) {
                return const MaterialPage(child: Scaffold());
              }
              return MaterialPage(child: DetailsScreen(character: state.extra as CharacterDomainModel));
            },
          ),
        ],
      ),
    ],
  );
}

class _TabletMasterDetailView extends StatelessWidget {
  final CharacterDomainModel? character;

  const _TabletMasterDetailView({this.character});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: ListScreen(),
        ),
        if (character != null)
          Expanded(
            child: DetailsScreen(character: character!),
          ),
      ],
    );
  }
}
