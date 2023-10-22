import 'package:character_viewer/screens/details_screen/details_screen.dart';
import 'package:character_viewer/screens/list_screen/list_screen.dart';
import 'package:character_viewer/utils/form_factor_detector.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'domain_models/character_domain_model.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    redirect: (context, state) {
      if (state.fullPath == '/') {
        if (FormFactorDetector.isTablet(context)) {
          return '/tablet';
        } else {
          return '/list';
        }
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => const NoTransitionPage(
          child: Scaffold(),
        ),
      ),
      GoRoute(
        path: '/list',
        builder: (context, state) => const ListScreen(),
        routes: [
          GoRoute(
            path: 'character',
            builder: (context, state) => DetailsScreen(character: state.extra as CharacterDomainModel?),
          ),
        ],
      ),
      GoRoute(
        path: '/tablet',
        pageBuilder: (context, state) => NoTransitionPage(
          child: _TabletMasterDetailView(character: state.extra as CharacterDomainModel?),
        ),
      ),
    ],
  );

  static void goToCharacterDetails(BuildContext context, CharacterDomainModel character) {
    if (FormFactorDetector.isTablet(context)) {
      context.go(
        '/tablet',
        extra: character,
      );
    } else {
      context.go(
        '/list/character',
        extra: character,
      );
    }
  }
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
        Expanded(
          child: DetailsScreen(character: character),
        ),
      ],
    );
  }
}
