import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:inex/pages/app/app.dart';
import 'package:inex/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.child});

  final Widget child;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with ScaffoldHelper {
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
    return MultiBlocListener(
      listeners: [
        BlocListener<AppBloc, AppState>(
          listenWhen: (_, current) =>
              current.exportingStatus == ExportingStatus.done,
          listener: (context, state) {
            closeDrawer();
            showSnackbar(content: Text('BackUp saved to: ${state.exportPath}'));
          },
        ),
        BlocListener<AppBloc, AppState>(
          listenWhen: (previous, current) =>
              previous.importingStatus != current.importingStatus,
          listener: (context, state) {
            if (state.importingStatus == ImportingStatus.done) {
              closeDrawer();
              showSnackbar(content: Text(state.importMessage ?? ''));
            }

            if (state.importingStatus == ImportingStatus.failure) {
              closeDrawer();
              showSnackbar(
                content: Text(state.errorMessage ?? ''),
                color: Colors.red,
              );
            }
          },
        ),
      ],
      child: Scaffold(
        key: scaffoldKey,
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
                      context.read<AppBloc>().add(
                            AppEvent.changeTheme(isDark: !state.isThemeDark),
                          );
                    },
                  );
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocSelector<AppBloc, AppState, ExportingStatus>(
                    selector: (state) => state.exportingStatus,
                    builder: (context, status) {
                      return TextButton.icon(
                        onPressed: status == ExportingStatus.inProgress
                            ? null
                            : () {
                                context
                                    .read<AppBloc>()
                                    .add(const AppEvent.export());
                              },
                        icon: const Icon(Icons.file_upload_rounded),
                        label: Text(
                          status == ExportingStatus.inProgress
                              ? 'Exporting'
                              : 'Export',
                        ),
                      );
                    },
                  ),
                  BlocSelector<AppBloc, AppState, ImportingStatus>(
                    selector: (state) => state.importingStatus,
                    builder: (context, status) {
                      return TextButton.icon(
                        onPressed: status == ImportingStatus.inProgress
                            ? null
                            : () {
                                context
                                    .read<AppBloc>()
                                    .add(const AppEvent.import());
                              },
                        icon: const Icon(Icons.file_download_rounded),
                        label: Text(
                          status == ImportingStatus.inProgress
                              ? 'Importing'
                              : 'Import',
                        ),
                      );
                    },
                  ),
                ],
              )
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
      ),
    );
  }
}
