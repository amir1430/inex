import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:inex/pages/app/app.dart';
import 'package:inex/pages/places/places.dart';
import 'package:inex/pages/transactions/transactions.dart';

final _rootKey = GlobalKey<NavigatorState>();
final _shellKey = GlobalKey<NavigatorState>();

class AppRouter {
  GoRouter router = GoRouter(
    navigatorKey: _rootKey,
    initialLocation: '/places',
    routes: [
      ShellRoute(
        navigatorKey: _shellKey,
        builder: (context, state, child) {
          return HomePage(
            key: state.pageKey,
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: '/places',
            pageBuilder: (context, state) {
              return NoTransitionPage(
                key: state.pageKey,
                child: const PlacesView(),
              );
            },
            routes: [
              GoRoute(
                path: 'place/:id/:name',
                name: 'place',
                parentNavigatorKey: _rootKey,
                builder: (context, state) {
                  final id = int.parse(state.params['id']!);
                  final name = state.params['name']!;
                  return PlaceView(
                    placeId: id,
                    name: name,
                  );
                },
                routes: [
                  GoRoute(
                    path: 'transactions/:date',
                    name: 'tessst',
                    parentNavigatorKey: _rootKey,
                    pageBuilder: (context, state) {
                      final date = state.params['date'];
                      final name = state.params['name'];
                      final id = state.params['id'];
                      return NoTransitionPage(
                        key: state.pageKey,
                        child: Builder(
                          builder: (context) {
                            return PlaceTransactionView(
                              date: date,
                              id: id,
                              name: name,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: '/transactions',
            pageBuilder: (context, state) {
              return NoTransitionPage(
                key: state.pageKey,
                child: const TransactionsView(),
              );
            },
          ),
        ],
      ),
    ],
  );
}
