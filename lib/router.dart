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
        builder: (context, state) => const ListScreen(),
        routes: [
          GoRoute(
            path: 'character',
            builder: (context, state) {
              final character = state.extra as CharacterDomainModel;
              if (_isTablet(context)) {
                return _TabletMasterDetailView(character: character);
              }
              return DetailsScreen(character: character);
            },
          ),
        ],
      ),
    ],
  );
}

class _TabletMasterDetailView extends StatelessWidget {
  final CharacterDomainModel character;

  const _TabletMasterDetailView({required this.character});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: ListScreen(),
        ),
        Expanded(
          child: DetailsScreen(character: character),
        ),
      ],
    );
  }
}
