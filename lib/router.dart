import 'dart:convert';

import 'package:character_viewer/screens/details_screen/details_screen.dart';
import 'package:character_viewer/screens/list_screen/list_screen.dart';
import 'package:character_viewer/utils/form_factor_detector.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'domain_models/character_domain_model.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) {
          if (FormFactorDetector.isTablet(context)) {
            return '/tablet';
          } else {
            return '/list';
          }
        },
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
            builder: (context, state) =>
                DetailsScreen(character: CharacterDomainModel.fromJson(jsonDecode(state.extra.toString()))),
          ),
        ],
      ),
      GoRoute(
        path: '/tablet',
        pageBuilder: (context, state) => NoTransitionPage(
          child: _TabletMasterDetailView(character: CharacterDomainModel.fromJson(jsonDecode(state.extra.toString()))),
        ),
      ),
    ],
  );

  static void goToCharacterDetails(BuildContext context, CharacterDomainModel character) {
    final extra = jsonEncode(character.toJson());
    if (FormFactorDetector.isTablet(context)) {
      context.go(
        '/tablet',
        extra: extra,
      );
    } else {
      context.go(
        '/list/character',
        extra: extra,
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
