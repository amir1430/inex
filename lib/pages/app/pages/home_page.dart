import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:inex/pages/app/app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.child});

  final Widget child;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _items = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(Icons.location_on_outlined),
      label: 'Places',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.attach_money),
      label: 'Transactions',
    )
  ];

  static int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).location;
    if (location.startsWith('/places')) {
      return 0;
    }
    if (location.startsWith('/transactions')) {
      return 1;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inex'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(height: 20),
            BlocBuilder<AppBloc, AppState>(
              builder: (context, state) {
                return SwitchListTile(
                  value: state.isThemeDark,
                  title: const Text('Change Theme'),
                  secondary: Icon(
                    state.isThemeDark ? Icons.dark_mode : Icons.light_mode,
                  ),
                  onChanged: (value) {
                    context
                        .read<AppBloc>()
                        .add(AppEvent.changeTheme(isDark: !state.isThemeDark));
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: [..._items],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (value) {
          if (value == 0) {
            GoRouter.of(context).go('/places');
          }
          if (value == 1) {
            GoRouter.of(context).go('/transactions');
          }
        },
      ),
    );
  }
}
