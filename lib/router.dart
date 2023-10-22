import 'package:flutter/material.dart';
import 'package:character_viewer/screens/details_screen/details_screen.dart';
import 'package:character_viewer/screens/list_screen/list_screen.dart';
import 'package:go_router/go_router.dart';

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
            return MaterialPage(child: _TabletMasterDetailView());
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
              return const MaterialPage(child: DetailsScreen());
            },
          ),
        ],
      ),
    ],
  );
}

class _TabletMasterDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: ListScreen(),
        ),
        Expanded(
          child: DetailsScreen(),
        ),
      ],
    );
  }
}
