import 'package:character_viewer/screens/details_screen/details_screen.dart';
import 'package:character_viewer/screens/list_screen/list_screen.dart';
import 'package:go_router/go_router.dart';

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
            builder: (context, state) => const DetailsScreen(),
          ),
        ],
      ),
    ],
  );
}
