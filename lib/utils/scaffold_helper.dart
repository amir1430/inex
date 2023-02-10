import 'package:flutter/material.dart';

mixin ScaffoldHelper<T extends StatefulWidget> on State<T> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer() {
    scaffoldKey.currentState?.closeDrawer();
  }

  void hideSnackbar() {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  void showSnackbar({
    required Widget content,
    Color color = Colors.grey,
  }) {
    hideSnackbar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: content,
        backgroundColor: color,
      ),
    );
  }

  Future<void> showGDialog({
    Widget? child,
    bool useRootNavigator = false,
    bool barrierDismissible = true,
    String? barrierLabel,
    Color barrierColor = Colors.black26,
    Offset begin = Offset.zero,
  }) async {
    await showGeneralDialog(
      context: context,
      barrierLabel: barrierLabel ?? 'barrier_label',
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      pageBuilder: (context, animation, secondaryAnimation) {
        const end = Offset.zero;
        const curve = Curves.ease;

        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: Dialog(
            insetPadding:
                MediaQuery.of(context).viewInsets.copyWith(right: 40, left: 40),
            child: Padding(
              padding: const EdgeInsets.only(
                right: 16,
                left: 16,
                top: 12,
                bottom: 12,
              ),
              child: child,
            ),
          ),
        );
      },
    );
  }

  Future<void> showModal({
    Widget? child,
    bool useRootNavigator = false,
  }) async {
    await showModalBottomSheet<void>(
      useRootNavigator: useRootNavigator,
      context: context,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: child,
        );
      },
    );
  }
}
